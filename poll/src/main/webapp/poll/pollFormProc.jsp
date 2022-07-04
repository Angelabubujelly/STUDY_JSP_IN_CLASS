<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id = "pMgr" class="poll.PollMgr"/>
    <!--  Db연동할겡-->
<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	/*for문으로 돌았으니 1개가 아닌 여러개죠...  */
	String[] itemnum = request.getParameterValues("itemnum");
	boolean flag = pMgr.updatePoll(num, itemnum);
	String msg = "투표가 등록되지 않았습니다.";
	if(flag) {
		msg = "투표가 등록됐습니다.";
	}

%>
<script>
alert("<%=msg%>");
/* pollList.jsp에 num값을 넘겨줍니당  */
location.href="pollList.jsp?num=<%=num%>";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>