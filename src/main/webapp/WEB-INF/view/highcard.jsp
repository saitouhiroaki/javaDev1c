<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!doctype html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>JavaDevelop</title>
<link rel="shortcut icon" href="<c:url value="/assets/favicon.ico" />">
<link rel="stylesheet"
	href="<c:url value="/assets/bootstrap.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/bootstrap-icons.css" />">
<link rel="stylesheet" href="<c:url value="/assets/styles.css" />">
</head>

<body>

	<%@ include file="./_headerNavbar.jsp"%>

	<main>
	<div class="container workspace">

		<!---Servletから送られたデータを受け取るゾーン -->
		<%
		  request.setCharacterEncoding("UTF-8");

		  String choice = (String)request.getParameter("choice");

		%>

		<h3>ひろあき【10月25日分】</h3>
		あなたが選んだカードは：<%= choice %><br>

		<div id="board" style="width:1200px; height:600px; border:solid; border-color:brown; background-color:#2e8b57;">

			<!----------- 1のカード--------- -->
			<a href="./highcard?choice=1">
				<img style="width:10%"src="./assets/cards/1.png">
			</a>

			<!----------- 2のカード--------- -->
			<a href="./highcard?choice=2">
				<img style="width:10%"src="./assets/cards/2.png">
			</a>

			<!----------- 3のカード--------- -->
			<a href="./highcard?choice=3">
				<img style="width:10%"src="./assets/cards/3.png">
			</a>

		</div>
		<br><br><br>.
	</div>
	</main>

	<script src="<c:url value="/assets/bootstrap.bundle.min.js" />"></script>
	<script src="<c:url value="/assets/script.js" />"></script>
</body>

</html>