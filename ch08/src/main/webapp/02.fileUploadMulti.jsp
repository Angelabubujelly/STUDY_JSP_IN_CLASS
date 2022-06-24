<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="02.script.js"></script>
</head>
<body>
	<!-- <form method="post" name="frmName1">
	<tr>
	<td>user</td>
	<td><input name="user"></td>
	<td>title</td>
	<td><input name="title"></td>
	</tr>
	<tr>
	<td colspan="4">추가할 파일 수 입력
	<input name="addcnt">
	<input type="button" value="확인" onclick="addFile(this.form)">
	</td>
</tr>
	</form> -->
	<h4>파일을 업로드 하려면 행 추가 버튼을 누르세요</h4>
	<input type="button" value="행 추가"  onclick="javascript:addInputBox();">&emsp;
	<input type="button" value="행 삭제" onclick="javascript:subtractInputBox();">
	<form method="post" enctype="multipart/form-data" name="gForm" action="02.multiviewPage.jsp">
		<input type="hidden" name="count">
		<table border="1" id="dynamic_table">
		</table><p/>
		<input type="submit" value="UPLOAD">
	</form>
</body>
</html>