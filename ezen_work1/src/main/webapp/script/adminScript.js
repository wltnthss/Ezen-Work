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