<link rel="stylesheet" type="text/css" href={"javascript/yui/examples/treeview/css/screen.css"|ezdesign}>
<link rel="stylesheet" type="text/css" href={"javascript/yui/examples/treeview/css/check/tree.css"|ezdesign}>

<script type="text/javascript" src={"javascript/yui/build/yahoo/yahoo.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/yui/build/event/event.js"|ezdesign}></script>
<script type="text/javascript" src={"javascript/yui/build/treeview/treeview.js"|ezdesign} ></script>
<script type="text/javascript" src={"javascript/yui/examples/treeview/js/TaskNode.js"|ezdesign}></script>

<div id="container">
	<div id="main">
		<div id="content">
			<form name="mainForm" action="javscript:;">
				<div id="expandcontractdiv">
					<a href="javascript:tree.expandAll()">Expand all</a>
					<a href="javascript:tree.collapseAll()">Collapse all</a>
					<a href="javascript:checkAll()">Check all</a>
					<a href="javascript:uncheckAll()">Uncheck all</a>
				</div>
				<div id="treeDiv1"></div>
			</form>
		</div>
	</div>
</div>

{literal}
	<script type="text/javascript">
	window.onload=treeInit();

		var tree;
		var nodes = [];
		var nodeIndex;

	function treeInit() {
		tree = new YAHOO.widget.TreeView("treeDiv1");
		var root = tree.getRoot();
{/literal}
{let this_node=fetch( 'content', 'node', hash( 'node_id', $node_id) )}
{$this_node|coolattribute(show,$level_deep)}
{/let}
{literal}
	tree.draw();
	}
	function buildRandomTextNodeTree() {
		tree = new YAHOO.widget.TreeView("treeDiv1");

		for (var i = 0; i < Math.floor((Math.random()*4) + 3); i++) {
			var tmpNode = new YAHOO.widget.TaskNode("task-" + i, tree.getRoot(), false);
            //tmpNode.onCheckClick = onCheckClick;
			buildRandomTextBranch(tmpNode);
		}
        
        tree.subscribe("checkClick", onCheckClick);
        // tree.subscribe("labelClick", onLabelClick);
		tree.draw();
	}

	var callback = null;

	function buildRandomTextBranch(node) {
		if (node.depth < 5) {
			YAHOO.log("buildRandomTextBranch: " + node.index);
			for ( var i = 0; i < Math.floor(Math.random() * 4) ; i++ ) {
				var tmpNode = new YAHOO.widget.TaskNode(node.label + "-" + i, node, false);
                // tmpNode.onCheckClick = onCheckClick;
				buildRandomTextBranch(tmpNode);
			}
		} else {
		    // tmpNode = new YAHOO.widget.TaskNode(node.label + "-" + i, node, false, true);
        }
	}


    function onCheckClick(node) {
        YAHOO.log(node.label + " check was clicked, new state: " + 
                node.checkState);
    }


    function checkAll() {
        var topNodes = tree.getRoot().children;
        for(var i=0; i<topNodes.length; ++i) {
            topNodes[i].check();
        }
    }

    function uncheckAll() {
        var topNodes = tree.getRoot().children;
        for(var i=0; i<topNodes.length; ++i) {
            topNodes[i].uncheck();
        }
    }

	function onLabelClick(node) {
       new YAHOO.widget.TaskNode("new", node, false);
       node.refresh();
       return false;
	}
</script>{/literal}

