<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 
public class aaa() {

�ٷ� �ؿ� ����Ǵ� ������ �ν��Ͻ� ����.

	int num1;
	int num2 =10;
	String msg;
	
	public static void Service(String argp[]){
	String aaa;
	
	�޼ҵ� �ȿ� �޼ҵ带 ���� �� ����.
	
	}
	
	 public Static int plusMethod(int num1) {
			return num1 + num2;
		}
	public int plusMethod(int num1, int num2) {
		return num1 + num2;
}
	
	String msg;
	Double dou1;
%>

}

 -->
 
<!-- �޼ҵ� ���� ���ٰ� ��.  -->
<%!
	int num1;
	int num2 =10;
	/* �������� ������ �Ű����� ���� �ٸ� ���� ������ ���� �� �� �ִ� �� = �����ε�*/
	 public int plusMethod(int num1) {
			return num1 + num2;
		}
	public int plusMethod(int num1, int num2) {
		return num1 + num2;
}
	/*�⺻�ڷ����� �ƴ϶� ��ü �����ؼ� �ּҸ� ����� ��� �ϴµ�, ���� �� ������༭ null  */
	String msg;
	Double dou1;
%>

num1�� num2�� �� = <%=plusMethod(3,5) %><br>
num1�� num2�� �� = <%=plusMethod(3) %><br/>
������ ������ �ʱⰪ��? = <%=msg %><br/>
������ �⺻ �ʱⰪ��? <%=num1 %><br/>
�Ǽ��� �⺻ �ʱⰪ��? <%=dou1 %>
<!-- ���������� ����Ϸ��� ���������� �� �� �� �ʱ�ȭ�� ����� ������ �� ��. ���������� �ƴ� �ν��Ͻ� ������ static����(�ڹٿ��� ����)�� ���� �� �־��ָ� �⺻ �ʱⰪ�� ����.
int short�� 0��, double ������ 0.0�̳� �迭�� 0, STring �� null�� ��.-->
</body>
</html>