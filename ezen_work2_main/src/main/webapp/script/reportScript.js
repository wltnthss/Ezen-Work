function checkReport(){
	var frm = document.reportForm;
	
	if(!frm.report.value){
		alert("문의/신고중 선택해주세요.");
		frm.report.focus();		
	}else if(!frm.comname.value){
		alert("회사이름을 입력해주세요.");
		frm.comname.focus();
	}else if(frm.checkContent.value == "all"){
		alert("신고내용중 하나를 선택해주세요.");
		frm.checkContent.focus();
	}else if(!frm.content.value){
		alert("내용을 입력해주세요");
		frm.content.focus();
	}else{
		frm.submit();
	}
}