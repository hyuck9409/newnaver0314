<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
div.loginform {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

div.successpage {
	margin: 30px;
	border: 5px groove gold;
	padding: 10px;
	width: 600px;
}
</style>
</head>
<%
String loginok = (String) session.getAttribute("loginok");//해당세션이 없을경우 null
%>
<body>
	<%
	if (loginok == null) {
	%>
	<div class="loginform">
		<jsp:include page="loginform.jsp" />
	</div>
	<%
	} else {
	%>
	<div class="successpage">
		<jsp:include page="successpage.jsp" />
	</div>
	<%
	}
	%>
</body>
</html>