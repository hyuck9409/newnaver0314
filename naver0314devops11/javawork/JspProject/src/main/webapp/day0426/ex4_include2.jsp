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
//include1 이 보낸 param 값 읽기
String msg=request.getParameter("msg");
String car=request.getParameter("car");
%>
<body>
<h6>여기는 inclued2 파일입니다</h6>
<h3 class="alert alert-danger">받은 메세지 : <%=msg %></h3>
<img src="../image/<%=car %>" style="max-width: 300px;">
</body>
</html>
