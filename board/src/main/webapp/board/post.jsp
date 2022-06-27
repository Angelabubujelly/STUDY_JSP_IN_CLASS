<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {width: 600px; }
th{background-color: lightblue;}
.borde{border-top: 1px solid black;}
input[type=text] {
	width:200px ;
	height: 300px;
}
</style>
</head>
<body>
<form enctype="multipart/form-data" method="post" action="boardPost" name="postFrm">
<table>
<tr>
<td></td><td></td>
</tr>
<tr>
<th  colspan="2" align="center" height="25">글쓰기</th>
</tr>
<tr>
<td width="15%">성명</td>
<td width="85%"><input name="name"></td>
</tr>
<tr>
<td>제목</td>
<td><input  name="subject"></td>
</tr>
<tr>
<td>내용</td>
<td class=""><textarea cols="50" rows="10" name="content"></textarea></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<td>파일찾기</td>
<td><input type="file" value="파일첨부" name="filename"></td>
</tr>

<tr>
<td class="borde" colspan="2" align="center">
<input type="submit" value="등록">&emsp;
<input type="reset" value="다시쓰기">&emsp;
<input type="button" value="list" onClick="location.href='list.jsp'"></td>
</tr>

</table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
</form>
</body>
</html>