<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" class="pc full js "><head></head>
<meta charset="utf-8">
<title>알바천국, 쓸수록 천국</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="../css/loginCSS/loginFind.css">

<link rel="icon" sizes="32x32" href="/favicon.ico">
<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ecommerce.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="/rsc/js/stacktrace-with-promises-and-json-polyfills.min.js"></script>

<script type="text/javascript">
function findPwd(){
	var frm = document.loginPwdFind;
	
	frm.submit();
}
function findPwd1(){
	//alert("test");
	var frm1 = document.loginPwdFind1;
	
	frm1.submit();
}
</script>

<ul class="skipNav">
	<li><a href="#Header">주요 메뉴 바로가기</a></li>
	<li><a href="#Contents">본문 바로가기</a></li>
</ul>

<header id="Header">
	<div id="HeaderGnb">
	
			<h1><a href="../main/index.do"><img src="../img/Ezen_Work.png" alt="이젠일해요"></a></h1>
	

		<ul>
			<li class="home"><a href="../main/index.do">HOME</a></li>
		
			<li class="login"><a href="loginForm.jsp">로그인</a></li>
		
		</ul>
	</div>
</header>
<hr>
<!-- Section -->
<section id="Section" class="oldApp">
	<article id="Contents" class="pwdSearch memberSearch">
		<h1 class="sign__title">비밀번호 찾기</h1>
		
		<fieldset class="searchWrap person">
			<legend>개인회원</legend>
			<div class="searchForm">
				<ul class="navTab">
					<li id="JoinInfoP" class="joininfo on"><a href="#" onclick="PwdSearchCLS.changeTab('P', 'joininfo');return false">가입정보로 찾기</a></li>
				</ul>
				<form action="loginPwdFind.do" name="loginPwdFind" method="post">
				<ul class="howtoTab person">
					<li class="joinInfo default">
						<span class="input first on"><input type="text" id="howto_MOBILE_P" name="howto" onclick="PwdSearchCLS.changeHowToP();" disabled="disabled"><label for="howto_MOBILE_P">이메일로 찾기</label></span>
					</li>
					<li class="certInfo default" style="display: none;">
						<span class="input first"><input type="radio" id="howto_KCB_P" name="howto" value="KCB" onclick="PwdSearchCLS.changeHowToP();"><label for="howto_KCB_P">휴대폰 인증</label></span>
						<span class="input"><input type="radio" id="howto_IPIN_P" name="howto" value="IPIN" onclick="PwdSearchCLS.changeHowToP();"><label for="howto_IPIN_P">아이핀(i-PIN)인증</label></span>
					</li>
					
					<li class="id">
						<div class="colWrap">
							<input type="email" id="userid_P" class="placeholder-input" name="find_id" value="" maxlength="30" placeholder="아이디">
						</div>
					</li>
					<li class="name">
						<div class="colWrap">
							<input type="text" id="usernm_P" class="placeholder-input" name="find_name" value="" maxlength="30" placeholder="이름">
						</div>
					</li>
					<li class="email">
						<div class="colWrap">
							<input type="text" id="htel_P" class="placeholder-input" name="find_email" value="" maxlength="11" placeholder="이메일">
						</div>
					</li>
				</ul>
				</form>
				<div class="howtoGuide self" style="display: none;">
					<div>아이디 입력 후 본인 명의의 <strong>휴대폰으로 본인인증</strong><br>새로운 비밀번호를 설정할 수 있습니다.<br><em>(실명인증을 하지 않은 경우 본인인증으로 비밀번호 찾기 불가)</em></div>
				</div>
			</div>
			<div class="btnAction"><a href="#" onclick="findPwd();" class="btn btnType1">개인 비밀번호 찾기</a></div>
			
		</fieldset>
		
		<!-- //개인회원 비밀번호 찾기 -->
		
		<!-- 기업회원 비밀번호 찾기 -->
		
		<input type="hidden" id="usertype_C" name="usertype" value="C">
		<input type="hidden" id="enc_data_C" name="enc_data">
		<form id="frmC" class="search-form" name="loginPwdFind1" method="post" action="loginPwdFind1.do">
		<fieldset class="searchWrap biz">
			<legend>기업회원</legend>
			<div class="searchForm">
				<ul class="howtoTab biz">
					<li class="joinInfo default">
						<span class="input first on"><input type="text" id="howto_MOBILE_P" name="howto" onclick="PwdSearchCLS.changeHowToP();" disabled="disabled"><label for="howto_MOBILE_P">이메일로 찾기</label></span>
					</li>
					<li class="certInfo default" style="display: none;">
						<span class="input first"><input type="radio" id="howto_KCB_P" name="howto" value="KCB" onclick="PwdSearchCLS.changeHowToP();"><label for="howto_KCB_P">휴대폰 인증</label></span>
						<span class="input"><input type="radio" id="howto_IPIN_P" name="howto" value="IPIN" onclick="PwdSearchCLS.changeHowToP();"><label for="howto_IPIN_P">아이핀(i-PIN)인증</label></span>
					</li>
					
					<li class="id">
						<div class="colWrap">
							<input type="email" id="userid_P" class="placeholder-input" name="find_id" value="" maxlength="30" placeholder="아이디">
						</div>
					</li>
					<li class="name">
						<div class="colWrap">
							<input type="text" id="usernm_P" class="placeholder-input" name="find_cname" value="" maxlength="30" placeholder="이름">
						</div>
					</li>
					<li class="email">
						<div class="colWrap">
							<input type="text" id="htel_P" class="placeholder-input" name="find_email" value="" maxlength="11" placeholder="이메일">
						</div>
					</li>
					
				</ul>
				<div class="howtoGuide iPin" style="display: none;">
					<div>아이디 입력 후 <strong>아이핀(I-PIN)인증</strong>으로<br>새로운 비밀번호를 설정할 수 있습니다.</div>
				</div>
			</div>
			<div class="btnAction"><a href="#" onclick="findPwd1();" class="btn biz">기업 비밀번호 찾기</a></div>
		</fieldset>
		</form>
		
		<!-- //기업회원 비밀번호 찾기 -->
		
	</article>
</section>
<!-- //section -->
<hr>
<script>
$("#comregno, #htel_C, #htel_P").keypress(function(e) {
	_commonctrl.chkNumeric({event:e});
});
PwdSearchCLS.changeHowToC();
PwdSearchCLS.changeTab("P", "joininfo");

//이메일
$("#email1, #email2, #email").focusout(function(e) {
	if (email_focus) {
		MemberCommonCLS.setEmail($("#email").val());
	}
});
$("#email1, #email2, #email").keyup(function() {
	MemberCommonCLS.selectEmail();
});


</script>
<!-- Footer -->
<footer id="Footer">
	Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.
</footer>

<!-- //Footer -->

</body></html>