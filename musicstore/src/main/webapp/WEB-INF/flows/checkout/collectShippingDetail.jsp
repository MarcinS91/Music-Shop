<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Nabywca</h1>


			<p class="lead">Dane klienta:</p>
		</div>

		<form:form commandName="order" class="form-horizontal">

			<h3>Adres wysyłki:</h3>

			<div class="form-group">
				<label for="shippingStreet">Ulica</label>
				<form:input path="cart.customer.shippingAddress.streetName"
					id="shippingStreet" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingApartmentNumber">Numer ulicy</label>
				<form:input path="cart.customer.shippingAddress.streetNumber"
					id="shippingApartmentNumber" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingCity">Miasto</label>
				<form:input path="cart.customer.shippingAddress.city"
					id="shippingCity" class="form-Control" />
			</div>



			<div class="form-group">
				<label for="shippingCountry">Kraj</label>
				<form:input path="cart.customer.shippingAddress.country"
					id="shippingCountry" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingZip">Kod pocztowy</label>
				<form:input path="cart.customer.shippingAddress.zipCode"
					id="shippingZip" class="form-Control" />
			</div>

			<input type="hidden" name="_flowExecutionKey" />

			<br />
			<br />

			<button class="btn btn-default"
				name="_eventId_backToCollectCustomerInfo">Powrót</button>

			<input type="submit" value="Dalej" class="btn btn-default"
				name="_eventId_shippingDetailCollected" />

			<button class="btn btn-default" name="_eventId_cancel">Anuluj</button>

		</form:form>