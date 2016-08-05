<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Nabywca</h1>


			<p class="lead">Szczegółowe dane:</p>
		</div>

		<form:form commandName="order" class="form-horizontal">



			<div class="form-group">
				<label for="name">Imię i Nazwisko</label>
				<form:input path="cart.customer.customerName" id="name"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="email">Email</label>
				<form:input path="cart.customer.customerEmail" id="email"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="phone">Telefon</label>
				<form:input path="cart.customer.customerPhone" id="phone"
					class="form-Control" />
			</div>

			<br />

			<h3>Dane adresowe:</h3>

			<div class="form-group">
				<label for="billingStreet">Ulica</label>
				<form:input path="cart.customer.billingAddress.streetName"
					id="billingStreet" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="billingApartmentNumber">Numer ulicy</label>
				<form:input path="cart.customer.billingAddress.streetNumber"
					id="billingApartmentNumber" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="billingCity">Miasto</label>
				<form:input path="cart.customer.billingAddress.city"
					id="billingCity" class="form-Control" />
			</div>



			<div class="form-group">
				<label for="billingCountry">Kraj</label>
				<form:input path="cart.customer.billingAddress.country"
					id="billingCountry" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="billingZip">Kod pocztowy</label>
				<form:input path="cart.customer.billingAddress.zipCode"
					id="billingZip" class="form-Control" />
			</div>

			<input type="hidden" name="_flowExecutionKey" />

			<br />
			<br />

			<input type="submit" value="Dalej" class="btn btn-default"
				name="_eventId_customerInfoCollected" />

			<button class="btn btn-default" name="_eventId_cancel">Anuluj</button>

		</form:form>