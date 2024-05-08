<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.MbtiDto"%>
<%@page import="data.dao.MbtiDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submitted Data Display</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
    body {
        background-image: url('../image/clouds.jpg'); /* Adjust this path if necessary */
        background-size: cover;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .table-container {
        width: 1000px;
        height: 600px;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
        border-radius: 15px;
        padding: 20px;
    }
</style>
</head>
<body>
<div class="table-container">
    <%-- 서버에 저장된 데이터 가져오기 --%>
    <%
        int num = Integer.parseInt(request.getParameter("num"));
        MbtiDao dao = new MbtiDao();
        MbtiDto dto = dao.getData(num);
    %>
    <h3><b><%= dto.getTitle() %></b></h3>
    <% if(dto.getUploadphoto() != null) { %>
        <img src="../save/<%= dto.getUploadphoto() %>" style="max-width: 400px;" border="1">
    <% } %>
    <pre style="font-size: 20px;"><%= dto.getContent() %></pre>
    <hr>
    <button type="button" class="btn btn-info" onclick="history.back()">이전으로</button>
    <button type="button" class="btn btn-primary" onclick="window.location.href='edit.jsp?num=<%= num %>'">수정</button>
</div>
</body>
</html>