<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>

<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Koszyk</h1>
					<p>Zakupy znajdujące się w twoim koszyku:</p>
				</div>
			
	

	</section>

	<section class="container" ng-app="cartApp">

		<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">

			<div>
				<a class="btn btn-danger pull-left" ng-click="clearCart()"><span
					class="glyphicon glyphicon-remove-sign"></span> Opróżnij koszyk</a> <a
					href="<spring:url value="/order/${cartId}" />"
					class="btn btn-success pull-right"><span
					class="glyphicon glyphicon-shopping-cart"></span> Realizacja zamówienia</a>
			</div>

			<br /> <br /> <br />

			<table class="table table-hover">
				<tr>
					<th>Wykonawca</th>
					<th>Cena za sztukę</th>
					<th>Album</th>
					<th>Ilość</th>
					<th>Cena</th>
				</tr>
				<tr ng-repeat="item in cart.cartItems">
					<td>{{item.product.productName}}</td>
					<td>{{item.product.productPrice}}</td>
					<td>{{item.product.title}}</td>
					<td>{{item.quantity}}</td>
					<td>{{item.totalPrice}}</td>
					<td><a href="#" class="label label-danger"
						ng-click="removeFromCart(item.product.productId)"><span
							class="glyphicon glyphicon-remove"></span>Usuń</a></td>
				</tr>
				<tr>
					<th></th>
					<th></th>
					<th>Łączna cena</th>
					<th>{{calGrandTotal()}}</th>
					<th></th>
				</tr>
			</table>

			<a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Kontynuuj zakupy</a>
		</div>
	</section>


	<script src="<c:url value="/resources/js/controller.js" /> "></script>