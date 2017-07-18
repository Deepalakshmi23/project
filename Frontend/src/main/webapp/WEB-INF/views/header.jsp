<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>




<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#collapse-example"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<div class="navbar-header">
			<c:url value="/resourse/6.jpg" var="image"></c:url>

			<a class="navbar-brand" href="#"><img src="${image}" alt="NIIT"
				height="30px" width="30px"></a>
		</div>
		<div class="collapse navbar-collapse" id="collapse-example">
			<ul class="nav navbar-nav">
				<c:url value="/home" var="home"></c:url>
				<li class="active"><a href="${home }">Home<span
						class="sr-only">You are in home page link</span></a></li>
				<li><a href="#">About Us</a></li>
				<c:url value="/all/product/getproductform" var="add"></c:url>
				<li><a href="${add}">Add Product</a></li>
				<c:url value="/all/product/productlist" var="view"></c:url>
				<li><a href="${view}">All product</a></li>
				</ul>
				<!-- <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">dropdown<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<li><a href="#">Edit</a></li>
			<li><a href="#">Delete</a></li>
			<li><a href="#">View</a></li>
			</ul>
			</li> -->
			
			<!-- <nav class="navbar navbar-light bg-faded">
  			<form class="form-inline">
   			<input class="form-control mr-sm-2" type="text" placeholder="Search">
   			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  			</form>
			</nav> -->

			<!-- <ul class="nav navbar-nav navbar-right">

				<li><form>
						<input class="form-control mr-sm-2" type="text" placeholder="Search">
					</form></li>
				<li><button class="btn btn-outline-success my-2 my-sm-0"
						type="submit">Search</button></li>
				<li><a href="#">Login</a></li>
				<li><button class="btn btn-default">sign out</button></li>
 -->
			<ul class ="nav navbar-nav navbar-right">
				<li><form class="input-group">
					<input type="text" class="form-control" placeholder="Search"/>
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</form></li>
			</ul>
		</div>
	</div>
	</nav>



</body>
</html>