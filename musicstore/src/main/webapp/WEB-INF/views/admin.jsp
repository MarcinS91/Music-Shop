
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Administrator</h1>

			<p class="lead">Panel administracyjny</p>
		</div>
	

<c:if test="${pageContext.request.userPrincipal.name != null}">
	<h2>
		 ${pageContext.request.userPrincipal.name} | <a
			href="<c:url value="/j_spring_security_logout"/>">Wyloguj</a>
	</h2>

</c:if>

<h3>
	<a href="<c:url value="/admin/productInventory" /> ">Zarządzanie produktami</a>
</h3>



<br />
<br />

<h3>
	<a href="<c:url value="/admin/customer" /> ">Zarządzanie użytkownikami</a>
</h3>

