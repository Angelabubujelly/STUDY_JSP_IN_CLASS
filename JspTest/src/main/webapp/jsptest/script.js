
	function optionCheck(e){
		let value = e.value;
		
		document.getElementById("result").value = value;
	}
	
	function resetClick(){
		alert("정보를 지우고 처음부터 다시 입력합니다!");
		document.getElementById("gofocus").focus();
	}
	
	function check(){
		if(document.regFrm.REGIST_MONTH.value == ""){
			alert("수강월을 입력해주세요");
			return;
		}
		if(document.regFrm.C_NO.value == ""){
			alert("회원번호를 입력해주세요");
			return;
		}
		if(document.regFrm.CLASS_AREA.value == ""){
			alert("강의장소를 선택해주세요");
			return;
		}
		if(document.regFrm.TEACHER_CODE.value == ""){
			alert("강의명을 선택해주세요");
			return;
		}
		if(document.regFrm.TUITION.value == ""){
			alert("수강료를 입력해주세요");
			return;
		}
		document.regFrm.submit();
	}
