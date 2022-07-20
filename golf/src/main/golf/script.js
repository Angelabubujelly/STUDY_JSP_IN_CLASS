function check() {
	if(frm.regist_month.value == "") {
		alert("수강월을 입력해 주세요.");
		frm.regist_month.focus();
		return;
	}
	if(frm.c_name.value=="") {
		alert("회원명을 선택해주세요");
		frm.c_name.focus();
		return;
	}
	if(frm.class_area.value =="") {
		alert("강의장소를 선택해주세요");
		frm.class_area.focus();
		return;
	}
	if(frm.teacher_code.value=="") {
		alert("강의명을 선택해주세요.");
		frm.teacher_code.focus();
		return;
	}
	frm.submit();
}

function fun_reset() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	location = "regCourse.jsp";
}

function fun_name() {
	frm.tuition.value="";
	frm.teacher_code.options[0].selected = true;
	frm.c_no.value = frm.c_name.value;
}

function fun_teaCode() {
	var price = frm.teacher_code.value * 1000;
	var c_no = frm.c_no.value;
	if(c_no >= 20000)
	price *= 0.5;
	
	frm.tuition.value=price;
}