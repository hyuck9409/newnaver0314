<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

</head>
<%
//get 방식의 폼데이터 읽기
//get 방식은 톰캣8부터는 한글 안깨짐(엔코딩 안해도됨!)
String name=request.getParameter("name");
String photo=request.getParameter("photo");
%>
<body>
<h2>이름 : <%=name %></h2>
<hr>
<img src="<%=photo %>" width="300">
</body>
</html>
