<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--��ũ��Ʈ��-->
<%
float f =4.5f;
/* Math.round = �ݿø�  */
int num = Math.round(f);
/* ����Ʈ �����ָ� �̷������� ������ �ֻ�� */
java.util.Date date = new java.util.Date();

int hour = date.getHours();
%>
<!-- ����  -->
<%!
	public int op(int i, int j){
	return i>j?i:j;
}
%>
�Ǽ� 4.5�� �ݿø��� ����? = <%=num %> <br>
�� ���� ū ���ڴ�? = <%=op(8,9) %> <br>
<!--  �̷��� �����´ܴ�.. ��--->
���� ��¥�� �ð���? = <%=date.toString() %> <br>
������ �����Դϱ� �����Դϱ�? = <%=(hour<12)?"����":"����"%><br>

</body>
</html>