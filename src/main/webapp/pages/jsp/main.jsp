<!DOCTYPE html>
<html lang="en">
<head>
    <title id="Description">This demo shows the default functionality of the jqxLayout widget.
        This control allows the creation of complex layouts with panels that can be nested,
        resized, pinned, unpinned and closed.</title>
    <link rel="stylesheet" href="../../jqwidgets/styles/jqx.base.css" type="text/css" />
    <style type="text/css">
        body, html {
            width: 100%;
            height: 100%;
            overflow: hidden;
            padding: 3px;
            box-sizing: border-box;
            margin: 0;
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
                    width: '30%',
                    minWidth: '15%',
                    items: [{
                        type: 'documentGroup',
                        height: '50%',
                        minHeight: '25%',
                        items: [{
                            type: 'documentPanel',
                            title: 'Cities',
                            contentContainer: 'ContainerCities',
							initContent: function () {
								$("#D1Pan").load("cities.jsp");
							}
                        }, {
                            type: 'documentPanel',
                            title: 'Bitrate',
                            contentContainer: 'Document2Panel'
                        }]
                    }, {
                        type: 'documentGroup',
                        height: '50%',
                        pinnedHeight: '10%',
                        items: [{
                            type: 'documentPanel',
                            title: 'Error List',
                            contentContainer: 'ErrorListPanel'
                        }]
                    }]
                }, {
                    type: 'documentGroup',
                    width: '70%',
                    minWidth: '30%',
                    items: [{
                        type: 'documentPanel',
                        title: 'Solution Explorer',
                        contentContainer: 'SolutionExplorerPanel',
                        initContent: function () {
                            // initialize a jqxTree inside the Solution Explorer Panel
                        }
                    }, {
                        type: 'documentPanel',
                        title: 'Properties',
                        contentContainer: 'PropertiesPanel'
                    }]
                }]
            }];

            $('#jqxLayout').jqxLayout({ width: '98%', height: '98%', layout: layout });
        });
    </script>
</head>
<body>
    <div id="jqxLayout">
        <!--The panel content divs can have a flat structure-->
        <!--autoHideGroup-->
        <div data-container="ToolboxPanel">
            </div>
        <div data-container="HelpPanel">
            Help topics</div>
        <!--documentGroup-->
        <div data-container="ContainerCities">
			<div id="D1Pan" />
		</div>
        <div data-container="Document2Panel">
            </div>
        <!--bottom tabbedGroup-->
        <div data-container="ErrorListPanel">
            </div>
        <div data-container="OutputPanel">
           </div>
        <!--right tabbedGroup-->
        <div data-container="SolutionExplorerPanel">
            <div id="solutionExplorerTree" style="border: none;">
            </div>
        </div>
        <div data-container="PropertiesPanel">
            </div>
    </div>
</body>
</html>
