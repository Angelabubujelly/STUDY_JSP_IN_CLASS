function inputCheck(){
	if(document.regForm.id.value==""){
		alert("id를 입력하세요.");
		document.regForm.id.focus();
		return;
		}
	if(document.regForm.adress==""){
		alert("주소를 입력하세요.");
		document.regForm.adress.focus();
		return;
	}
	if(document.regForm.phone==""){
		alert("전화번호를 입력하세요.");
		document.regForm.phone.focus();
		return;
	}
	if(document.regForm.email==""){
		alert("이메일을 입력하세요.");
		document.regForm.email.focus();
		return;
	}
	if(document.regForm.hobby==""){
		alert("취미를 입력하세요.");
		document.regForm.hobby.focus();
		return;	
	}
	document.regForm.submit();
	
}