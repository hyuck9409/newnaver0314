<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.MbtiDto"%>
<%@page import="data.dao.MbtiDao"%>
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
<style>
body {
        background-image: url('../image/clouds.jpg'); /* Adjust this path if necessary */
        background-size: cover; /* Cover the entire page */
        background-attachment: fixed; /* Fix background during scrolling */
    }
</style>
</head>
<%
int num=Integer.parseInt(request.getParameter("num"));
MbtiDao dao=new MbtiDao();
MbtiDto dto=dao.getData(num);
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
<h3>
<b><%=dto.getTitle() %></b>
</h3>
<img src="../save/<%=dto.getUploadphoto() %>"
style="max-width: 400px;" border="1">
<br><br>
<pre style="font-size: 20px;"><%=dto.getContent() %></pre>
<hr>
<button type="buttton" class="btn btn-info"
onclick="history.back()">이전으로</button>
</body>
</html>