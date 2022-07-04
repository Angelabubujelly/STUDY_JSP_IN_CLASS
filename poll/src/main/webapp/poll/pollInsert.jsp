<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        body{background-color: lightcyan;}
        hr{background-color: blueviolet; width: 500px;}
        table{border: 1px solid black;}
        td{border: 1px solid black;}
        button{margin-right:10px;}
        .bol{font-weight: bold;}
    </style>
</head>
<body align="center">
    <h2>투표프로그램</h2>
    <hr size="3px;">
    <bold>설문작성</bold>
    <hr size="3px;">
    <form action="pollInsertProc.jsp" method="post" >
    <table align="center">
        <tr>
            <td class="bol">질문</td>
            <td colspan="2" align="left"><input type="text" name="question" id=""></td>
        </tr>
        <tr>
          <td rowspan="8" class="bol">항목</td> 
          <td>1:<input type="text" name="item"></td>
          <td>2:<input type="text" name="item" ></td>
        </tr>
        <tr>
            <td>3:<input type="text" name="item"></td>
            <td>4:<input type="text" name="item"></td>
        </tr>
        <tr>
            <td>5:<input type="text" name="item"></td>
            <td>6:<input type="text" name="item"></td>
        </tr>
        <tr>
            <td>7:<input type="text" name="item"></td>
            <td>8:<input type="text" name="item"></td>
        </tr>
        <tr >
            <td  align="left">시작일</td>
            <td  align="left"><select name="sdateY" id="">
                <option value="2022">2022</option>
                <option value="2023">2023</option>
            </select>년
                <select name="sdateM" id="">
                <%
                for (int i = 1; i<=12; i++){
                	out.print("<option value='" + i + "'>" + i);
                }
                %>
                </select>월
                <select name="sdateD" id="">
 <%
                for (int i = 1; i<=31; i++){
                	out.print("<option value='" + i + "'>" + i);
                }
                %>
                </select>일
            </td>
        </tr>
        <tr  align="left">
            <td >종료일</td>
           <td  align="left"><select name="edateY" id="">
                <option value="2022">2022</option>
                <option value="2023">2023</option>
            </select>년
                <select name="edateM" id="">
                <%
                for (int i = 1; i<=12; i++){
                	out.print("<option value='" + i + "'>" + i);
                }
                %>
                </select>월
                <select name="edateD" id="">
 <%
                for (int i = 1; i<=31; i++){
                	out.print("<option value='" + i + "'>" + i);
                }
                %>
                </select>일
            </td>
        </tr>
        <tr align="left">
            <td >이중답변</td>
            <td  ><input type="radio" value="1">yes
                <input type="radio" value="0">no
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <button type="submit" name="" id="" value="작성하기">작성하기
            <button type="reset" name="" id="" value="다시쓰기">다시쓰기
            <button type="button" onClick="location.href='pollList.jsp'" value="제출하기">제출하기
        </td>
        </tr>
    </table>
    </form>

</body>
</html>