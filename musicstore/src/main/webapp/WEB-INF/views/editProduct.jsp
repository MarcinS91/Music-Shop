<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Edycja</h1>



		</div>

		<form:form
			action="${pageContext.request.contextPath}/admin/product/editProduct"
			method="post" commandName="product" enctype="multipart/form-data">

			<form:hidden path="productId" value="${product.productId}" />

			<div class="form-group">
				<label for="name">Nazwa wykonawcy</label>
				<form:errors path="productName" cssStyle="color:#ff0000;" />
				<form:input path="productName" id="name" class="form-Control"
					value="${product.productName}" />
			</div>
			<div class="form-group">
				<label for="name">Nazwa albumu</label>
				<form:errors path="title" cssStyle="color:#ff0000;" />
				<form:input path="title" id="Title" class="form-Control"
					value="${product.title}" />
			</div>
			<div class="form-group">
				<label for="name">Rok wydania</label>
				<form:errors path="year" cssStyle="color:#ff0000;" />
				<form:input path="year" id="Year" class="form-Control"
					value="${product.year}" />
			</div>

			<div class="form-group">
				<label for="category">Kategoria</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Rock" />Rock</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Pop" />Pop</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Disco" />Disco</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Rap" />Rap</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Jazz-Blues" />Jazz-Blues</label>
				<label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Filmowa" />Filmowa</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="Ciężkie Brzmienie" />Ciężkie
					Brzmienie</label>
			</div>

			<div class="form-group">
				<label for="description">Opis</label>
				<form:textarea path="productDescription" id="description"
					class="form-Control" value="${product.productDescription}" />
			</div>
			<div class="form-group">
				<label for="status">Nośnik</label> <label class="checkbox-inline"><form:radiobutton
						path="dataCarrier" id="carrier" value="Płyta CD" />Płyta CD</label> <label
					class="checkbox-inline"><form:radiobutton
						path="dataCarrier" id="carrier" value="Winyl" />Winyl</label>
			</div>
			<div class="form-group">
				<label for="price">Cena</label>
				<form:errors path="productPrice" cssStyle="color:#ff0000;" />
				<form:input path="productPrice" id="price" class="form-Control"
					value="${product.productPrice}" />
			</div>



			<div class="form-group">
				<label for="status">Status</label> <label class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="active" />Dostępna</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="inactive" />Niedostępna</label>
			</div>

			<div class="form-group">
				<label for="unitInStock">Dostępna ilość sztuk</label>
				<form:errors path="unitInStock" cssStyle="color:#ff0000;" />
				<form:input path="unitInStock" id="unitInStock" class="form-Control"
					value="${product.unitInStock}" />
			</div>



			<div class="form-group">
				<label class="control-label" for="productImage">Dodaj
					zdjęcie</label>
				<form:input id="productImage" path="productImage" type="file"
					class="form:input-large" />
			</div>

			<br />
			<br />

			<input type="submit" value="Zatwierdź" class="btn btn-default">
			<a href="<c:url value="/admin/productInventory" />"
				class="btn btn-default">Anuluj</a>

		</form:form>