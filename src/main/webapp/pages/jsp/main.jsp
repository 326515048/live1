<!DOCTYPE html>
<html lang="en">
<head>
    <title id="Description">This demo shows the default functionality of the jqxLayout widget.
        This control allows the creation of complex layouts with panels that can be nested,
        resized, pinned, unpinned and closed.</title>
    <link rel="stylesheet" href="../../jqwidgets/styles/jqx.base.css" type="text/css" />
    <style type="text/css">
        .jqx-layout-group-auto-hide-content-vertical
        {
            width: 200px;
        }
    </style>
    <script type="text/javascript" src="../../scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxribbon.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxlayout.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxtree.js"></script>
    <script type="text/javascript" src="../../scripts/demos.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // the 'layout' JSON array defines the internal structure of the layout
            var layout = [{
                type: 'layoutGroup',
                orientation: 'horizontal',
                items: [{
                    type: 'layoutGroup',
                    orientation: 'vertical',
                    width: 500,
                    items: [{
                        type: 'documentGroup',
                        height: 400,
                        minHeight: 200,
                        items: [{
                            type: 'documentPanel',
                            title: 'Document 1',
                            contentContainer: 'Document1Panel',
							initContent: function () {
								$("#D1Pan").load("cities.jsp");
							}
                        }, {
                            type: 'documentPanel',
                            title: 'Document 2',
                            contentContainer: 'Document2Panel'
                        }]
                    }, {
                        type: 'tabbedGroup',
                        height: 200,
                        pinnedHeight: 30,
                        items: [{
                            type: 'layoutPanel',
                            title: 'Error List',
                            contentContainer: 'ErrorListPanel'
                        }, {
                            type: 'layoutPanel',
                            title: 'Output',
                            contentContainer: 'OutputPanel',
                            selected: true
                        }]
                    }]
                }, {
                    type: 'tabbedGroup',
                    width: 300,
                    minWidth: 200,
                    items: [{
                        type: 'layoutPanel',
                        title: 'Solution Explorer',
                        contentContainer: 'SolutionExplorerPanel',
                        initContent: function () {
                            // initialize a jqxTree inside the Solution Explorer Panel
                        }
                    }, {
                        type: 'layoutPanel',
                        title: 'Properties',
                        contentContainer: 'PropertiesPanel'
                    }]
                }]
            }];

            $('#jqxLayout').jqxLayout({ width: 800, height: 600, layout: layout });
        });
    </script>
</head>
<body>
    <div id="jqxLayout">
        <!--The panel content divs can have a flat structure-->
        <!--autoHideGroup-->
        <div data-container="ToolboxPanel">
            List of tools</div>
        <div data-container="HelpPanel">
            Help topics</div>
        <!--documentGroup-->
        <div data-container="Document1Panel">
			<div id="D1Pan" />
		</div>
        <div data-container="Document2Panel">
            Document 2 content</div>
        <!--bottom tabbedGroup-->
        <div data-container="ErrorListPanel">
            List of errors</div>
        <div data-container="OutputPanel">
            Output</div>
        <!--right tabbedGroup-->
        <div data-container="SolutionExplorerPanel">
            <div id="solutionExplorerTree" style="border: none;">
            </div>
        </div>
        <div data-container="PropertiesPanel">
            List of properties</div>
    </div>
</body>
</html>
