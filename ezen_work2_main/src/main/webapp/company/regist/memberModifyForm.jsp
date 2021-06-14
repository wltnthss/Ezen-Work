<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<script type="text/javascript">
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
	}else {
		frm.submit();
	}
}
</script>

<link rel="stylesheet" href="../css/memberWrite.css">
</head>
<body id="ChangePerson" class="ALBA change person">
	<div id="Header">
		<div id="HeaderGnb">
			<h1 style="top:11px">
				<a href="../../main/index.do">
					<img src="../image/Ezen_Work.png" alt="이젠일해요">
				</a>
			</h1>
			<ul>
				<li class="home"><a href="../../main/index.do">HOME</a></li>
				<li class="service"><a href="../mypage/mypageForm.do">마이페이지</a></li>
				<li class="logout"><a href="../../login/logout.do">로그아웃</a></li>
			</ul>
		</div>
	</div>
	<section id="Section" class="oldApp">
	<form action="memberModify.do" name="modifyForm" method="post">
	<article id="Contents" class="changePerson memberChange">
		<h1 class="sign__title">회원정보 수정</h1>
		<fieldset class="userInfo">
			<legend class="hide">개인정보</legend>
			<ul class="inputForm margin first">		
				<li class="id fix">
					<p class="user-info__fix-wrap">
						<span class="user-info-fix user-info-fix--title">아이디</span>
						<span class="user-info-fix user-info-fix--text" name="id">${dto.id }</span>
					</p>
				</li>
				<li class="id fix">
					<label for="passwd" class="chain-label">비밀번호</label>
					<div class="sign__input-frame">
						<input class="user-info-fix user-info-fix--title" type="password" id="passwd" name="expw" value="${dto.pw }" maxlength="20" readonly="readonly">
					</div>
					<span id="msg_passwd" class="msg"></span>
				</li>
				<li class="passwd">
					<label for="passwd" class="chain-label">새 비밀번호</label>
					<div class="sign__input-frame">
						<input type="password" id="passwd" name="pw" placeholder="새 비밀번호 입력" value="" maxlength="20">
					</div>
					<span id="msg_passwd" class="msg"></span>
				</li>
				<li class="passwd">
					<label for="passwd" class="chain-label">재확인</label>
					<div class="sign__input-frame">
						<input type="password" id="passwd" name="repw" placeholder="새 비밀번호 재확인" value="" maxlength="20">
					</div>
					<span id="msg_passwd" class="msg"></span>
				</li>
			
			</ul>
			<ul class="inputForm margin second">
				<li class="name">
					<label class="chain-label" for="usernm">회사명</label>					
					<div class="sign__input-frame">
							<input type="text" id="name" class="chain-input" name="cname" value="${dto.cname }" maxlength="50" autocomplete="off" readonly>
					</div>					
				</li>
				<li class="email">
					<label for="email" class="chain-label">이메일</label>
					<div class="sign__input-frame">
						<input type="text" class="chain-input" name="email" size="20" value="${dto.email}" maxlength="50" autocomplete="off">
						<select name="email2" value="${dto.email2}" class="chain-input">
							<option value="00">--선택해주세요.-- </option>
							<option value="naver.com">@ naver.com </option>
							<option value="gmail.com">@ gmail.com </option>
							<option value="hanmail.com">@ hanmail.com </option>
							<option value="nate.com">@ nate.com </option>
						</select>
					</div>
				</li>
				<li class="tel mobile">
					<label for="htel" class="chain-label">휴대폰</label>
					<div class="sign__input-frame">
						<select name="tel" class="chain-input" value="${dto.tel}">
							<option value="00">--선택해주세요.-- </option>
							<option value="010">010 </option>
							<option value="011">011 </option>
							<option value="016">016 </option>
						</select>
							<input type="text" name="tel2" class="chain-input" maxlength="4" value="${dto.tel2}">
							<input type="text" name="tel3" class="chain-input" maxlength="4" value="${dto.tel3}">
					</div>
				</li>
				<li class="join__info-item join__info-item--addrs">
					<label class="chain-label" for="addr">사업자번호</label>
						<div class="sign__input-frame">
						<input type="text" name="bnumber1" maxlength="3" class="chain-input" value="${dto.bnumber1}" readonly>
						<input type="text" name="bnumber2" maxlength="2" class="chain-input" value="${dto.bnumber2}" readonly>
						<input type="text" name="bnumber3" maxlength="5" class="chain-input" value="${dto.bnumber3}" readonly>
					</div>
				</li>
			</ul>
		</fieldset>
		<div class="btnAction bottom">
			<button type="submit" class="btn btnType1 submit" onclick="modify(); return false;">수정완료</button>
		</div>
	</article>
	</form>
</section>
<!-- //section -->
<hr>
<!-- Footer -->
<footer id="Footer">
	Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.
</footer>
<![endif]-->

<input type="hidden" id="mobileyn" value="N"><!-- DO NOT DELETE //-->
<iframe id="hideFrame" name="hideFrame" src="about:blank" class="hide" title="빈 프레임"></iframe><!-- DO NOT DELETE //-->
<script>
// placeholder 적용 (플러그인)
if (!Modernizr.input.placeholder) {
	$("input, textarea").placeholder();
}
</script>
</body>
</html>