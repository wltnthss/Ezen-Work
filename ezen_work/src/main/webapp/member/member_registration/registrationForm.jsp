<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" class="pc full js "><head>
<meta charset="utf-8">
<title>회원가입</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="../css/registrationCSS/registration.css">

<link rel="icon" sizes="32x32" href="/favicon.ico">
<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ecommerce.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="/rsc/js/stacktrace-with-promises-and-json-polyfills.min.js"></script>

<script>
window.onerror = function(msg, file, line, col, error) {
	if (!msg || !msg.length) { return; }

	StackTrace.fromError(error).then(function(stackframes) {
		var filename = "";
		var errorline = "";
		var stackframeStr = stackframes.map(function(sf) {
			if (filename == "") filename = sf.fileName;
			if (errorline == "") errorline = sf.lineNumber;
			return '[fileName : ' + sf.fileName + ', <b>functionName : ' + sf.functionName + ', lineNumber : ' + sf.lineNumber + '</b>]<br/>';
		}).join('\n');
		errorline = (errorline == "" || typeof errorline == "undefined" ? line : errorline);

		//초기 네이버 브라우저 버그 이슈 무시 처리
		if(error == "TypeError: Cannot read property 'checkDomStatus' of undefined") { return; }
		if(filename.indexOf("jquery-1.11.3") > -1) { return; }

		var strURL = '/error/error_ok.asp';
		var strParameter = 'category=javascript_error&line=' + errorline + '&source=' + encodeURIComponent(stackframeStr) + '&filename=' + encodeURIComponent(filename) + '&description=' + encodeURIComponent(error);

		if (window.XMLHttpRequest) {//IE7.0이상, 크롬, 파이어폭스
			var xmlHttp = new XMLHttpRequest();
			xmlHttp.open('POST', strURL, true);
			xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			xmlHttp.send(strParameter);
		} else if (window.ActiveXObject) {//IE
			var xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
			xmlHttp.open('POST', strURL, true);
			xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			xmlHttp.send(strParameter);
		}
		//alert('스크립트 처리 중 오류가 발생하였습니다.');
	}).catch(function(err) {
		console.log(err.message);
	});
};
</script>

<script src="/rsc/js/jquery-1.11.3.min.js"></script>
<script src="/rsc/js/modernizr.min.js"></script>
<script src="/rsc/js/jquery.placeholder.min.js"></script>
<script src="/rsc/js/CommonUI.js?202105261330"></script>
<script src="/rsc/js/CommonCtrl_min.js?202105261330"></script>

</head><body id="JoinPerson" class="ALBA join join--new person" cz-shortcut-listen="true"><input type="hidden" id="device" name="device" value="">
<input type="hidden" id="version" name="version" value="">
<input type="hidden" id="siteui" name="siteui" value="ALBA">
<input type="hidden" id="sitecd" name="sitecd" value="WWW">
<input type="hidden" id="oldappyn" name="oldappyn" value="">
<input type="hidden" id="nativelogin" name="nativelogin" value="">
<script src="/rsc/js/MemberCommonCLS.js?202105261330"></script>
<script>
var _commonctrl		= new CommonCtrl("");


</script>

<script src="/rsc/js/JoinRegFormPCLS.js?202105261330"></script>
<script type="text/javascript" src="../../script/memberScript.js?v=3"></script>



<ul class="skipNav">
	<li><a href="#Header">주요 메뉴 바로가기</a></li>
	<li><a href="#Contents">본문 바로가기</a></li>
</ul>

<header id="Header">
	<div id="HeaderGnb">
	
			<h1><a href="../member_main/index.jsp"><img src="../images/Ezen_Work.png" alt="이젠일해요"></a></h1>
	

		<ul>
			<li class="home"><a href="../member_main/index.jsp">HOME</a></li>
		
			<li class="login"><a href="../member_login/loginForm.jsp">로그인</a></li>
		
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
								<input type="radio" id="male" name="gender" value="M">
								<label class="radio-label" for="male">남자</label>
							</span>
							<span class="input input--radio">
								<input type="radio" id="female" name="gender" value="F">
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
<script>
// 본인인증 구분

