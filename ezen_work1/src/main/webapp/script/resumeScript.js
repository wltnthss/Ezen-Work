function checkResumeWrite() {
	var frm = document.resumeWriteForm;
	
	if(!frm.title.value) {
      alert("이력서 제목을 입력하세요.")
      frm.title.focus();
      alert("test1")
   } else if(!frm.achieve.value) {
   	  alert("test1")
      alert("학력을 입력하세요.")
      frm.achieve.focus();
   } else if(!frm.career.value) {
      alert("경력을 입력하세요.")
      frm.career.focus()
   } else if(!frm.loc.value) {
      alert("희망지역을 입력하세요.")
      frm.loc.focus()
   } else if(!frm.age.value) {
      alert("나이를 입력하세요.")
      frm.age.focus()
   }  else {
	  frm.submit();
   }
}