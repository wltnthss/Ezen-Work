function checkLogin() {
	var frm = document.loginForm;
	
	if(!frm.id.value) {
		alert("아이디를 입력하세요.");
		frm.id.focus();
	} else if(!frm.pw.value) {
		alert("비밀번호를 입력하세요.");
		frm.pw.focus();
	} else {
		frm.submit();
	}
}
