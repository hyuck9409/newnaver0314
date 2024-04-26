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

<script type="text/javascript">
$(function(){
	$("div.view").hide();
	$("h5.title").css("cursor","pointer");
	//제목을 클릭시 아래의 내용이 보이게 하기
	//다른 내용은 접기
	$("h5.title").click(function() {
		$("h5.title").next().hide();
		$(this).next().slideDown('slow');
	});
});
</script>
</head>
<body>
<h3 class="alert alert-danger">JSP의 Action Tag include</h3>
<h5 class="title">2024-04-26 1번 예제</h5>
<div class="view">
<jsp:include page="./ex1_test.jsp"/>
</div>
<h5 class="title">2024-04-26 2번 예제</h5>
<div class="view">
<jsp:include page="./ex2_gugudan.jsp"/>
</div>
</body>
</html>
