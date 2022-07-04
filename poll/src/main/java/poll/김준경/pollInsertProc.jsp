<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id ="pMgr" class="poll.PollMgr" />
    <jsp:useBean id="plBean" class="poll.PollListBean" />
    <!--  값을 넣겠읍디다.-->
    <jsp:setProperty property="*" name="plBean" />
    <jsp:useBean id="piBean" class="poll.PollItemBean" />
    <jsp:setProperty property="*" name="piBean" />
    <%
    /* data를 가공해서 plBean으로 넣어주려구♡  */
    	String sdate = request.getParameter("sdateY") + "-" + 
    						 request.getParameter("sdateM") + "-" + 
    						 request.getParameter("sdateD");
	    String edate = request.getParameter("edateY") + "-" + 
				 request.getParameter("edateM") + "-" + 
				 request.getParameter("edateD");
	    plBean.setSdate(sdate);
	    plBean.setEdate(edate);
	   boolean flag = pMgr.insertPoll(plBean, piBean);
	   String msg = "설문 추가에 실패했습니다.";
		String url = "pollInsert.jsp";
		if(flag) {
			msg = "설문이 추가됐습니다.";
			url = "pollList.jsp";
		}
    %>
    <script>
    alert("<%=msg%>");
    location.href = <%=url%>;
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