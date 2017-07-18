<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Home page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>


	<div class="container-fluid">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>

			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide home-image" src="resource/9.jpg"
						style="width: 1500px; height: 300px" alt="first slide">
					<div class="container">
						<div class="carousel-caption">
							<h1 font color="red">WELCOME TO THE Electronics STORE</h1>
							<p font color="purple">Here You Can Browse And Buy Scooty and
								bike.Order Now For Your Amazing New Arrivals</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide home-image" src="resource/3.jpg"
						style="width: 1500px; height: 300px" alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>The Bike Store.</h1>
							<p>online shopping can make your life more easier</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide home-image " src="resource/4.jpg"
						style="width: 1500px; height: 300px" alt="Third slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>The Car You Love</h1>
							<p>live Freely,Work Happily And Drive Safely!!</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="forth-slide home-image " src="resource/1.jpg"
						style="width: 1500px; height: 300px" alt="forth slide">
					<div class="container">
						<div class="carousel-caption">
							<h1 align="center">Any bike can be a "cool" bike</h1>
							<p align="center">your life,your bike...you own it!!</p>
						</div>
					</div>
				</div>
			
			<div class="item">
				<img class="five-slide home-image " src="resource/5.jpg"
					style="width: 1500px; height: 300px" alt="forth slide">
				<div class="container">
					<div class="carousel-caption">
						<h1 align="center">Any bike can be a "cool" bike</h1>
						<p align="center">your life,your bike...you own it!!</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->

	</div>

</body>
</html>