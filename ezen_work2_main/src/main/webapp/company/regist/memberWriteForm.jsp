<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="../../script/companyScript.js?v=5"></script>
<script type="text/javascript">
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
	}else if(frm.email2.value == "00"){
		alert("이메일중 하나를 선택해주세요.");
		frm.email2.focus();
	}else if(frm.tel.value == "00"){
		alert("번호중 하나를 선택해주세요.");
		frm.tel.focus();
	}else if (frm.tel2.value.length < 4){
		alert("4자리로 입력해주세요")
		frm.tel2.focus();
	}else if (frm.tel3.value.length < 4){
		alert("4자리로 입력해주세요")
		frm.tel3.focus();
    }else if (frm.bnumber1.value.length < 3){
		alert("3자리로 입력해주세요")
		frm.bnumber1.focus();
	}else if (frm.bnumber2.value.length < 2){
		alert("2자리로 입력해주세요")
		frm.bnumber2.focus();
	}else if (frm.bnumber3.value.length < 5){
		alert("5자리로 입력해주세요")
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
					 "width=400 height=100 left=500 top=200");
	}

}
</script>

<link rel="stylesheet" href="../css/memberWrite.css">
</head>
<body id="JoinMain" class="ALBA join join--new person">
<form id="frmReg" action="memberWrite.do" name="writeForm" method="post">
	<div id="Header">
		<div id="HeaderGnb">
			<h1 style="top:11px">
				<a href="../../main/index.jsp">
					<img src="../image/Ezen_Work.png" alt="이젠일해요">
				</a>
			</h1>
			<ul>	
				<li class="login"><a href="../../login/loginForm.jsp">로그인</a></li>
				<li class="home"><a href="../../main/index.jsp">HOME</a></li>
			</ul>
		</div>
	</div>
		<section id="Section" class="oldApp">
			<article id="Contents" class="joinBiz memberJoin">
				<h1 class="sign__title">기업회원 가입</h1>
				<section class="join__section join__section--account">
					<h1 class="join__title">기업계정</h1>
					<ul class="join__info-list">
						<li class="join__info-item">
							<label class="chain-label" for="userid">아이디</label>
							<div class="sign__input-frame">
								<input type="text" id="id" name="id" class="chain-input" value="" placeholder="아이디를 입력하세요" maxlength="15">
								<input type="button" value="중복 체크" onclick="checkId()">
							</div>
							<span id="msg_userid" class="msg"></span>
						</li>
						
						<li class="join__info-item">
							<label class="chain-label" for="passwd">비밀번호</label>
							<div class="sign__input-frame">
								<input type="password" id="passwd" name="pw" class="chain-input" value="" placeholder="비밀번호를 입력하세요" required="" autocomplete="new-password">
							</div>
						</li>
						
						<li class="join__info-item join__info-item--except">
							<div class="sign__input-frame">
								<input type="password" id="repw" name="repwd" class="chain-input" value="" title="비밀번호 재확인" placeholder="비밀번호 재확인" maxlength="16" required="" autocomplete="new-password">
							</div>
							<span id="msg_passwd2" class="msg"></span>
						</li>
					</ul>
				</section>
				<section class="join__section join__section--person-info">
					<h1 class="join__title">기업정보</h1>
					<ul class="join__info-list">
						<li class="join__info-item">
							<label class="chain-label" for="usernm">회사명</label>
							<div class="sign__input-frame">
								<input type="text" id="usernm" class="chain-input" name="cname" maxlength="20" value="" placeholder="회사명을 입력하세요.">
							</div>
						</li>
						<li class="join__info-item join__info-item--email">
							<label class="chain-label" for="email">이메일</label>
							<div class="sign__input-frame">
								<input type="email" class="chain-input" name="email" value="" placeholder="이메일을 입력하세요" maxlength="20">
								
								<select name="email2" class="chain-input">
									<option value="naver.com">@ naver.com </option>
									<option value="gmail.com">@ gmail.com </option>
									<option value="hanmail.com">@ hanmail.com </option>
									<option value="nate.com">@ nate.com </option>
								</select>
							</div>
						</li>
						<li class="join__info-item join__info-item--tel">
							<label class="chain-label" for="htel">휴대폰</label>
							<div class="sign__input-frame">
								<select name="tel" class="chain-input">
									<option value="010">010 </option>
									<option value="011">011 </option>
									<option value="016">016 </option>
								</select>
								<input type="text" name="tel2" class="chain-input" maxlength="4">
								<input type="text" name="tel3" class="chain-input" maxlength="4">
								
							</div>
						</li>
						<li class="join__info-item join__info-item--addrs">
							<label class="chain-label" for="addr">사업자번호</label>
							<div class="sign__input-frame">
								<input type="text" name="bnumber1" maxlength="3" size="3" class="chain-input" placeholder="3자리 입력해주세요">
								<input type="text" name="bnumber2" maxlength="2" size="2" class="chain-input" placeholder="2자리 입력해주세요">
								<input type="text" name="bnumber3" maxlength="5" size="5" class="chain-input" placeholder="5자리 입력해주세요">
							</div>
						</li>
					</ul>
				</section>
			<button type="button" class="join-submit-btn join-submit-btn--person" onclick="checkWrite()">회원가입등록</button>
			<button type="reset" class="join-submit-btn join-submit-btn--person">다시 작성</button>
		</article>
	</section>	
</form>
	<!-- Footer -->
<footer id="Footer">
	Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.
</footer>
</body>
</html>