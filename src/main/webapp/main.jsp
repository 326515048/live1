<!DOCTYPE html>
<html>
<head>
<title>Layout Example</title>
<script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.layout-latest.js"></script>
<script type="text/javascript">

	$(document).ready(function () {
		// PAGE LAYOUT
		var myLayout = $("body").layout({
			applyDefaultStyles: true,
			west__size: 350
		});

		$("#westContent").load("/pages/jsp/cities.jsp");
		$("#btn1").click(function(){
			$("#mainContent").load("/pages/jsp/cities.jsp");
	})
});
</script>
</head>
<body>
<div class="ui-layout-center" id="mainContent">Center
	<p><a href="http://layout.jquery-dev.com/demos.html">Go to the Demos page</a></p>
	<p>* Pane-resizing is disabled because ui.draggable.js is not linked</p>
	<p>* Pane-animation is disabled because ui.effects.js is not linked</p>
</div>
<div class="ui-layout-north">North</div>
<div class="ui-layout-south">South</div>
<div class="ui-layout-west" id="westContent" style="width: 500px"></div>
</body>
</html>