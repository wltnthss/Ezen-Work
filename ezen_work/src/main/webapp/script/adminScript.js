//관리자 로그인체크
function checkLogin(){
	var frm = document.loginForm;
	
	if(!frm.id.value){
		alert("아이디를 입력해주세요")
		frm.id.focus();
	}else if(!frm.pwd.value){
		alert("비밀번호를 입력해주세요")
		frm.pwd.focus();
	}else{		
		frm.submit();
	}
}

//알바경험담 검색기능
function search(){
	var frm = document.exp_search;
	frm.submit();	
}	

//알바경험담 등록버튼
function enroll(){
	var frm = document.exp_write;
	
	if(!frm.exp_subject.value){
		alert("제목을 입력해주세요");
		frm.exp_subject.focus();
	} else if(!frm.exp_content.value){
		alert("제목을 입력해주세요");
		frm.exp_content.focus();
	} else{
		frm.submit();
	}
}

//알바경험담 되돌아가기 버튼	
function back(){	
	history.back();				
}

//알바경험담 댓글
function reply_enroll(){
	var frm = document.exp_reply_write;
	
	if(!frm.reply_content.value){
		alert("내용을 입력해주세요");
		frm.reply_content.focus();
	}else{
		frm.submit();
	}	
}































 