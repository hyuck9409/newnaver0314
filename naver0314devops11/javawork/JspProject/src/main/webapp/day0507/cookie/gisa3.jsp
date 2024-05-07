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
T1은 오는 10일 G2 e스포츠와 '2024 미드 시즌 인비테이셔널' 브래킷 스테이지 첫 경기를 치른다.
 1라운드 마지막날로 준비 기간이 꽤 있는 편이다. T1과 G2는 국제 무대 단골 손님이다. 
 그만큼 서로 많은 경기를 해보기도 했고, 언제나 멋지고 재밌는 경기를 연출했던 양 팀이다.

G2 e스포츠와 대진이 확정된 후 T1의 탑 라이너 '제우스' 최우제에게 G2를 상대하게 된 소감을 들어볼 수 있었다.
 이하 T1 '제우스' 최우제의 인터뷰 전문이다.

Q. 플레이-인 스테이지를 가볍게 통과했다. 현재 팀 컨디션은?

플레이-인 스테이지를 치르면서 적응도 빨리 할 수 있어 좋고, 나를 포함해 모두 괜찮은 상황이다.

Q. 플레이-인 스테이지부터 시작해 중국에 머문지 꽤 됐다. 어려움은 없나?

호텔에서 대부분의 생활을 보내고 있다. 그래서 어느 나라를 가도 똑같고, 편하게 지내고 있다.

Q. 아직 대회가 끝난 건 아니지만, 플레이-인 스테이지를 치르면서 배운 게 있다면?

어떤 챔피언이 좋은지, 그런 것에 대한 정보를 얻을 수 있어서 좋았다.

Q. 브래킷 스테이지 대진 추첨 결과 G2 e스포츠와 만난다. 만족스러운 결과인가?

G2와 만나게 된 건 긍정적으로 생각하고 있다. 다만, 1라운드 마지막 날에 해서 조금 아쉽다. 바로 다음 라운드에는 연이어 경기를 해야 할 가능성도 높다.

Q. 그동안 MSI와는 유독 인연이 없었다. 올해부터는 롤드컵 진출 티켓도 있고, 각오도 남다를 것 같은데?

최근 LCK가 MSI에서 트로피를 들어 올리지 못했는데 똑같은 대회라고 생각하고, 잘하는 팀이 되는 게 중요할 것 같다.

Q. 끝으로 하고 싶은 말은?

브래킷 스테이지부터는 bo5다. 최대한 오래 살아남아서 좋은 모습을 보여주겠다.

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