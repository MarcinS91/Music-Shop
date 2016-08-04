<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Produkty</h1>

			<p class="lead">Sprawdż produkty oferowane przez nasz sklep!</p>
		
	
</div>
<table class="table table-striped table-hover">
	<thead>
		<tr class="bg-success">
			<th>Zdjęcie okładki</th>
			<th>Nazwa wykonawcy</th>
			<th>Nazwa albumu</th>
			<th>Kategoria</th>
			<th>Cena</th>
			<th></th>
		</tr>
	</thead>
	<c:forEach items="${products}" var="product">
		<tr>
			<td><img
				src="<c:url value="/resources/images/${product.productId}.png" />"
				alt="image" style="width: 100%" /></td>
			<td>${product.productName}</td>
			<td>${product.title}</td>
			<td>${product.productCategory}</td>
			<td>${product.productPrice} PLN</td>
			<td><a
				href="<spring:url value="/product/viewProduct/${product.productId}" />"><span
					class="glyphicon glyphicon-info-sign"></span></a></td>
		</tr>
	</c:forEach>
</table>

