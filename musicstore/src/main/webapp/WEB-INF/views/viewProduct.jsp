<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Szczegóły produkty:</h1>


			<p class="lead">Informacje o produkcie:</p>
		</div>

		<div class="container" ng-app="cartApp">
			<div class="row">
				<div class="col-md-5">
					<img
						src="<c:url value="/resources/images/${product.productId}.png" />"
						alt="image" style="width: 100%" />
				</div>
				<div class="col-md-5">
					<h3>${product.title}</h3>
					<p>
						<strong>Nazwa wykonawcy</strong>: ${product.productName}
					</p>
					<p>
						<strong>Rok wydania</strong>: ${product.year}
					</p>
					<p>
						<strong>Kategoria</strong>: ${product.productCategory}
					</p>
					<p>
						<strong>Nośnik</strong>: ${product.dataCarrier}
					</p>
					<p>${product.productDescription}</p>



					<p>${product.productPrice}PLN</p>

					<br />

					<c:set var="role" scope="page" value="${param.role}" />
					<c:set var="url" scope="page" value="/product/productList" />
					<c:if test="${role='admin'}">
						<c:set var="url" scope="page" value="/admin/productInventory" />
					</c:if>

					<p ng-controller="cartCtrl">
						<a href="<c:url value = "${url}" />" class="btn btn-default">Powrót</a>
						<a href="#" class="btn btn-warning btn-large"
							ng-click="addToCart('${product.productId}')"><span
							class="glyphicon glyphicon-shopping-cart"></span> Dodaj do
							koszyka</a> <a href="<spring:url value="/customer/cart" />"
							class="btn btn-default"><span
							class="glyphicon glyphicon-hand-right"></span>Sprawdź koszyk</a>
					</p>

				</div>
			</div>
		</div>


		<!-- My -->
		<script src="<c:url value="/resources/js/controller.js" /> "></script>