<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" class="pc full js "><head>
<meta charset="utf-8">
<title>알바천국, 쓸수록 천국</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="../css/loginCSS/loginFind.css">

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

</head><body id="IdSearch" class="ALBA find" cz-shortcut-listen="true"><input type="hidden" id="device" name="device" value="">
<input type="hidden" id="version" name="version" value="">
<input type="hidden" id="siteui" name="siteui" value="ALBA">
<input type="hidden" id="sitecd" name="sitecd" value="WWW">
<input type="hidden" id="oldappyn" name="oldappyn" value="">
<input type="hidden" id="nativelogin" name="nativelogin" value="">
<script src="/rsc/js/MemberCommonCLS.js?202105261330"></script>
<script>
var _commonctrl		= new CommonCtrl("");


</script>

<script src="/rsc/js/IdSearchCLS.js?202105261330"></script>



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
	<article id="Contents" class="idSearch memberSearch">
		<h1 class="sign__title">아이디 찾기</h1>
		
		<!-- 개인회원 아이디 찾기 -->
		<form id="frmP" class="search-form person" name="frmP" method="post">
		<input type="hidden" id="usertype_P" name="usertype" value="P">
		<input type="hidden" id="enc_data_P" name="enc_data">
		<input type="hidden" id="dupinfo_P" name="dupinfo">
		<fieldset class="searchWrap person">
			<legend>개인회원</legend>
			<div class="searchForm">
				<ul class="navTab">
					<li id="JoinInfoP" class="joininfo on"><a href="#" onclick="IdSearchCLS.changeTab('P', 'joininfo');return false">가입정보로 찾기</a></li>
					<li id="CertInfoP" class="certinfo"><a href="#" onclick="IdSearchCLS.changeTab('P', 'certinfo');return false">본인인증으로 찾기</a></li>
				</ul>
				<ul class="howtoTab person">
					<li class="joinInfo default">
						<span class="input on"><input type="radio" id="howto_MOBILE_P" name="howto" value="MOBILE" onclick="IdSearchCLS.changeHowToP();"><label for="howto_MOBILE_P">휴대폰</label></span>
						<span class="input"><input type="radio" id="howto_EMAIL_P" name="howto" value="EMAIL" onclick="IdSearchCLS.changeHowToP();"><label for="howto_EMAIL_P">이메일</label></span>
					</li>
					<li class="certInfo default" style="display: none;">
						<span class="input"><input type="radio" id="howto_KCB_P" name="howto" value="KCB" onclick="IdSearchCLS.changeHowToP();"><label for="howto_KCB_P">휴대폰 인증</label></span>
						<span class="input"><input type="radio" id="howto_IPIN_P" name="howto" value="IPIN" onclick="IdSearchCLS.changeHowToP();"><label for="howto_IPIN_P">아이핀(i-PIN)인증</label></span>
					</li>
					<li class="name">
						<div class="colWrap">
							<input type="text" id="usernm_P" class="placeholder-input" name="usernm" value="" maxlength="20">
							<label class="searchTitle" for="usernm_P">이름</label>
						</div>
					</li>
					<li class="mobile">
						<div class="colWrap">
							<input type="text" id="htel_P" class="placeholder-input" name="htel" value="" maxlength="11">
							<label class="searchTitle" for="htel_P">휴대폰 (- 제외 번호 입력)</label>
							<input type="hidden" id="htel1_P" name="htel1" value="">
							<input type="hidden" id="htel2_P" name="htel2" value="">
							<input type="hidden" id="htel3_P" name="htel3" value="">
						</div>
					</li>
					<li class="email" style="display: none;">
						<div class="colWrap">
							<input type="email" id="email" class="placeholder-input" name="email" value="" maxlength="50" autocomplete="off">
							<label class="searchTitle" for="email">이메일</label>
							<button class="reset-button" type="button" onclick="MemberCommonCLS.initEmail();">이메일 초기화</button>
							<input type="hidden" id="email1" name="email1" value="">
							<input type="hidden" id="email2" name="email2" value="">
						</div>
						<!-- 이메일 자동완성 기능 -->
						<ul class="email-auto__list"></ul>
						<!-- //이메일 자동완성 기능 -->
					</li>
				</ul>
				<div class="howtoGuide self" style="display: none;">
					<div>아이디를 확인하기 위해 회원님 명의의<br><strong>휴대폰으로 본인인증</strong>이 필요합니다.<br><em>(실명인증을 하지 않은 경우 본인인증으로 아이디 찾기 불가)</em></div>
				</div>
			</div>
			<div class="btnAction"><a href="#" onclick="IdSearchCLS.doSearch('P');return false" class="btn btnType1">개인 아이디 찾기</a></div>
		</fieldset>
		</form>
		<!-- //개인회원 아이디 찾기 -->
		
		<!-- 기업회원 아이디 찾기 -->
		<form id="frmC" class="search-form" name="frmC" method="post">
		<input type="hidden" id="usertype_C" name="usertype" value="C">
		<input type="hidden" id="enc_data_C" name="enc_data">
		<input type="hidden" id="dupinfo_C" name="dupinfo">
		<fieldset class="searchWrap biz">		
			<legend>기업회원</legend>
			<div class="searchForm">
				<ul class="howtoTab cert">
					<li class="default">
						<span class="input on"><input type="radio" id="howto_MOBILE_C" name="howto" value="MOBILE" checked="checked" onclick="IdSearchCLS.changeHowToC()"><label for="howto_MOBILE_C">휴대폰 번호</label></span>
						<span class="input"><input type="radio" id="howto_IPIN_C" name="howto" value="IPIN" onclick="IdSearchCLS.changeHowToC()"><label for="howto_IPIN_C">아이핀(i-PIN)인증</label></span>
					</li>
				</ul>
				<ul class="howtoTab biz">
					<li class="bizNo">
						<div class="colWrap">
							<input type="tel" id="comregno" class="placeholder-input" name="comregno" value="" maxlength="10">
							<label class="searchTitle" for="comregno">사업자등록번호 (- 제외 번호 입력)</label>
							<input type="hidden" id="comregno1" name="comregno1" value="">
							<input type="hidden" id="comregno2" name="comregno2" value="">
							<input type="hidden" id="comregno3" name="comregno3" value="">
						</div>
					</li>
					<li class="name">
						<div class="colWrap">
							<input type="text" id="usernm_C" class="placeholder-input" name="usernm" value="" maxlength="20">
							<label class="searchTitle" for="usernm_C">담당자명</label>
						</div>
					</li>
					<li class="mobile">
						<div class="colWrap">
							<input type="text" id="htel_C" class="placeholder-input" name="htel" value="" maxlength="11" title="휴대폰번호">
							<label class="searchTitle" for="htel_C">휴대폰번호</label>
							<input type="hidden" id="htel1_C" name="htel1" value="">
							<input type="hidden" id="htel2_C" name="htel2" value="">
							<input type="hidden" id="htel3_C" name="htel3" value="">
						</div>
					</li>
				</ul>
				<div class="howtoGuide iPin" style="display: none;">
					<div>사업자등록번호 입력 후 <strong>아이핀(I-PIN)인증</strong>으로<br>새로운 비밀번호를 설정할 수 있습니다.</div>
				</div>
			</div>
			<div class="btnAction"><a href="#" onclick="IdSearchCLS.doSearch('C');return false" class="btn biz">기업 아이디 찾기</a></div>
		</fieldset>
		</form>
		<!-- //기업회원 아이디 찾기 -->
		
	</article>
