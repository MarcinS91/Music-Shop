<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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
		
			<h1>Rejestracja</h1>

			<p class="lead">Uzupełnij poniższe informacje w celu rejestracji:</p>
		</div>

		<form:form action="${pageContext.request.contextPath}/register"
			method="post" commandName="customer">

			

			<div class="form-group">
				<label for="name">Imię i Nazwisko</label>
				<form:errors path="customerName" cssStyle="color: #ff0000" />
				<form:input path="customerName" id="name" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="email">Email</label> <span style="color: #ff0000">${emailMsg}</span>
				<form:errors path="customerEmail" cssStyle="color: #ff0000" />
				<form:input path="customerEmail" id="email" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="phone">Telefon</label>
				<form:input path="customerPhone" id="phone" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="username">Nazwa użytkownika</label> <span style="color: #ff0000">${usernameMsg}</span>
				<form:errors path="username" cssStyle="color: #ff0000" />
				<form:input path="username" id="username" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="password">Hasło</label>
				<form:errors path="password" cssStyle="color: #ff0000" />
				<form:password path="password" id="password" class="form-Control" />
			</div>


			<br />

			<h3>Dane adresowe:</h3>

			<div class="form-group">
				<label for="billingStreet">Ulica</label>
				<form:input path="billingAddress.streetName" id="billingStreet"
					class="form-Control" />
			</div>

			

			<div class="form-group">
				<label for="billingCity">Miasto</label>
				<form:input path="billingAddress.city" id="billingCity"
					class="form-Control" />
			</div>

			

			<div class="form-group">
				<label for="billingCountry">Kraj</label>
				<form:input path="billingAddress.country" id="billingCountry"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="billingZip">Kod pocztowy</label>
				<form:input path="billingAddress.zipCode" id="billingZip"
					class="form-Control" />
			</div>

			<br />

			<h3>Dane do wysyłki:</h3>

			<div class="form-group">
				<label for="shippingStreet">Nazwa ulicy</label>
				<form:input path="shippingAddress.streetName" id="shippingStreet"
					class="form-Control" />
			</div>

			

			<div class="form-group">
				<label for="shippingCity">Miasto</label>
				<form:input path="shippingAddress.city" id="shippingCity"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingZip">Numer domu/mieszkania</label>
				<form:input path="shippingAddress.streetNumber" id="streetNumber"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingCountry">Kraj</label>
				<form:input path="shippingAddress.country" id="shippingCountry"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingZip">Kod pocztowy</label>
				<form:input path="shippingAddress.zipCode" id="shippingZip"
					class="form-Control" />
			</div>

			<br />
			<br />

			<input type="submit" value="Zatwierdź" class="btn btn-default">
			<a href="<c:url value="/" />" class="btn btn-default">Anuluj</a>

		</form:form>
		 <footer class="footer">
        <p>&copy; Winyl 2016.</p>
      </footer>