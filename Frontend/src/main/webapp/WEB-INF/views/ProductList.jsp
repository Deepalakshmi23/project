<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

	<b>List of Product</b>
	<div class="Container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>productName</th>
					<th>price</th>
					<th>category</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pro1}" var="p">
					<tr>
						<c:url value="/all/product/viewproduct/${p.id}" var="viewUrl"></c:url>



						<td><a href="${viewUrl }">${p.productName }</a></td>
					   <td>${p.price }</td><td>${p.category.id }</td> 
						<td><a href="${viewUrl}"><span
								class="glyphicon glyphicon-info-sign"></span></a> <c:url
								value="/admin/product/deleteproduct/${p.id}" var="deleteUrl"></c:url>
							<a href="${deleteUrl}"><span
								class="glyphicon glyphicon-trash"></span></a> <c:url
								value="/admin/product/geteditform/${p.id}" var="editUrl"></c:url>
							<a href="${editUrl}"><span class="glyphicon glyphicon-pencil"></span></a>
						</td>


					</tr>
				</c:forEach>
			</tbody>


		</table>




	</div>






</body>
</html>