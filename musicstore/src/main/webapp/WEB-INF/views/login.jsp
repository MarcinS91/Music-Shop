<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

</head>
<div class="container-wrapper">
	<div class="container">
		<div id="login-box">
			<h2>Zaloguj się z użyciem nazwy użytkownika i hasła</h2>

			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>


			<form name="loginForm"
				action="<c:url value="/j_spring_security_check" />" method="post">

				<c:if test="${not empty error}">
					<div class="error" style="color: #ff0000;">${error}</div>
				</c:if>

				<div class="form-group">
					<label for="username">Użytkownik: </label> <input type="text"
						id="username" name="username" class="form-control" />
				</div>
				<div class="form-group">
					<label for="password">Hasło:</label> <input type="password"
						id="password" name="password" class="form-control" />
				</div>
				<input type="submit" value="Zatwierdź" class="btn btn-default">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
		 <footer class="footer">
        <p>&copy; Winyl 2016.</p>
      </footer>
	</div>
</div>