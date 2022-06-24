function inputCheck(){
	if(document.regForm.id.value ==""){
		alert("아이디를 입력하세요.");
		document.regForm.id.focus();
		return;
	}
	if(document.regForm.pw.value ==""){
		alert("비밀번호를 입력하세요.");
		document.regForm.pw.focus();
		return;
	}
	document.regForm.submit();
}