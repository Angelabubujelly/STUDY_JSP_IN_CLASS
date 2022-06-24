<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
/* 	세션을 유지하는 key값과 ,멀겠땅 */
	session.setAttribute("idKey",id);
	session.setMaxInactiveInterval(60*5);
%>
<!-- 다른 페이지로 갔다 돌아와도 유지가 되는점  -->
<h1>Session Ex</h1>
<form action="07.session3.jsp" method="post">
1. 가장 좋아하는 계절은?<p/>
<input type="radio" name="season" value="봄">봄&emsp;
<input type="radio" name="season" value="여름">여름&emsp;
<input type="radio" name="season" value="가을">가을&emsp;
<input type="radio" name="season" value="겨울">겨울<p/><p/>
2. 가장 좋아하는 과일은?<p/>
<input type="radio" name="fruit" value="딸기">딸기&emsp;
<input type="radio" name="fruit" value="골드키위">골드키위&emsp;
<input type="radio" name="fruit" value="복숭아">복숭아&emsp;
<input type="radio" name="fruit" value="샤인머스캣">샤인머스캣<p/><p/>
<input type="submit" value="전송">&emsp;
<input type="reset" value="초기화">
</form>
</body>
</html>