$(".memo").hide();


// 입력값 체크
$("#userid").bind({
	keyup : function() {$("#userid").val($("#userid").val().toLowerCase());},
	change : function() {valid_userid = false;JoinRegFormPCLS.changeUserId();},
	blur : function() {MemberCommonCLS.idcheck();},
	keypress : function(e) {if (e.keyCode == 13) $(this).blur();}
});
$("#passwd, #passwd2").focusout(function() {JoinRegFormPCLS.checkPassWd()});
if ($("#siteui").val() != "BAR24") {
	$("#usernm").focusout(function() {JoinRegFormPCLS.checkUserNm();});
	$("input[name='gender']").click(function() {JoinRegFormPCLS.checkGender()});
}
$("#birthdate").bind("focusout change blur", function() {
	JoinRegFormPCLS.checkBirthDay();
});
$("#htel1, #htel2, #htel3, #htel")
	.focusout(function() {JoinRegFormPCLS.checkHtel()})
	.change(function() {JoinRegFormPCLS.resetCert()});
$("#certnum").focusout(function() {
	if ($("#certnum").val() != "") {
		JoinRegFormPCLS.doSubmitCertNum();
	}
});

// 이메일
$("#email1, #email2, #email").focusout(function(e) {
	if (email_focus) {
		MemberCommonCLS.setEmail($("#email").val());
		if ($("#email1").val() != "") {
			JoinRegFormPCLS.checkEmail();
		}
	}
});
$("#email1, #email2, #email").bind({
	change : function() {
		valid_email = false;
		JoinRegFormPCLS.changeEmail();
	},
	keypress : function(e) {
		if (e.keyCode == 13) $(this).blur();
	}
});
$("#email1, #email2, #email").keyup(function() {
	$("#msg_email").empty().removeClass("show");
	MemberCommonCLS.selectEmail();
});

$("#htel1, #htel2, #htel3, #htel, #certnum").keypress(function(e) {
	_commonctrl.chkNumeric({event:e});
});

//약관 동의 체크
$("#chk1, #chk2").click(function(e) {
	JoinRegFormPCLS.allAgreeCheck();
});

//정보수신동의 EMAIL, SMS 체크
$("#sectionEmailSms").click(function(e) {
	if ($("#sectionEmailSms").is(":checked")) {
		$("#sectioncd_A, #sectioncd_B, #sectioncd_I, #sectioncd_C, #sectioncd_E").prop("checked", true);
		$("#sectioncd_A, #sectioncd_B, #sectioncd_I, #sectioncd_C, #sectioncd_E").parent().addClass("on");
	} else {
		$("#sectioncd_A, #sectioncd_B, #sectioncd_I, #sectioncd_C, #sectioncd_E").prop("checked", false);
		$("#sectioncd_A, #sectioncd_B, #sectioncd_I, #sectioncd_C, #sectioncd_E").parent().removeClass("on");
	}
	JoinRegFormPCLS.allAgreeCheck();
});

//모두 동의 체크
$("#allAgree").click(function(e) {
	if ($("#allAgree").is(":checked")) {
		$("#chk1, #chk2, #sectionEmailSms, input[name='sectioncd']").prop("checked", true);
		$("#chk1, #chk2, #sectionEmailSms, input[name='sectioncd']").parent().addClass("on");
	} else {
		$("#chk1, #chk2, #sectionEmailSms, input[name='sectioncd']").prop("checked", false);
		$("#chk1, #chk2, #sectionEmailSms, input[name='sectioncd']").parent().removeClass("on");
	}
	
});



// 인증정보 셋팅

