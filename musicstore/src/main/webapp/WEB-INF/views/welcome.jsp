<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/tiles/template/navigation.jsp"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Sklep internetowy Winyl</title>


<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">




<link href="jumbotron-narrow.css" rel="stylesheet">




</head>

<body>

	<div class="container">
		

		<div class="jumbotron">
			<h1>Witaj w sklepie z muzyką "Winyl"</h1>
			<p class="lead">W naszym sklepie na pewno znajdziesz to czego szukasz. W naszej ofercie znajdziesz zarówno najnowsze albumy topowych artystów jak i klasyki z minionej epoki.</p>
			<p>
				<a class="btn btn-lg btn-success" href="<c:url value="/register" />"> Dołącz teraz!</a>
			</p>
		</div>

		<div class="row marketing">
			<div class="col-lg-6">
				<h4>Lista powodów dla których warto zrobić u nas zakupy:</h4>
				

				<h4>1. Szybka realizacja zamówienia</h4>
				<p>Realizacja zakupów w przeciągu 24h od złożenia zamówienia</p>

				<h4>2. Darmowa wysyłka</h4>
				<p>Koszt przesyłki wynosi 0.00 zł</p>
				
				<h4>3. Szeroki asortyment</h4>
				<p>W swojej ofercie posiadamy ponad 1000 albumów i płyt</p>
			</div>

			<div class="col-lg-6">
				<h4>4. Najniższe ceny w internecie</h4>
				<p>Nasz sklep zajmuje pierwsze miejsce w rankingach portali Skąpiec.pl oraz Ceneo.pl</p>

				
			</div>
		</div>

		 <footer class="footer">
        <p>&copy; Winyl 2016.</p>
      </footer>

	</div>



	
</body>
</html>

