<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  package 속의 board안 모든것-->
<%@ page import ="board.*" %>
<%@ page import = "java.util.*" %>
<jsp:useBean id="bMgr" class ="board.BoardMgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	int totalRecord = 0; //Db에 저장되어 있는 전체 행(record)의 수..  글이 66개라면,,,
	int numPerPage = 10; //글을 10개씩 보여준다는 소리. 1P당 게시글 10개.
	int pagePerBlock = 5;// 페이지를 5P씩 보여준다는 소리 [1][2][3][4][5]...
	
	//DB에서 값 가져올거야아아아앙
	int totalPage = 0; //  전체 페이지 수 = [1][2][3][4][5][6][7]
	int totalBlock = 0;// 전체 블록 수 = [1~5][6~7] 해서 2.
	
	int nowPage = 1; //현재 레코드가 해당되는 Page ex) 23레코드면 3page임. 
	int nowBlock = 1; //현재 레코드가 해당되는 블록 ... 1이겠지...
	
	int start = 0;	//DB테이블의 select시작번호()
	int listSize = 0; //읽어온 게시글의 수. 총 record 수와 차이가 있어야 함.
	
	String keyWord = "", keyField ="";
	Vector<BoardBean> vlist = null;
	if(request.getParameter("keyWord") != null) {
	keyWord = request.getParameter("keyWord");
	keyField = request.getParameter("keyField");
	}
	if(request.getParameter("nowPage") != null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage * numPerPage) - numPerPage;
			totalRecord =bMgr.getTotalCount(keyField, keyWord);
			totalPage = (int)Math.ceil((double)totalRecord/numPerPage); //전체 페이지 수
			nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);	// 현재 블럭 계산
			totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock); // 전체 블럭 계산
			
			%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        h3{text-align: center;}
    </style>
</head>
<body bgcolor="#E1F6FE">
    <h3>JSPBoard</h3><p/>
   
<table align="center">
<tr>
<td colspan="5">Total :<%=totalRecord %> Articles(<font color="red"><%=nowPage %>/<%=totalPage %></font>page)</td>
</tr>
<tr bgcolor="#9465E6" align="center">
    <td width="10%">번호</td>
    <td width="40%">제목</td>
    <td width="15%">이름</td>
    <td width="25%">날짜</td>
    <td width="10%">조회수</td>
</tr>
<%
	vlist = bMgr.getBoardList(keyField, keyWord, start, numPerPage);
%>
<tr>
</tr>
<tr>
<td colspan="5">헤엥ㅇ</td>
</tr>
<tr>
<!--  페이징 시작-->
<td colspan="3"> 
</td>
<!--페이징 끝  -->
    <td colspan="2" align="right">
    <a href="post.jsp">글쓰기</a>
    <a href="javascript.jsp">처음으로</a>
    </td>
</tr>
<hr width="700">
<form name="searchFrm" method="get" action="list.jsp">
<table  align="center" width="800">
<tr>
    <td align="center">
    <select name="keyField">
        <option value="name">이름</option>
        <option value="subject">제목</option>
        <option value="content">내용</option>
    </select>
    <input name="keyWord">
    <button type="button" value="찾기" onclick="">찾기</button>
    <input type="hidden" name="nowPage" value="1">
</td>
</tr>
</table>
</form>
</body>
</html>