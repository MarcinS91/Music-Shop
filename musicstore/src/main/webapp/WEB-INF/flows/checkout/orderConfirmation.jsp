<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="now" class="java.util.Date" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Rachunek</h1>

			<p class="lead">Potwierdzenie zamówienia</p>
		</div>

		<div class="container">

			<div class="row">

				<form:form commandName="order" class="form-horizontal">

					<div
						class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

						<div class="txt-center">
							<h1>Rachunek</h1>
						</div>
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<address>
									<strong>Adres wysyłki</strong><br />
									${order.cart.customer.shippingAddress.streetName} <br />
									${order.cart.customer.shippingAddress.city},
									${order.cart.customer.shippingAddress.streetNumber} <br />
									${order.cart.customer.shippingAddress.country},
									${order.cart.customer.shippingAddress.zipCode}
								</address>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 text-right">
								<p>
									Data wysyłki:
									<fmt:formatDate type="date" value="${now}" />
								</p>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<address>
									<strong>Adres wysyłki</strong><br />
									${order.cart.customer.billingAddress.streetName} <br />
									${order.cart.customer.billingAddress.city},
									${order.cart.customer.billingAddress.streetNumber} <br />
									${order.cart.customer.billingAddress.country},
									${order.cart.customer.billingAddress.zipCode}
								</address>
							</div>
						</div>

						<div class="row">
							<table class="table table-hover">
								<thead>
									<tr>
										<td>Produkty</td>
										<td>Ilość</td>
										<td class="text-center">Cena</td>
										<td class="text-center">Łącznie</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="cartItem" items="${order.cart.cartItems}">
										<tr>
											<td class="col-md-9"><em>${cartItem.product.productName}</em></td>
											<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
											<td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
											<td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
										</tr>
									</c:forEach>

									<tr>
										<td></td>
										<td></td>
										<td class="text-right">
											<h4>
												<strong>Łączna wartość:</strong>
											</h4>
										</td>
										<td class="text-center text-danger">
											<h4>
												<strong>PLN ${order.cart.grandTotal}</strong>
											</h4>
										</td>
									</tr>

								</tbody>
							</table>
						</div>


						<input type="hidden" name="_flowExecutionKey" /> <br /> <br />

						<button class="btn btn-default"
							name="_eventId_backToCollectShippingDetail">Powrót</button>

						<input type="submit" value="Zatwierdź" class="btn btn-default"
							name="_eventId_orderConfirmed" />

						<button class="btn btn-default" name="_eventId_cancel">Anuluj</button>
					</div>
				</form:form>
			</div>
		</div>