<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="board.BoardBean" %>
    <jsp:useBean id="bMgr" class="board.BoardMgr"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
	boolean flag;
	String nowPage = request.getParameter("nowPage");
	int num = Integer.parseInt(request.getParameter("num"));
	if(request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardBean bean = (BoardBean)session.getAttribute("bean");
		String dbPass = bean.getPass();
		if(inPass.equals(dbPass)) {
			flag = bMgr.deleteBoard(num);
			/*flag가 true이면 실행이졍  */
			if(flag) {
			String url = "list.jsp?nowPage=" + nowPage;
			response.sendRedirect(url);
			} else {
				%>
				<script>
				alert("답변이 있어 삭제할 수 없습니다.");
				history.go(-2);
			</script>
				<%
			}
		} else {
%>		
			<script>
				alert("비밀번호가 다릅니다");
				history.back();
			</script>
<%
		}
	} else {
%>
		<script>
			function check() {
				if(document.delFrm.pass.value=="") {
					alert("비밀번호를 입력하세요");
					document.delFrm.pass.focus();
					return false;
				}
				document.delFrm.submit();
			}
		</script>
</head>
<body bgcolor="#E1F6FE">
<br><br>
<form method="post" name="delFrm" action="delete.jsp">
<table width="600" align="center">
<tr>
<td bgcolor="#9465E6" height="25" align="center">사용자의 비밀번호를 입력해주세요</td>
</tr>
<tr>
<td height="25" align="center"><input type=password name="pass"></td>
</tr>
<tr>
<td><hr/></td>
</tr>
<tr>
<td align="center">
	<input type="button" value="삭제완료" onClick="check()">
		<input type="reset" value="다시쓰기" >
			<input type="button" value="뒤로" onClick="history.go(-1)">
</td>
</tr>

</table>
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="nowPage" value="<%=nowPage%>">
</form>
	<%
}
%>
</body>
</html>