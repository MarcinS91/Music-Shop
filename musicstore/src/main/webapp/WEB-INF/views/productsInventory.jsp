<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Zarządzanie produktami</h1>

		</div>
	


<table class="table table-striped table-hover">
	<thead>
		<tr class="bg-success">
			<th>Zdjęcie</th>
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
			<td>${product.productCategory}</td>
			<td>${product.productPrice} PLN</td>
			<td><a
				href="<spring:url value="/product/viewProduct/${product.productId}" />"><span
					class="glyphicon glyphicon-info-sign"></span></a> <a
				href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span
					class="glyphicon glyphicon-remove"></span></a> <a
				href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span
					class="glyphicon glyphicon-pencil"></span></a></td>
		</tr>
	</c:forEach>
</table>

<a href="<spring:url value="/admin//product/addProduct" />"
	class="btn btn-primary">Dodaj produkt:</a>

