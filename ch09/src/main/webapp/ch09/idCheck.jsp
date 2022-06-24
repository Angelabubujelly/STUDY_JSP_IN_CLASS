<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="mMgr" class="ch09.MemberMgr"/>
    <%
    request.setCharacterEncoding("UTF-8");
    /* member jsp 의 18번 줄의 id의 값이 id에 들어가 */
    String id = request.getParameter("id");
    /* 들어왔던 id의 값을 넣어주고 */
    boolean result = mMgr.checkId(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/*  boolean이 트루면 if문 실행인거징?*/
if(result){
out.print(id + "는 이미 존재하는 ID입니다.<p/>");
} else {
	out.print(id+"는 사용 가능합니다.");
}
%>
<a href="#" onClick="self.close()">닫기</a>
</body>
</html>