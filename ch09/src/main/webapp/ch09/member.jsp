<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="memberScript.js" charset="utf-8"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function idCheck(id){
	frm =document.regFrm;
	if(id==""){
		alert("아이디를 입력해주세요.");
		 frm.id.focus();
		 return;
	}
	url ="idCheck.jsp?id=" + id;
	window.open(url, "IDCheck", "width=300,height=150")
	}
function findAddr(){
	 new daum.Postcode({
	        oncomplete: function(data) {
	        	var roadAddr = data.roadAddress;
	        	var jibunAddr = data.jibunAddress;
	        	var extraAddr ='';
	        	
	        	document.getElementById('postcode').value = data.zonecode;
	        	document.getElementById('addr').value = roadAddr;
     /*   	document.getElementById('addr').value = jibunAddr;  */
	        		   	if(roadAddr != ''){
	        		   		if(data.bname != ''){
	        		   			extraAddr += data.bname;
	        		   		}
	   		if(data.buildingName != ''){
	   			extraAddr += (extraAddr != '' ? ', ' + data.buildingName : data.buildingName);
	   		}
	   		roadAddr += (extraAddr != '' ? '(' + extraAddr + ')' : '')
	   		document.getElementById('addr').value = roadAddr;
	   	}  else if(jibunAddr != ''){
	   		document.getElementById('addr').value = jibunAddr;
	   	}
     document.getElementById('detailAddr').focus();
	        }
	    }).open();
}
function win_close() {
	self.close();
}
	
</script>
</head>
<body bgcolor="#F8F7FC" >
	<form name="regFrm" method ="post" action="memberProc.jsp">
		<table border="1" align="center" width="800" style="border-collapse:collapse">
			<tr bgcolor="#45B5C1">
				<td colspan="3" align="center"><font color="#ffffff"><b>회원가입</b></font></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>
					<input name="id">
					<input type="button" value="ID중복확인" onClick="idCheck(this.form.id.value)">
				</td>
				<td>아이디를 입력해 주세요</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>
					<input type="password" name="pwd">
				</td>
				<td>패스워드를 입력해 주세요</td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td>
					<input type="password" name="repwd">
				</td>
				<td>패스워드를 한번 더 입력해 주세요</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input name="name">
				</td>
				<td>이름을 입력해 주세요</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="1" checked>남&emsp;&emsp;
					<input type="radio" name="gender" value="2" >여
				</td>
				<td>성별을 선택해 주세요</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<input name="birthday" placeholder="ex) 190315">
				</td>
				<td>생년월일을 입력해 주세요</td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>
					<input name="email" size="40" placeholder="ex) email@naver.com">
				</td>
				<td>이메일을 입력해 주세요</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input name="zipcode" id="postcode" readonly>
					<input type="button" value="우편번호 찾기" onClick="findAddr()">
				</td>
				<td>우편번호를 검색하세요</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input name="address" id="addr" size="60" readonly><br/>
					<input name="detailAddress" id="detailAddr" placeholder="상세주소 넣기">
				</td>
				<td>상세주소가 있으면 입력해주세요</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<input type="checkbox" name="hobby" value="인터넷">인터넷&nbsp;
					<input type="checkbox" name="hobby" value="여행">여행&nbsp;
					<input type="checkbox" name="hobby" value="게임">게임&nbsp;
					<input type="checkbox" name="hobby" value="영화">영화&nbsp;
					<input type="checkbox" name="hobby" value="운동">운동
				</td>
				<td>취미를 선택하세요</td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job">
						<option value="0" selected>선택하세요.
						<option value="회사원">회사원
						<option value="공무원">공무원
						<option value="의사">의사
						<option value="법조인">법조인
						<option value="학생">학생
						<option value="교수">교수
						<option value="기타">기타
					</select>
				</td>
				<td>직업을 선택하세요</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="button" value="회원가입" onClick="inputCheck()">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="로그인" onClick="location.href='login.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>