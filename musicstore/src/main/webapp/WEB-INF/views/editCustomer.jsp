<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Edycja</h1>



		</div>

		<form:form
			action="${pageContext.request.contextPath}/admin/customer/editCustomer"
			method="post" commandName="customer">
			<form:hidden path="customerId" value="${customer.customerId}" />
			
			
					
					<div class="form-group">
				<label for="status">Status</label> <label class="checkbox-inline"><form:radiobutton
						path="enabled" id="status" value="true" />Dostępny</label> <label
					class="checkbox-inline"><form:radiobutton
						path="enabled" id="status" value="false" />Niedostępny</label>
			</div>
			<input type="submit" value="Zatwierdź" class="btn btn-default">
			<a href="<c:url value="/admin/" />"
				class="btn btn-default">Anuluj</a>

		</form:form>