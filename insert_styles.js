const split = require('split');
const fs = require('fs');
const path = require('path');
var input;

const cmdArgs = process.argv.slice(2);
if (cmdArgs.length < 1) throw "not enough arguments";
var styles = cmdArgs[0];
if (cmdArgs.length > 1) {
    var readStream = fs.createReadStream(cmdArgs[1]);
    input = readStream.pipe(split());
} else {
    input = process.stdin.pipe(split());
}
const output = process.stdout;

var count = 0
function insert_styles(line) {
    if (line.indexOf("..........") != -1) {
        count++
        if (count == 2) {
            const data = fs.readFileSync(styles, {encoding:'utf8', flag:'r'});
            return `${line}\r\n${data}\r\n`;
        }
        return line;
    }
    return line;
}

input.on('data', line => {
    if (cmdArgs.length > 1) {
        console.log(insert_styles(line))
    } else {
        output.write(insert_styles(line));
        output.write('\n');
    }
});

input.on('error', e => console.error(e));
