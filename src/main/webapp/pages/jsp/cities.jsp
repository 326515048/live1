<%--
  Created by IntelliJ IDEA.
  User: weiwchen
  Date: 16/4/10
  Time: 下午5:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title id='Description'>This example shows how to create a Grid from JSON data.</title>
    <link rel="stylesheet" href="../../jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxgrid.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxgrid.selection.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxgrid.columnsresize.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="../../scripts/demos.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var url = "/Cities/list";

            // prepare the data
            var source =
            {
                datatype: "json",
                datafields: [
                    { name: 'id', type: 'string' },
                    { name: 'cityName', type: 'string' },
                    { name: 'b2type', type: 'int' }
                ],
                id: 'id',
                url: url
            };
            var dataAdapter = new $.jqx.dataAdapter(source);

            $("#jqxgrid").jqxGrid(
                    {
                        width: 300,
                        height: 300,
                        source: dataAdapter,
                        columnsresize: true,
                        showtoolbar: true,
                        rendertoolbar: function (toolbar) {
                            //var me = this;
                            var container = $("<div style='margin: 5px;'></div>");
                            toolbar.append(container);
                            container.append('<input id="newButton" type="button" value="New" />');
                            container.append('<input style="margin-left: 5px;" id="delButton" type="button" value="Delete" />');
                            $("#newButton").jqxButton();
                            $("#delButton").jqxButton();
                        },
                        columns: [
                            { text: 'ID', datafield: 'id', width: 150, hidden: true},
                            { text: '城市', datafield: 'cityName', width: 150 },
                            { text: 'B2B_B2C', datafield: 'b2type', width: 100 },
                            { text: 'Edit', datafield: 'Edit', columntype: 'button', cellsrenderer: function () {
                                return "Edit";
                            }, buttonclick: function (row) {

                            }
                            }
                        ]
                    });
        });
    </script>
</head>
<body class='default'>
<div id='jqxWidget' style="font-size: 13px; font-family: Verdana; float: left;">
    <div id="jqxgrid"></div>
</div>
</body>
</html>
