<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--스크립트릿-->
<%
float f =4.5f;
/* Math.round = 반올림  */
int num = Math.round(f);
/* 임포트 안해주면 이런식으로 쓸수도 있삼다 */
java.util.Date date = new java.util.Date();

int hour = date.getHours();
%>
<!-- 선언문  -->
<%!
	public int op(int i, int j){
	return i>j?i:j;
}
%>
실수 4.5를 반올림한 값은? = <%=num %> <br>
두 수중 큰 숫자는? = <%=op(8,9) %> <br>
<!--  이렇게 가져온단다.. ㄱ--->
오늘 날짜와 시간은? = <%=date.toString() %> <br>
지금은 오전입니까 오후입니까? = <%=(hour<12)?"오전":"오후"%><br>

</body>
</html>