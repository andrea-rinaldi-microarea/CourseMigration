const split = require('split');
const sizeOf = require('image-size')
const fs = require('fs');
const path = require('path');
var input;

const cmdArgs = process.argv.slice(2);
if (cmdArgs.length < 1) throw "not enough arguments";
var sourcePath = cmdArgs[0];
if (cmdArgs.length > 1) {
    var readStream = fs.createReadStream(path.join(sourcePath, cmdArgs[1]));
    input = readStream.pipe(split());
} else {
    input = process.stdin.pipe(split());
}
const output = process.stdout;

function convert_image(line) {
    var match = ' ';
    var start = line.substr(4).search(/\S/);
    if (start == -1) {
        return line; // just IMG with no params, should be an error
    } else {
        start += 4; // index returned by search is relative to the substr ;)
    }
    if (line[start] == '"') {
        match = '"';
        start = 5; // skip the quote
    } else {
        start = 4; // no quote, 1 step back
    }
    
    var stop = line.indexOf(match, start + 1);
    if (stop == -1) {
        stop = line.length - 1;
    }

    var filename = line.substr(start + 1, stop - start - 1);

    var size = "";
    if (fs.existsSync(path.join(sourcePath,filename))) {
        var dimensions = sizeOf(path.join(sourcePath,filename));
        size =`${dimensions.width}x${dimensions.height}`;
    }

    var caption = "";
    if (line[stop + 1] != ']') {
        caption = line.substr(stop + 1,line.length - stop - 2).trim();
    }
    if (caption.trim().length == 0) {
        return `[IMG "${formatFilename(filename)}" ${size}]`;
    } else {
        return `[IMG "${formatFilename(filename)}" ${size}]\n[LABEL ${caption}]`;
    }
}

function formatFilename(fileName) {
    const parts = fileName.split('.');
    if (parts.length > 1) {
      const ext = parts.pop();
      return parts.join('.').replace("'", '_') + '.' + ext;
    } else {
      return parts.join('.').replace("'", '_') + '.' + ext;
    }
  }

function convert_spot(line) {
    var coords = line.substr(0,line.length - 1).slice("[IMGSPOT ".length).split(/[-x ]/);
    if (coords.length != 5) {
        return line;
    }
    var spot = { 
        x : parseInt(coords[0]), 
        y : parseInt(coords[1]), 
        height : parseInt(coords[2]), 
        width : parseInt(coords[3]),
        name : coords[4].replace(/"/g,'')
    }

    return `[IMGSPOT ${spot.x}x${spot.y}-${spot.width}x${spot.height} ${spot.name}]`;
}

function convert_quiz(line) {
    var start = line.indexOf("]");
    if (start == -1)
        return line;
    var caption = line.substr(start + 1).trim();
    if (caption[caption.length - 1] == '.') caption = caption.slice(0, -1);
    return `[QUIZ ${caption}]`
}

function convert(line) {
    if (line.indexOf("[IMG ") != -1) {
        var img_begin = line.indexOf("[IMG ");
        var img_end = line.indexOf("]", img_begin + 1);
        return  line.substr(0, img_begin) +
                convert_image(line.substr(img_begin, img_end - img_begin + 1)) +
                line.substr(img_end + 1);
    }
    if (line.indexOf("[IMGSPOT ") != -1) {
        var spot_begin = line.indexOf("[IMGSPOT ");
        var spot_end = line.indexOf("]", spot_begin + 1);
        return  line.substr(0, spot_begin) +
                convert_spot(line.substr(spot_begin, spot_end - spot_begin + 1)) +
                line.substr(spot_end + 1);
    }
    if (line.indexOf("[QUIZ") != -1) {
        return convert_quiz(line);
    }
    return line;
}

function fix_italic(line) {
    return line.replace(/\_\/ /g,'_/').replace(/ \/\_/g,'/_');
}

function fix_bold(line) {
    var parts = line.split("**");
    if (parts.length < 3 || parts.length % 2 == 0) return line;
    var result = '';
    for (i = 0; i < parts.length; i++) {
        if (i % 2 == 0) {
            result += parts[i];
        } else {
            var endSpace = parts[i].endsWith(' ') ? ' ' : '';
            result += "**" + parts[i].trim() + "**" + endSpace;
        }
    }
    return result;
}

input.on('data', line => {
    if (cmdArgs.length > 1) {
        console.log(convert(fix_italic(fix_bold(line))))
    } else {
        output.write(convert(fix_italic(fix_bold(line))));
        output.write('\n');
    }
});

input.on('error', e => console.error(e));