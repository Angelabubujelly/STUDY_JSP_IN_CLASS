<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- scope는 유효한 범위, 변수가 생성된 다음 어디까지 유효하게 사용할 것인가에 대한 것. 
   		page는 지역변수고, request는 웹서버가 받아서 응답을 할 때 까지만 변수가 유효,  
    	session은 브라우저 별로, application은 이 앱이 끝날 때 까지 유효-->
 
<jsp:useBean id ="bean" class="board.BoardBean" scope="session"/>
<%
	String nowPage = request.getParameter("nowPage");
	String subject = bean.getSubject();
	String content = bean.getContent();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center" bgcolor="#E1F6FE">
	<form name="boardReply" method="post" action="boardReply">
		<table width="800" cellpadding="7" align="center">
			<tr>
			<td colspan="2" bgcolor="#9465E6" align="center" height="15">답변하기</td>
			</tr>
			<tr>
			<td width="15%"> 이 름</td>
			<td width="85%" align="left"> <input name="name" size="30" maxlength="20" ></td>
			</tr>
			<tr>
			<td> 제 목</td>
			<td align="left"><input name="subject" size="30" maxlength="30" value="답변  :<%=subject %> "></td>
			</tr>
			<tr>
			<td>내 용</td>
			<td><textarea name="content" rows="10" cols="95">
			♡♡♡♡♡♡♡♡♡♡답변을 쓰세요♡♡♡♡♡♡♡♡♡♡♡♡
			</textarea></td>
			</tr>
			<tr>
			<td>비밀번호</td>
			<td align="left"><input type="password" name="pass" size="20"></td>
			</tr>
			<tr>
			<td colspan="2"><hr/></td>
			</tr>
			<tr>
			<td colspan="2"> 
				<input type="submit" value="답변등록">
				<input type="reset" value="다시쓰기">
				<input type="button" value="뒤로" onClick="history.back()">
			</td>
			</tr>
			</table>
			<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
			<input type="hidden" name="nowPage" value="<%=nowPage %>">
			<input type="hidden" name="ref" value="<%=bean.getRef() %>">
			<input type="hidden" name="pos" value="<%=bean.getPos() %>">
			<input type="hidden" name="depth" value="<%=bean.getDepth() %>">
	</form>
</body>
</html>