$("#usernm").val("");
$("#birthdate").val("");
$("#birthyear").val("");
$("#birthmonth").val("");
$("#birthday").val("");
if ($("#siteui").val() != "BAR24") {
	$("input[name='gender']:radio[value='']").attr("checked", true);
} else {
	$("#gender").val("");
	if ($("#gender").val() == "M") {
		$("#lblMale").addClass("on");
	} else if ($("#gender").val() == "F") {
		$("#lblFemale").addClass("on");
	}
}
$("#nationtype").val("N");
$("#enc_data").val("");
$("#seckey").val("");

JoinRegFormPCLS.viewCertInfo();

$("input, select").focus(function(e) {
	e.preventDefault();
	$("input, select").parents("li").removeClass("focus");
	$(this).parents("li").addClass("focus");
});

$("input[name='gender']").click(function(e) {
	$("input, select").parents("li").removeClass("focus");
	$("input[name='gender']").parents("li").addClass("focus");
});

$("input, select").focusout(function(e) {
	e.preventDefault();
	$(this).parents("li").removeClass("focus");
});

$(document).keydown(function(e) {
	//새로고침 키 방지
	if (e.keyCode == 116) {
		if (confirm("입력된 정보가 사라집니다.\n새로고침 하시겠습니까?")) {
			location.reload();
		} else {
			return false;
		}
	}
});

// PC - Placeholder 변경
if ($('html').hasClass('pc')) {
	$('#userid').attr('placeholder', '4~15자의 영문, 숫자를 입력하세요.');
	$('#passwd').attr('placeholder', '8~16자 영문, 숫자, 특수기호를 입력하세요.');
}
</script>
<!-- //section -->
<hr>
<!-- Footer -->
<footer id="Footer">
	Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.
</footer>

<input type="hidden" id="mobileyn" value="N"><!-- DO NOT DELETE //-->
<iframe id="hideFrame" name="hideFrame" src="about:blank" class="hide" title="빈 프레임"></iframe><!-- DO NOT DELETE //-->
<script>
// placeholder 적용 (플러그인)
if (!Modernizr.input.placeholder) {
	$("input, textarea").placeholder();
}
</script>

<!-- 알바 스크립트 -->

<script src="//trk.alba.co.kr/TA.js?202105261330"></script><div id="_BA"><img src="https://trk.alba.co.kr/Collect?servicetype=PCWEB&amp;logtype=VIEW&amp;cookieenabled=Y&amp;enctype=UTF-8&amp;scheme=https&amp;host=sign.alba.co.kr&amp;port=443&amp;pageurl=%2Fuser%2Fjoin%2FJoinRegFormP.asp&amp;fullurl=https%3A%2F%2Fsign.alba.co.kr%2Fuser%2Fjoin%2FJoinRegFormP.asp&amp;getdata=&amp;referurl=https%3A%2F%2Fsign.alba.co.kr%2Fuser%2Fjoin%2F&amp;referparam=site%3DWWW&amp;category1=%ED%9A%8C%EC%9B%90%EA%B0%80%EC%9E%85&amp;osversion=&amp;cid=B4172419275E4AB8A426BFB58B021846" width="1" height="1" style="display:none" alt=""></div>
<script>

BA.Collect("VIEW", {

	"servicetype":"PCWEB"

});
</script>

<!-- //알바 스크립트 -->

<!-- 통계 스크립트 -->

<!-- (PC) Google Log Script Start -->
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-34867276-1', 'auto');
	ga('require', 'displayfeatures');
	ga('require', 'ecommerce', 'ecommerce.js');
	ga('send', 'pageview');
</script>
<!-- (PC) Google Log Script End -->

<!-- //통계 스크립트 -->


<!-- WIDERPLANET SCRIPT START -->
<!--include virtual = "/rsc/inc/WiderScriptCode.inc" //-->
<!-- WIDERPLANET SCRIPT END -->

<!-- //Footer -->

</body></html>