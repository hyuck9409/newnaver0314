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

</head>
<body>
	<h5>include1 파일에서 include2 결과 포함시키기</h5>
	<%
	request.setCharacterEncoding("utf-8");//한글 엔코딩
	%>
	<div>
		<jsp:include page="./ex4_include2.jsp">
			<jsp:param value="HAPPY DAY!!" name="msg" />
			<jsp:param value="mycar13.png" name="car" />
		</jsp:include>
	</div>
</body>
</html>
