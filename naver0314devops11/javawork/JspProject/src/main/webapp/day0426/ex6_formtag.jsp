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
<body>
<h5>JSP로 폼태그 읽기</h5>
<form action="./ex6_action.jsp" method="get"><!-- get 주로 검색할때(url이 다보임) post는 안보임 -->
<b>이름</b> :
<input type="text" name="name" required="required">
<br><br>
<b>사진</b> :
<select name="photo">
<option value="../image/17.jpg">신민아</option>
<option value="../image/15.jpg">설현</option>
<option value="../image/18.jpg">신세경</option>
<option value="../image/19.jpg">수지</option>
</select>
<br><br>
<!--  <button type="submit">서버전송</button> <!--submit일때만 required가 발동 --> 
<!-- 서브밋을 이미지를 나타내고자 할때 -->
<input type="image" src="../image/mycar13.png" style="width: 70px">
</form>

</body>
</html>
