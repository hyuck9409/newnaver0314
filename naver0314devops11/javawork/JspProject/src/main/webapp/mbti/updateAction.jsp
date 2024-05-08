<%@page import="data.dto.MbtiDto"%>
<%@page import="data.dao.MbtiDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Action</title>
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
<%
    // mbtiIdx를 int 타입으로 읽기
    int num = Integer.parseInt(request.getParameter("num"));

    // MBTI 관련 DAO 선언
    MbtiDao dao = new MbtiDao();

    // MBTI 데이터를 담는 DTO 객체 가져오기
    MbtiDto dto = dao.getData(num); // 데이터 접근 메소드 이름은 실제 메소드에 따라 다를 수 있음
%>
<body>
<div class="form-container">
    <%
        // 폼 데이터 읽기
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        // 결과 출력
        out.println("<h1>업데이트 성공!</h1>");
        out.println("<p>제목: " + title + "</p>");
        out.println("<p>내용: " + content + "</p>");
        out.println("<a href='writelist.jsp' class='btn btn-primary'>홈으로 돌아가기</a>");
    %>
</div>
</body>
</html>