function checkWrite(){
	var frm = document.writeForm;
	
	if(!frm.id.value){
		alert("아이디를 입력해주세요")
		frm.id.focus();
	}else if(!frm.pw.value){
		alert("비밀번호를 입력해주세요")
		frm.pw.focus();
	}else if(frm.pw.value != frm.repw.value) {
   	  alert("비밀번호가 맞지 않습니다.");
   	  frm.repw.focus();
   	}else if(!frm.cname.value){
		alert("회사명을 입력해주세요")
		frm.cname.focus();
	}else if(!frm.email.value){
		alert("이메일을 입력해주세요")
		frm.email.focus();
	}else if(!frm.tel2.value){
		alert("번호를 입력해주세요")
		frm.tel2.focus();
	}else if(!frm.tel3.value){
		alert("번호를 입력해주세요")
		frm.tel3.focus();	
    }else if(!frm.bnumber1.value){
		alert("사업번호를 입력해주세요")
		frm.bnumber1.focus();
	}else if(!frm.bnumber2.value){
		alert("사업번호를 입력해주세요")
		frm.bnumber2.focus();
	}else if(!frm.bnumber3.value){
		alert("사업번호를 입력해주세요")
		frm.bnumber3.focus();	
	}else {		
		frm.submit();
	}
}

function checkId() {
	var sId = document.writeForm.id.value;
	
	if(!sId) {
		alert("먼저 아이디를 입력하세요.");
		document.writeForm.id.focus();
	} else {
		window.open("checkId.do?id=" + sId, "",
				    "width=400 height=300 left=500 top=200");
	}
}

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

function modify() {
 	var frm = document.modifyForm;
 	
 	if(!frm.pw.value) {
		alert("비밀번호를 입력하세요.");
		frm.pw.focus();		
	} else if(!frm.repw.value){
		alert("비밀번호 재확인란 입력하세요");
		frm.repw.focus();	
	} else if(frm.pw.value != frm.repw.value) {
		alert("비밀번호가 맞지않습니다.");
		frm.pw.focus();
	}else if(!frm.email.value){
		alert("이메일을 입력해주세요")
		frm.email.focus();
	}else if(!frm.tel2.value){
		alert("번호를 입력해주세요")
		frm.tel2.focus();
	}else if(!frm.tel3.value){
		alert("번호를 입력해주세요")
		frm.tel3.focus();
	}else {
		frm.submit();
	}
}