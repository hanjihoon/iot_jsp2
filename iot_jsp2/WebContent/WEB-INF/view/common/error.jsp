
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">

<title>error by john niro yumang - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<style type="text/css">
body {
	background-image: url("../images/.jpg");
	background-color: white;
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	line-height: 5px;
}

.display-1 {
	text-align: center;
	color: #e1b7b7;
}

.display-1 .fa {
	animation: fa-spin 5s infinite linear;
}

.display-3 {
	text-align: center;
	color: #df726a;
}

.lower-case {
	text-align: center;
}
</style>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.alert = function() {
	};
	var defaultCSS = document.getElementById('bootstrap-css');
	function changeCSS(css) {
		if (css)
			$('head > link')
					.filter(':first')
					.replaceWith(
							'<link rel="stylesheet" href="'+ css +'" type="text/css" />');
		else
			$('head > link').filter(':first').replaceWith(defaultCSS);
	}
	$(document).ready(function() {
		var iframe_height = parseInt($('html').height());
		window.parent.postMessage(iframe_height, 'https://bootsnipp.com');
	});
</script>
</head>
<body>
	<!---************* arrangement by john niro yumang b4.0 alpha project graduation ******************* -->

	<!DOCTYPE html>
<html lang="en">

<title>index</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!------------start head  scripts and link src------------>
<head>


<script src="js/jq.js"></script>
<!---- for moving objects make this first always after boootstrap.css ----->

<link rel="stylesheet" href="css/bootstrap.css">
<!---- Bootstrap.min link local project skeleton ----->

<link rel="stylesheet" href="css/w3.css">
<!--- This is the local w3css extended --->

<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/style.css">
<!---- my own link local for customizing ----->

<script src="js/bootstrap.min.js"></script>
<!---- Bootstrap js link local for well and modal + panels ----->

<link rel="icon" href="images/a.png" type="images/water.png" />
<!---- Icon link local ----->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<!-------    font awesome online plug --------------->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<!-------------end head scripts and link src ------------->







<!------------start content ------------>
<body>
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 404}">
		<div class="wrapper">
			<div class="container-fluid" id="top-container-fluid-nav">
				<div class="container">
					<!---- for nav container ----->
				</div>
			</div>


			<div class="container-fluid" id="body-container-fluid">
				<div class="container">
					<!---- for body container ---->



					<div class="jumbotron">
						<h1 class="display-1">
							4<i class="fa  fa-spin fa-cog fa-3x"></i> 4
						</h1>
						<h1 class="display-3">ERROR</h1>
						<p class="lower-case">Aw !! webpage not found please try to
							refresh</p>
						<p class="lower-case">Maybe the page is under maintenance</p>

					</div>

					<!-------mother container middle class------------------->


				</div>
			</div>



			<div class="container-fluid" id="footer-container-fluid">
				<div class="container">
					<!---- for footer container ---->
				</div>
			</div>



		</div>
	</c:if>
</body>

<body>
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 500}">
		<div class="wrapper">
			<div class="container-fluid" id="top-container-fluid-nav">
				<div class="container">
					<!---- for nav container ----->
				</div>
			</div>


			<div class="container-fluid" id="body-container-fluid">
				<div class="container">
					<!---- for body container ---->



					<div class="jumbotron">
						<h1 class="display-1">
							5<i class="fa  fa-spin fa-cog fa-3x"></i> 5
						</h1>
						<h1 class="display-3">ERROR</h1>
						<p class="lower-case">Aw !! webpage not found please try to
							refresh</p>
						<p class="lower-case">Maybe the page is under maintenance</p>

					</div>

					<!-------mother container middle class------------------->


				</div>
			</div>



			<div class="container-fluid" id="footer-container-fluid">
				<div class="container">
					<!---- for footer container ---->
				</div>
			</div>



		</div>
	</c:if>
</body>


<script type="text/javascript">
	
</script>
</body>
</html>