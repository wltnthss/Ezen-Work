function checkReport(){
	var frm = document.reportForm;
	
	if(!frm.report.value){
		alert("신고 혹은 문의 선택")
		frm.cname.focus();
	}else if(!frm.comname.value){
		alert("회사이름 입력해주세요")
		frm.comname.focus();
	}else if(!frm.checkContent.value){
		alert("내용선택해라")
		frm.checkContent.focus();
	}else if(!frm.content.value){
		alert("내용작성")
		frm.content.focus();		
	}else {		
		frm.submit();
	}
}