<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

</head>
<%
//amho 라는 쿠키가 있으면 true, 없으면 false
boolean findAmho = false;
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie ck : cookies) {
		String name = ck.getName();
		if (name.equals("amho")) {
	findAmho = true;
	break;
		}
	}
}
%>
<body>
	<%
	if (findAmho) {
		
	%>
	<pre>
이달 말 입주를 앞둔 한 신축 아파트에서 건물 외벽이 휘고,
 콘크리트 골조가 휘어지거나 계단 타일 이곳저곳이 파손된 채 사전점검을 진행해 논란이 일고 있다.

지난 6일 다수의 온라인 커뮤니티에는 ‘역대급 하자 나온 신축 아파트’라는 제목의 글이 올라와 화제가 됐다. 
글쓴이는 사진들과 함께 “한눈에 봐도 보이는 건물 외벽이 휜 모습”이라며 
“지진 나면 전부 다 죽는 거 아닌지 (모르겠다)”라고 우려를 표했다.

그가 올린 사진상에서 실제로 건물 외벽은 휜 듯 보였다. 
글쓴이는 외벽뿐만 아니라 내부에도 수평이 맞지 않는 부분이 추가로 발견됐다고 지적했다.
</pre>
	<%
	} else {
	%>
	<script type="text/javascript">
		alert("먼저 암호를 입력해주세요");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>
