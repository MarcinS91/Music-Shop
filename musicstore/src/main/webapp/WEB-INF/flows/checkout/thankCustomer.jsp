<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Dziękujemy za zamówienie!</h1>

					<p>Zamówienie zostanie wysłane w ciągu 24h!</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<spring:url value="/" />" class="btn btn-default"> OK</a>
			</p>
		</section>