var count = 1;
var addCount;
function addInputBox() {
	for(var i=1; i<=count; i++) {
		if(!document.getElementsByName("test" + i)[0]) {
			addCount = i;
			break;
		} else {
			addCount = count;
		}
	}
	var addStr = "<tr><td><input type=checkbox name=checkList value="+addCount +"></td><td><input type=file name=test"+addCount+"></td></tr>";
	var table = document.getElementById("dynamic_table");
	var newRow = table.insertRow();
	var newCell = newRow.insertCell();
	newCell.innerHTML = addStr;
	count++;
}
//행 삭제
function subtractInputBox() {
	var table = document.getElementById("dynamic_table");
	var rows = dynamic_table.rows.length;
	var chk = 0;
	if(rows > 1) {
													/* ↓ 행의 길의 = rows*/
		for(var i=0; i<document.gForm.checkList.length;i++) {
			if(document.gForm.checkList[i].checked == true) {
				table.deleteRow(i);
				i--;
				count--;
				chk++;
			}
		}
	if(chk < 0) {
		alert("삭제할 행을 체크해 주세요.")
	
	} }else {
		alert("더이상 삭제할 수 없습니다.")
	
}

}