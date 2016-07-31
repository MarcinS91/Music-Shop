<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Dodaj produkt</h1>


			<p class="lead">Uzupełnij informacje o produkcie:</p>


		</div>
		<form:form
			action="${pageContext.request.contextPath}/admin/product/addProduct"
			method="post" commandName="product" enctype="multipart/form-data">
			<div class="form-group">
				<label for="name">Nazwa wykonawcy</label>
				<form:errors path="productName" cssStyle="color:#ff0000;" />
				<form:input path="productName" id="name" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="name">Nazwa albumu</label>
				<form:errors path="title" cssStyle="color:#ff0000;" />
				<form:input path="title" id="Title" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="name">Rok wydania</label>
				<form:input path="year" id="Year" class="form-Control" />
			</div>
			<div class="form-group">
				<label for="category">Kategoria</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Pop" />Pop</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Rock" />Rock</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Disco" />Disco</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Rap" />Rap</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Jazz-Blues" />Jazz-Blues</label>
				<label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Filmowa" />Filmowa</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Ciężkie brzemienia" />Ciężkie
					brzemienia</label>
			</div>

			<div class="form-group">
				<label for="description">Opis</label>
				<form:textarea path="productDescription" id="description"
					class="form-Control" />
			</div>
			<div class="form-group">
				<label for="category">Nośnik</label> <label
					class="checkbox-inline"><form:radiobutton
						path="dataCarrier" id="carrier" value="Płyta CD" />Płyta CD</label> <label
					class="checkbox-inline"><form:radiobutton
						path="dataCarrier" id="carrier" value="Winyl" />Winyl</label>
			</div>
			<div class="form-group">
				<label for="price">Cena</label>
				<form:errors path="productPrice" cssStyle="color:#ff0000;" />
				<form:input path="productPrice" id="price" class="form-Control" />
			</div>



			<div class="form-group">
				<label for="status">Status</label> <label class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="Dostępny" />Dostępny</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="Niedostępny" />Niedostępny</label>
			</div>

			<div class="form-group">
				<label for="unitInStock">Dostępna ilość</label>
				<form:errors path="unitInStock" cssStyle="color:#ff0000;" />
				<form:input path="unitInStock" id="unitInStock" class="form-Control" />
			</div>



			<div class="form-group">
				<label class="control-label" for="productImage">Zdjęcie</label>
				<form:input id="productImage" path="productImage" type="file"
					class="form:input-large" />
			</div>

			<br />
			<br />

			<input type="submit" value="Zatwierdź" class=" btn-default">
			<a href="<c:url value="/admin/productInventory" />"
				class=" btn-default">Anuluj</a>
			<footer class="footer">
				<p>&copy; Winyl 2016.</p>
			</footer>
		</form:form>