<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>

<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Zarządzanie użytkownikami</h1>


		</div>

		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Imię i Nazwisko</th>
					<th>Email</th>
					<th>Telefon</th>
					<th>Nazwa użytkownika</th>
					<th>Dostępny</th>
				</tr>
			</thead>
			<c:forEach items="${customerList}" var="customer">
				<tr>
					<td>${customer.customerName}</td>
					<td>${customer.customerEmail}</td>
					<td>${customer.customerPhone}</td>
					<td>${customer.username}</td>
					<td>${customer.enabled}</td>
					<td><a
						href="<spring:url value="/admin/customer/deleteCustomer/${customer.customerId}" />"><span
							class="glyphicon glyphicon-remove"></span></a> 
					<td><a 
							href="<spring:url value="/admin/customer/editCustomer/${customer.customerId}" />"><span
						class="glyphicon glyphicon-pencil"></span></a>
						</td>
				</tr>
			</c:forEach>
		</table>