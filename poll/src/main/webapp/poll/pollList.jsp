<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "poll.*, java.util.Vector" %>
    <jsp:useBean id="pMgr" class="poll.PollMgr"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body{background-color: lightcyan;}
        hr{background-color: blueviolet; }
</style>
</head>
<body>
<div align="center">
<h2 align="center"> 투표 프로그램</h2>
<hr width="700"/>
<b>설문폼</b>
<!--  설문 리스트 목록들-->
<jsp:include page="pollForm.jsp"></jsp:include>

<table width="600" border="1">
<tr>
<td align="center"><b>번호</b></td>
<td align="center"><b>제목</b></td>
<td align="center"><b>시작일~종료일</b></td>
</tr>
<%
Vector<PollListBean> vlist = pMgr.getAllList();
int count = vlist.size();
for(int i=0; i<vlist.size(); i++) {
	PollListBean plBean = vlist.get(i);
	int num = plBean.getNum();
	String question = plBean.getQuestion();
	String sdate = plBean.getSdate();
	String edate = plBean.getEdate();
	out.print("<tr><td align='center'>" + count + "</td>");
	/* pollList.jsp에 num 값을 넘겨주고  */
	out.print("     <td><a href='pollList.jsp? num= "+num+"'>" + question + "</a></td>" );
	out.print("     <td>"+sdate+" ~ "+edate + "</td></tr>");
	count = count-1;
}
%>
<tr>
<td colspan="3" align="right"><a href="pollInsert.jsp">설문 작성하기</a></td>
</tr>
</table>

</div>
</body>
</html>