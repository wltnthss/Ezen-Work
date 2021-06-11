<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" class="pc full js "><head>
<meta charset="utf-8">
<title>회원가입</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="../../css/registrationCSS/registration.css">

<link rel="icon" sizes="32x32" href="/favicon.ico">
</head>
<body id="JoinPerson" class="ALBA join join--new person" cz-shortcut-listen="true">
<script type="text/javascript" src="../../script/memberScript.js?v=3"></script>

<header id="Header">
	<div id="HeaderGnb">
	
			<h1><a href="../../main/index.do"><img src="../images/Ezen_Work.png" alt="이젠일해요"></a></h1>
		<ul>
			<li class="home"><a href="../../main/index.do">HOME</a></li>	
			<li class="login"><a href="../../login/loginForm.jsp">로그인</a></li>
		</ul>
	</div>
</header>
<hr>
<!-- Section -->
<section id="Section" class="oldApp">
	<form id="frmReg" name="registerForm" method="post" action="register.do">

	<article id="Contents" class="joinPerson memberJoin">
		<h1 class="sign__title">개인회원 가입</h1>
		
		<fieldset class="userInfo">
			<legend class="hide">개인회원 가입</legend>

			<!-- 회원계정 -->
			<section class="join__section join__section--account">
				<h1 class="join__title">회원계정</h1>
				<ul class="join__info-list">
					<li class="join__info-item">
						<label class="chain-label" for="userid">아이디</label>
						<div class="sign__input-frame">
							<input type="email" id="userid" name="id" class="chain-input" value="" placeholder="아이디를 입력하세요" maxlength="15">
							<input type="button" value="중복 체크" onclick="checkId()">
						</div>
						<span id="msg_userid" class="msg"></span>
					</li>
					
					<li class="join__info-item">
						<label class="chain-label" for="passwd">비밀번호</label>
						<!-- <a href="#PwGuideLayer" class="password-guide-btn" onclick="$('#PwGuideLayer').show();return false;">안전한 비밀번호를 사용하는 방법</a> -->
						<div class="sign__input-frame">
							<input type="password" id="passwd" name="pwd" class="chain-input" value="" placeholder="비밀번호를 입력하세요" required="" autocomplete="new-password">
						</div>
					</li>
					
					<li class="join__info-item join__info-item--except">
						<div class="sign__input-frame">
							<input type="password" id="passwd2" name="repwd" class="chain-input" value="" title="비밀번호 재확인" placeholder="비밀번호 재확인" maxlength="16" required="" autocomplete="new-password">
						</div>
						<span id="msg_passwd2" class="msg"></span>
					</li>
				</ul>
			</section>
			<!-- //회원계정 -->

			<!-- 회원정보 -->
			
			<section class="join__section join__section--person-info">
				<h1 class="join__title">회원정보</h1>
				<ul class="join__info-list">
					<li class="join__info-item">
						<label class="chain-label" for="usernm">이름</label>
						<div class="sign__input-frame">
							<input type="text" id="usernm" class="chain-input" name="name" maxlength="20" value="" placeholder="이름을 입력하세요.">
						</div>
					</li>

					<li class="join__info-item">
						<label class="chain-label" for="male">성별<span class="sub-message">(선택)</span></label>
						<div class="sign__input-frame">
							<span class="input input--radio" id="autoMale">
								<input type="radio" id="male" name="gender" value="남자">
								<label class="radio-label" for="male">남자</label>
							</span>
							<span class="input input--radio">
								<input type="radio" id="female" name="gender" value="여자">
								<label class="radio-label" for="female">여자</label>
							</span>
						</div>
						<span id="msg_gender" class="msg choice"></span>
					</li>
					<li class="join__info-item join__info-item--email">
						<label class="chain-label" for="email">이메일</label>
						<div class="sign__input-frame">
							<input type="email" id="email" class="chain-input" name="email" value="" placeholder="이메일을 입력하세요" maxlength="50">
						</div>
					</li>
					<li class="join__info-item join__info-item--tel">
						<label class="chain-label" for="htel">휴대폰</label>
						<div class="sign__input-frame">
							<input type="tel" id="htel" class="chain-input" name="tel" value="" placeholder="'-' 없이 입력하세요." maxlength="11">
						</div>
					</li>
					<li class="join__info-item join__info-item--addrs">
						<label class="chain-label" for="addr">주소</label>
						<div class="sign__input-frame">
							<input type="text" id="addrs" class="chain-input" name="addr" value="" placeholder="주소를 입력하세요">
						</div>
					</li>
				</ul>
			</section>
			
		</fieldset>
		<button type="button" class="join-submit-btn join-submit-btn--person" onclick="checkRegister();return false;">회원가입등록</button>
		<button type="reset" class="join-submit-btn join-submit-btn--person">다시 작성</button>
	</article>
	</form>

</section>
<!-- //section -->
<hr>
<!-- Footer -->
<footer id="Footer">
	Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.
</footer>

<input type="hidden" id="mobileyn" value="N"><!-- DO NOT DELETE //-->
<iframe id="hideFrame" name="hideFrame" src="about:blank" class="hide" title="빈 프레임"></iframe><!-- DO NOT DELETE //-->

<!-- 알바 스크립트 -->

<script src="//trk.alba.co.kr/TA.js?202105261330"></script><div id="_BA"><img src="https://trk.alba.co.kr/Collect?servicetype=PCWEB&amp;logtype=VIEW&amp;cookieenabled=Y&amp;enctype=UTF-8&amp;scheme=https&amp;host=sign.alba.co.kr&amp;port=443&amp;pageurl=%2Fuser%2Fjoin%2FJoinRegFormP.asp&amp;fullurl=https%3A%2F%2Fsign.alba.co.kr%2Fuser%2Fjoin%2FJoinRegFormP.asp&amp;getdata=&amp;referurl=https%3A%2F%2Fsign.alba.co.kr%2Fuser%2Fjoin%2F&amp;referparam=site%3DWWW&amp;category1=%ED%9A%8C%EC%9B%90%EA%B0%80%EC%9E%85&amp;osversion=&amp;cid=B4172419275E4AB8A426BFB58B021846" width="1" height="1" style="display:none" alt=""></div>

<!-- //알바 스크립트 -->

<!-- //Footer -->

</body></html>