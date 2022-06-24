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

바로 밑에 선언되는 변수는 인스턴스 변수.

	int num1;
	int num2 =10;
	String msg;
	
	public static void Service(String argp[]){
	String aaa;
	
	메소드 안에 메소드를 만들 수 없음.
	
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
 
<!-- 메소드 정의 해줄게 응.  -->
<%!
	int num1;
	int num2 =10;
	/* 변수명이 같지만 매개변수 값이 다른 것을 여러개 선언 할 수 있는 것 = 오버로딩*/
	 public int plusMethod(int num1) {
			return num1 + num2;
		}
	public int plusMethod(int num1, int num2) {
		return num1 + num2;
}
	/*기본자료형이 아니라 객체 생성해서 주소를 만들어 줘야 하는데, 값을 안 만들어줘서 null  */
	String msg;
	Double dou1;
%>

num1과 num2의 합 = <%=plusMethod(3,5) %><br>
num1과 num2의 합 = <%=plusMethod(3) %><br/>
참조형 변수의 초기값은? = <%=msg %><br/>
정수의 기본 초기값은? <%=num1 %><br/>
실수의 기본 초기값은? <%=dou1 %>
<!-- 지역변수를 사용하려면 지역변수는 반 드 시 초기화를 해줘야 에러가 안 남. 지역변수가 아닌 인스턴스 변수나 static변수(자바에만 있음)는 값을 안 넣어주면 기본 초기값이 들어간다.
int short는 0이, double 같은건 0.0이나 배열은 0, STring 은 null이 들어감.-->
</body>
</html>