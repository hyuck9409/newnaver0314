<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SimpleBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
div.box {
	margin: 20px 100px;
	border: 2px solid gray;
	padding: 10px;
	width: 500px;
	height: auto;
}

.left {
	float: left; /* 왼쪽으로 플로팅 */
}

.right {
	float: right; /* 오른쪽으로 플로팅 */
}
</style>
</head>
<%
	//num int 타입
	int num=Integer.parseInt(request.getParameter("num"));
	//dao 선언
	SimpleBoardDao dao=new SimpleBoardDao();
	//dto 얻기
	SimpleBoardDto dto=dao.getData(num);
	//날짜 출력 양식
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	
%>
<body>
	<div class="box">
		<h3>${dto.getSubject()}</h3>
		<div>
			<span class="left"><%= dto.getWriter() %></span> <span class="right"><%= dto.getWriteday() %></span>
		</div>
		<br>
		<h6 style="color: gray;">
			조회 :
			<%=dto.getReadcount() %></h6>
		<br>
		<h5>
			<img src="../image/s${dto.avata}.JPG"></h5>
		<h5>
			내용 :
			<%=dto.getContent() %></h5>

		<hr>
<button type="button" class="btn btn-sm btn-secondary"
	onclick="location.href='./form'"
	style="width: 100px;">글쓰기</button>
	<button type="button" class="btn btn-sm btn-secondary"
	onclick="location.href='updateform.jsp?num=<%=dto.getNum() %>'"
	style="width: 100px;">수정</button>
	<button type="button" class="btn btn-sm btn-secondary"
	onclick="location.href='updateform.jsp?num=<%=dto.getNum() %>'"
	style="width: 100px;">삭제</button>
	<button type="button" class="btn btn-sm btn-secondary"
	onclick="location.href='./list?currentPage=${currentPage}'"
	style="width: 100px;">목록</button>
	</div>
	
</body>
</html>