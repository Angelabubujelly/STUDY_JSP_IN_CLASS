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
out.print("����� ��̴�<br><b>");
for(int i=0; i<hobby.length; i++){
	out.print(hobby[i]);
}
out.print("</b><br>  �̱���? �����䢾");
    %> 
<%--     <%
    request.setCharacterEncoding("EUC-KR");
    String[] hobby = request.getParameterValues("hobby");
    for(int i=0; i<hobby.length; i++){
    	out.print("����� ��̴�<br><b>" +hobby[i]+"</b><br>�̱���? �����䢾");
    %>
    <%=hobby[i] %><br/> 
    <% }
    %> --%>

</body>
</html>