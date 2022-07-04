<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
   function check() {
      if(!document.test.password.value) {
         alert("비번 입력하삼");
         document.test.password.focus();
         return false;
      }
      alert("성공");
   }
</script>
<body>
   <form name="test" method="post">
      비번<input type="password" name="password">
      <input type="button" value="전송" onClick="javascript:check()">
   </form>
</body>
</html>