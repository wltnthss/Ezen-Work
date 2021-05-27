function checkWrite(){
	//alert("test");
	var frm = document.writeForm;
	
	if(!frm.title.value) {
      alert("이력서 제목을 입력하세요.");
      frm.title.focus();
   } else if(!frm.age.value) {
      alert("나이를 입력하세요.")
      frm.age.focus();
   } else if(!frm.tall.value) {
      alert("키를 입력하세요.")
      frm.tall.focus();
   } else if(!frm.weight.value) {
      alert("몸무게를 입력하세요.")
      frm.weight.focus();
   }  else if(!frm.career.value) {
      alert("경력을 입력하세요.")
      frm.career.focus();
   } else if(!frm.achieve.value) {
      alert("학력을 입력하세요.")
      frm.achieve.focus();
   } else if(!frm.loc.value) {
      alert("위치를 입력하세요.")
      frm.loc.focus();
   } else {
	  frm.submit();
   }
}