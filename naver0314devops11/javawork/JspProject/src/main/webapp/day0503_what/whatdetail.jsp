<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.WhatDto"%>
<%@page import="data.dao.WhatDao"%>
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
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        
    </style>
</head>
<%
int num=Integer.parseInt(request.getParameter("num"));
WhatDao dao=new WhatDao();
WhatDto dto=dao.getData(num);
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
<h3>
<b><%=dto.getTitle() %></b>
</h3>
<img src="../save/<%=dto.getUploadPhoto() %>"
style="max-width: 400px;" border="1">
<br><br>
<pre style="font-size: 20px;"><%=dto.getContent() %></pre>
<hr>
<button type="buttton" class="btn btn-info"
onclick="history.back()">이전으로</button>
</body>
</html>