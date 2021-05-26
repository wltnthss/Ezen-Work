function checkRegister(){
	var frm = document.registerForm;
	
	if(!frm.name.value) {
      alert("이름을 입력하세요.");
      frm.name.focus();
   } else if(!frm.id.value) {
      alert("아이디를 입력하세요.")
      frm.id.focus();
   } else if(!frm.pwd.value) {
      alert("비밀번호를 입력하세요.")
      frm.pwd.focus();
   } else if(frm.pwd.value != frm.repwd.value) { 
   	  alert("비밀번호가 맞지 않습니다.");
   	  frm.pwd.focus();
   } else if(!frm.email1.value) {
      alert("이메일을 입력하세요.")
      frm.email1.focus();
   }  else if(!frm.tel2.value) {
      alert("핸드폰번호를 입력하세요.")
      frm.tel2.focus();
   } else if(!frm.tel3.value) {
      alert("핸드폰번호를 입력하세요.")
      frm.tel3.focus();
   } else if(!frm.addr.value) {
      alert("주소를 입력하세요.")
      frm.addr.focus();
   } else {
	  frm.submit();
   }
}

function checkId() {
	var sId = document.registerForm.id.value;
	
	if(!sId) {
		alert("먼저 아이디를 입력하세요.");
		document.registerForm.id.focus();
	} else {
		window.open("checkId.do?id=" + sId, "",
				    "width=400 height=100 left=500 top=200");
	}
}

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