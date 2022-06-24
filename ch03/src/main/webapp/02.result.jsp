<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("EUC-KR");
/*     String hobby = request.getParameter("hobby"); */
    String[] hobby =request.getParameterValues("hobby");
out.print("당신의 취미는<br><b>");
for(int i=0; i<hobby.length; i++){
	out.print(hobby[i]);
}
out.print("</b><br>  이군요? 멋져요♥");
    %> 
<%--     <%
    request.setCharacterEncoding("EUC-KR");
    String[] hobby = request.getParameterValues("hobby");
    for(int i=0; i<hobby.length; i++){
    	out.print("당신의 취미는<br><b>" +hobby[i]+"</b><br>이군요? 멋져요♥");
    %>
    <%=hobby[i] %><br/> 
    <% }
    %> --%>

</body>
</html>