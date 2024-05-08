<%@page import="data.dto.MbtiDto"%>
<%@page import="data.dao.MbtiDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Data</title>
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
    .form-container {
        width: 800px;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
        border-radius: 15px;
        padding: 20px;
    }
</style>
</head>
<body>
<div class="form-container">
    
    <%
        int num = Integer.parseInt(request.getParameter("num"));
        MbtiDao dao = new MbtiDao();
        MbtiDto dto = dao.getData(num);
    %>
    <form action="updateAction.jsp" method="post" enctype="multipart/form-data">
        <input type="hidden" name="num" value="<%= num %>"> <!-- 숨겨진 필드로 기존 글 번호 저장 -->
        <h3><b>글 수정</b></h3>
        <table class="table table-bordered">
            <tr>
                <th>제목</th>
                <td><input type="text" name="title" class="form-control" value="<%= dto.getTitle() %>" required></td>
            </tr>
            <tr>
                <th>사진</th>
                <td>
                    <% if(dto.getUploadphoto() != null) { %>
                        <img src="../save/<%= dto.getUploadphoto() %>" style="max-width: 200px;" border="1"><br>
                    <% } %>
                    <input type="file" name="upload" style="width: 200px;">
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td><textarea name="content" class="form-control" rows="5" required><%= dto.getContent() %></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <button type="submit" class="btn btn-secondary">저장</button>
                    <button type="button" class="btn btn-info" onclick="history.back()">취소</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
