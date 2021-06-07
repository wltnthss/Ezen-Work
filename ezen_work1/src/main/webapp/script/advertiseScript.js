function change() {

	var f=document.forms[0];
	
	if(f.numselect.value==""){ 
		f.ad_num.value="";
		f.ad_num.readOnly=true;
		f.ad_num.focus();
		return;
	}
	if(f.numselect.value=="direct"){ 
		f.ad_num.value="";
		f.ad_num.readOnly=false;
		f.ad_num.focus();
		return;
	}
	f.ad_num.value=f.numselect.value;
	f.ad_num.readOnly=true;
	f.ad_num.focus();
}

function checkWrite(){
	var frm = document.advertiseForm;
	
	if(!frm.ad_subject.value){
		alert("공고 제목을 입력해주세요")
		frm.ad_subject.focus();
	}else if(!frm.ad_content.value){
		alert("공고 내용을 입력해주세요")
		frm.ad_content.focus();
	}else if(!frm.image.value){
		alert("사진을 넣어주세요")
		frm.image.focus();
	}else if(!frm.ad_num.value){
		alert("모집인원을 입력해주세요")
		frm.ad_num.focus();
    }else if(!frm.ad_area.value){
		alert("위치(지역)을 입력해주세요")
		frm.ad_area.focus();
	}else if(!frm.salary.value){
		alert("시급을 입력해주세요")
		frm.salary.focus();
	}else if(!frm.cname.value){
		alert("회사명을 입력해주세요")
		frm.cname.focus();
	}else if(!frm.email.value) {
      alert("이메일을 입력해주세요")
      frm.email1.focus();
    }else if(!frm.tel2.value) {
      alert("핸드폰번호를 입력해주세요")
      frm.tel2.focus();
    }else if(!frm.tel3.value) {
      alert("핸드폰번호를 입력해주세요")
      frm.tel3.focus();
    }else {		
		frm.submit();
	}
}
	function checkWrite(){
	var frm = document.advertiseForm;
	
	if(!frm.ad_subject.value){
		alert("공고 제목을 입력해주세요")
		frm.ad_subject.focus();
	}else if(!frm.ad_content.value){
		alert("공고 내용을 입력해주세요")
		frm.ad_content.focus();
	}else if(!frm.image.value){
		alert("사진을 넣어주세요")
		frm.image.focus();
	}else if(!frm.ad_num.value){
		alert("모집인원을 입력해주세요")
		frm.ad_num.focus();
    }else if(!frm.ad_area.value){
		alert("위치(지역)을 입력해주세요")
		frm.ad_area.focus();
	}else if(!frm.salary.value){
		alert("시급을 입력해주세요")
		frm.salary.focus();
    }else {		
		frm.submit();
	}
}	
	function checkModify(){
	var frm = document.advertiseModifyForm;
	
	if(!frm.ad_subject.value){
		alert("공고 제목을 입력해주세요")
		frm.ad_subject.focus();
	}else if(!frm.ad_content.value){
		alert("공고 내용을 입력해주세요")
		frm.ad_content.focus();
	}else if(!frm.image.value){
		alert("사진을 넣어주세요")
		frm.image.focus();
	}else if(!frm.ad_num.value){
		alert("모집인원을 입력해주세요")
		frm.ad_num.focus();
    }else if(!frm.ad_area.value){
		alert("위치(지역)을 입력해주세요")
		frm.ad_area.focus();
	}else if(!frm.salary.value){
		alert("시급을 입력해주세요")
		frm.salary.focus();
    }else {		
		frm.submit();
	}
}