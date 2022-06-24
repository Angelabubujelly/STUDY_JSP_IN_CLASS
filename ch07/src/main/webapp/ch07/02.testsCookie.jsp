<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Cookie[] cookies = request.getCookies();
%>
<!--지역변수나 메소드는 스크립트릿이 아닌 선언문에 정의해줘야 함  -->
<!--메소드 선언하겠습니당당 -->
<%!
	private String getCookieValue(Cookie[] cookie1, String name) {
		if(cookie1 != null){
			for(int i=0; i<cookie1.length; i++) {
				if(cookie1[i].getName().equals(name)) {
					return cookie1[i].getValue();
				}
			}	
		}
		return null;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <%=getCookieValue(cookies, "NAME")%><p/>
나이 : <%=getCookieValue(cookies, "AGE")%><p/>
성별 : <%=getCookieValue(cookies, "GENDER")%><p/>
</body>
</html>