</section>
<!-- //section -->
<script>
$("#comregno, #htel_C, #htel_P").keypress(function(e) {
	_commonctrl.chkNumeric({event:e});
});
IdSearchCLS.changeHowToC();
IdSearchCLS.changeTab("P", "joininfo");

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
<hr>
<!-- Footer -->
<footer id="Footer">
	Copyright ⓒ <strong>(주)미디어윌네트웍스</strong>. All Rights Reserved.
</footer>

<!--[if lte IE 8]>
<div class="explorer-wrapper">
	<div class="explorer__filter"></div>
	<div class="explorer__info">
		<div class="explorer__content">
			<h2 class="explorer__title">Internet Explorer 이용안내</h2>
			<p class="explorer__text explorer__text--first">Internet Explorer 하위 버전을 이용중인 경우<br />회원가입 시 일부 기능이 작동하지 않아 가입이 안되는 경우가 있으니<br />최신 버전의 브라우저를 이용해주시기 바랍니다.</p>
			<p class="explorer__text">최신 버전 사용중인데 오류가 나는 경우에는<br />[도구]->[호환성 보기 설정]에서 호환성 보기에 추가한 웹사이트 목록에서<br />'alba.co.kr'를 제거 후 이용해주시기 바랍니다.</p>
		</div>
		<div class="explorer__button-box">
			<a href="#" class="explorer__button explorer__button--close" onclick="explorerLayer('');return false;">닫기</a>
			<a href="#" class="explorer__button explorer__button--today" onclick="explorerLayer('today');return false;">오늘 하루 보지 않기</a>
		</div>
	</div>
</div>
<script>
function explorerLayer(type) {
	$('.explorer-wrapper').hide();
	if (type == 'today') {
		CookieCLS.setCookie('explorer_info', '1', 1);
	}
}
(function() {
	if (CookieCLS.getCookie('explorer_info') == "1") {
		$('.explorer-wrapper').hide();
	}
})();
</script>
<![endif]-->

<input type="hidden" id="mobileyn" value="N"><!-- DO NOT DELETE //-->
<iframe id="hideFrame" name="hideFrame" src="about:blank" class="hide" title="빈 프레임"></iframe><!-- DO NOT DELETE //-->
<script>
// placeholder 적용 (플러그인)
if (!Modernizr.input.placeholder) {
	$("input, textarea").placeholder();
}
</script>

<!-- 알바 스크립트 -->

<script src="//trk.alba.co.kr/TA.js?202105261330"></script><div id="_BA"><img src="https://trk.alba.co.kr/Collect?servicetype=PCWEB&amp;logtype=VIEW&amp;cookieenabled=Y&amp;enctype=UTF-8&amp;scheme=https&amp;host=sign.alba.co.kr&amp;port=443&amp;pageurl=%2Fuser%2Ffind%2FIdSearch.asp&amp;fullurl=https%3A%2F%2Fsign.alba.co.kr%2Fuser%2Ffind%2FIdSearch.asp%3Fsite%3DWWW&amp;getdata=site%3DWWW&amp;referurl=https%3A%2F%2Fsign.alba.co.kr%2Flogin%2Flogingate.asp&amp;referparam=site%3DWWW%26gourl%3Dhttps%253A%252F%252Fwww%252Ealba%252Eco%252Ekr%252Fperson%252Fresume%252Fregist%252Easp%253Fformtype%253DNORMAL&amp;category1=%EC%95%8C%EB%B0%94%EC%B2%9C%EA%B5%AD%2C%20%EC%93%B8%EC%88%98%EB%A1%9D%20%EC%B2%9C%EA%B5%AD&amp;osversion=&amp;cid=6E2BD498E7F94A788347D1440DCB981A" width="1" height="1" style="display:none" alt=""></div>
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