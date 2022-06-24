function inputCheck(){
	if(document.regForm.id.value=="") {
		alert("id를 입력하세요.");
		document.regForm.id.focus();
		/*다시 jsp파일로 돌아가용...*/
		return;
	}
		if(document.regForm.pwd.value=="") {
		alert("비밀번호를 입력하세요.");
		document.regForm.pwd.focus();
		return;
	}
		if(document.regForm.repwd.value=="") {
		alert("비밀번호를 다시 한 번 입력하세요.");
		document.regForm.repwd.focus();
		return;
	}
		if(document.regForm.name.value=="") {
		alert("이름을 입력하세요.");
		document.regForm.name.focus();
		return;
	}
		if(document.regForm.birth.value=="") {
		alert("생년월일을 입력하세요");
		document.regForm.birth.focus();
		return;
	}
		if(document.regForm.email.value=="") {
		alert("이메일을 입력하세요");
		document.regForm.email.focus();
		return;
	}
	if(document.regForm.pwd.value!=document.regForm.repwd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.repwd.focus();
		return;
	}
	/*저 위에 걸리는게 하나도 없어야 submit이 됩니다.*/
	document.regForm.submit();
}