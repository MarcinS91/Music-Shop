<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1 class="alert alert-danger">Zamówienie anulowane!</h1>

					<p>Twoje zamówienie zostało anulowane. Możesz kontynuować
						zakupy</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<spring:url value="/product/productList/all" />"
					class="btn btn-default">Produkty</a>
			</p>
		</section>