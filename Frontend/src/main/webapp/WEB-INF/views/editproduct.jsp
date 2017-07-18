<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form"prefix="form"%>
	<%@ include file="header.jsp" %>
<html>
<head>
<!-- <style>
background-color: lightblue;
 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<div class="container">
	<c:url value="/admin/product/editproduct"  var="edit"></c:url>
						
		<form:form action="${edit}" modelAttribute="Product">
			<form:hidden path="id" />

				
				<div class="form-group">
					<label for="Product Name">Product Name</label> 
					<form:input path="productName" class="form-control" placeholder="Enter Product Name"/>
				</div>
				<div class="form-group">
					<label for="Product price">Product price</label> 
					<form:input path="price" class="form-control" placeholder="Enter Product price"/>
				</div>
				<div class="form-group">
					<label for="Product quantity">Product quantity</label> 
					<form:input path="quantity" class="form-control" placeholder="Enter Product quantity"/>
				</div>
				<div class="form-group">
					<label for="Product Name">Product Description</label> 
					<form:input path="description" class="form-control" placeholder="Enter Product Description"/>
				</div>
				
<div class="form-group">
				SELECT CATEGORY
				<c:forEach items="${category }" var="c">
					
					<form:radiobutton  path="category.id"  value="${c.id}" />${c.categoryname}
					</c:forEach>
				</div>
				
				<input type="submit" value="Add Product">
				</form:form>
				
	</div>
	




</body>
</html>