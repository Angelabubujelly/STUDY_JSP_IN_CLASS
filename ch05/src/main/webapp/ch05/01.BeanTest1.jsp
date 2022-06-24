<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Bean을 사용하겠다고 반드시 해줘야함  -->
    							<!--패키지명.클래스이름/(닫기)  -->
<jsp:useBean id="test" class="ch05.BeanTest1"/>
												<!--프로퍼티값이랑 이름 똑같이!!  -->
<jsp:setProperty name="test" property="name" value="자바빈 사용:밤블비"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
									<!--  id에 넣은 이름이랑 똑같이.. 그 값을 가져오세용-->													
당신의 이름 : <jsp:getProperty name="test" property="name"/>
</body>
</html>