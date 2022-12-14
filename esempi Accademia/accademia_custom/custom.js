window.addEventListener("load", function() {
	var topnav = document.querySelector('.index_cnt .topnav');
	if (!topnav) return;
	
	// Aggiunge l'icona per espandere/chiudere
	var icon = document.createElement('a');
	icon.id = 'expand_collapse_all';
	
	var setIcon = function(expand) {
		if (expand) {
			icon.className = 'expand';
			icon.title = "Espande tutte le voci dell'indice";
		} else {
			icon.className = 'collapse';
			icon.title = "Chiude tutte le voci dell'indice";
		}
	};
	
	icon.onclick = function() {
		var expand = icon.className === 'expand';
		setIcon(!expand);
		if (expand) {
			tree.expandTree();
		} else {
			tree.collapseTree();
		}
	};
	
	setIcon(true);
	topnav.appendChild(icon);
	
	// Traccia la visibilità della tree-view
	var treeDiv = document.getElementById('div_tree');
	var observer = new MutationObserver(function(mutations) {
		var treeDiv = document.getElementById('div_tree');
		var visible = (treeDiv.style.display !== 'none');
		var icon = document.getElementById('expand_collapse_all');
		icon.style.display = visible ? '' : 'none';   
	});
	observer.observe(treeDiv, {attributes: true, attributeFilter: ['style']});
});
