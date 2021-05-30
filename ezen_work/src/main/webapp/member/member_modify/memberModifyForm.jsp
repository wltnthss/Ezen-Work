<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" class="pc js "><head>
<meta charset="utf-8">
<title>회원정보 수정(개인정보 수정) : 알바천국, 쓸수록 천국</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="../css/memberCSS/memberModify.css">

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

</head><body id="ChangePerson" class="ALBA change person" cz-shortcut-listen="true"><input type="hidden" id="device" name="device" value="">
<input type="hidden" id="version" name="version" value="">
<input type="hidden" id="siteui" name="siteui" value="ALBA">
<input type="hidden" id="sitecd" name="sitecd" value="WWW">
<input type="hidden" id="oldappyn" name="oldappyn" value="">
<input type="hidden" id="nativelogin" name="nativelogin" value="">
<script src="/rsc/js/MemberCommonCLS.js?202105261330"></script>
<script>
var _commonctrl		= new CommonCtrl("");


</script>

<script src="/rsc/js/UserInfoChangePCLS.js?202105261330"></script>
<script src="//gen.alba.co.kr/js/RoadAddrConfig.js?202105261330"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<ul class="skipNav">
	<li><a href="#Header">주요 메뉴 바로가기</a></li>
	<li><a href="#Contents">본문 바로가기</a></li>
</ul>

<header id="Header">
	<div id="HeaderGnb">
	
			<h1><a href="../member_main/index.jsp"><img src="../images/Ezen_Work.png" alt="이젠일해요"></a></h1>
	

		<ul>
			<li class="home"><a href="../member_main/index.jsp">HOME</a></li>
		
			<li class="service"><a href="../member_mypage/mypageindex.jsp">마이페이지</a></li>
		
			<li class="logout"><a href="../member_login/logout.do">로그아웃</a></li>
		
		</ul>
	</div>
</header>
<hr>
<!-- Section -->
<section id="Section" class="oldApp">

	<form id="frmReg" name="frmReg" method="post" target="hideFrame" action="">
	<input type="hidden" id="realchkyn" value="Y">
	<input type="hidden" id="usertype" name="usertype" value="P">
	<input type="hidden" id="birthdt" name="birthdt" value="19951214">
	<input type="hidden" id="nicknm" name="nicknm" value="">
	<input type="hidden" id="htelhash" name="htelhash" value="44a631f1c8ccbdf5808ddd6182e4e85d4b848234dd36180946469d50b366ad20">
	<input type="hidden" id="htelcertyn" name="htelcertyn" value="Y">
	<input type="hidden" id="email_old" name="email_old" value="sonji1214@naver.com">
	<input type="hidden" id="orguserid" name="orguserid" value="sonji1214">
	<input type="hidden" id="gourl" name="gourl" value="">

	<article id="Contents" class="changePerson memberChange">
		<h1 class="sign__title">회원정보 수정</h1>
		

		<ul class="selectTab">
			<li id="TabInfoChange" class="on"><a href="https://sign.alba.co.kr/user/change/UserInfoChange.asp"><span>개인정보<em>수정</em></span></a></li>
			
			<li id="TabPwdChange"><a href="https://sign.alba.co.kr/user/change/PwdChange.asp"><span>비밀번호<em>변경</em></span></a></li>
			
			<li id="TabBreakAway"><a href="https://sign.alba.co.kr/user/change/BreakAway.asp"><span>회원탈퇴<em>신청</em></span></a></li>
		</ul>

		<fieldset class="userInfo">
			<legend class="hide">개인정보</legend>
			<ul class="inputForm margin first">
			
				<li class="id fix">
					<p class="user-info__fix-wrap">
						<span class="user-info-fix user-info-fix--title">아이디</span>
						<span class="user-info-fix user-info-fix--text">sonji1214</span>
					</p>
					<input type="hidden" id="userid" name="userid" value="sonji1214">
				</li>
				<li class="passwd">
					<label for="passwd" class="chain-label">비밀번호</label>
					<div class="sign__input-frame">
						<input type="password" id="passwd" name="passwd" placeholder="현재 비밀번호 입력" value="" maxlength="20">
					</div>
					<span id="msg_passwd" class="msg"></span>
				</li>
			
			</ul>
			<ul class="inputForm margin second">
				<li class="name">
					<label class="chain-label" for="usernm">이름</label>
					
						<div class="sign__input-frame">
							<p class="sign__input-text">손지수</p>
							<input type="hidden" id="usernm" class="chain-input" name="usernm" value="손지수">
							<div class="action"><span class="cert"><span></span>인증완료</span></div>
						</div>
						<div class="sign__line-feed">
						
							<button type="button" class="frame-function-btn frame-function-btn--feed" onclick="MemberCommonCLS.viewChangeUserNm();">개명신청</button>
							<p class="sign__line-feed-text">이름이 변경되셨나요?</p>
						
						</div>
						<div id="LayerChangeName" class="formLayer changeNameLayer">
							<div class="filter"></div>
							<div class="layer"></div>
						</div>
					
				</li>
				
				<li class="email">
					<label for="email" class="chain-label">이메일</label>
					<div class="sign__input-frame">
						<input type="email" id="email" class="chain-input" name="email" value="sonji1214@naver.com" placeholder="이메일 (email@alba.com)" maxlength="50" autocomplete="off">
						<button type="button" id="btnEmailChange" class="frame-function-btn">이메일변경</button>
						<button type="button" id="btnEmailCert" style="display:none" class="frame-function-btn" onclick="setTimeout(function(e){MemberCommonCLS.certEmail();},300);">인증메일 전송</button>
					</div>
					<span id="msg_email" class="memo"></span>
					<!-- 이메일 자동완성 기능 -->
					<ul class="email-auto__list"></ul>
					<!-- //이메일 자동완성 기능 -->
				</li>
				<li id="EmailCertNumInput" style="display:none">
					<label for="emailcertnum" class="chain-label">인증번호</label>
					<div class="sign__input-frame">
						<input type="hidden" id="emailcertyn" value="Y">
						<input type="hidden" id="emailcertencnum" value="">
						<input type="tel" id="emailcertnum" value="" placeholder="인증번호 입력" maxlength="6">
						<button type="button" class="frame-function-btn" onclick="MemberCommonCLS.doSubmitEmailCertNum();return false;">확인</button>
					</div>
					<p class="memo" id="CertGbnFailureContent" style="display:none">
						<em>인증번호가 틀렸습니다. 다시 입력해 주세요.</em>
					</p>
					<p class="memo" id="CertGbnEmptyContent" style="display:none">
						<em>인증번호를 입력해 주세요.</em>
					</p>
				</li>
				<li class="tel mobile">
					<label for="htel" class="chain-label">휴대폰</label>
					<div class="sign__input-frame">
						<input type="tel" id="htel" class="chain-input" name="htel" value="01063061756" placeholder="- 제외 번호 입력" maxlength="11">
						<input type="hidden" id="htel1" name="htel1" value="010">
						<input type="hidden" id="htel2" name="htel2" value="6306">
						<input type="hidden" id="htel3" name="htel3" value="1756">

						
						<div class="action"><span id="htelcertYES" class="cert certYes">인증완료</span></div>
						
						<button type="button" class="frame-function-btn certBtn" style="display:none" onclick="MemberCommonCLS.certMobile('sonji1214', 'P');">인증번호전송</button>
					</div>
					<span id="msg_htel" class="msg"></span>
					<div class="sign__sub-contents">
						<span class="input">
							<input type="checkbox" id="nohtel" name="nohtel" value="1" onclick="MemberCommonCLS.checkOpenResumeTelOrHtel('sonji1214', 'htel');">
							<label for="nohtel">휴대폰없음</label>
						</span>
					</div>

					<input type="hidden" id="openhtel" value="">
					

					<!-- <div id="MobileCertNumInput" class="subContents">
						<input type="text" id="mobilecertnum" value="" placeholder="인증번호" maxlength="6" />
						<div class="action"><a href="#" class="btn btnType3" onclick="MemberCommonCLS.doSubmitCertNum('member');return false;">확인</a></div>
					</div> -->
				</li>
				<li id="MobileCertNumInput" class="cert">
					<label for="mobilecertnum" class="chain-label">인증번호</label>
					<div class="sign__input-frame">
						<input type="tel" id="mobilecertnum" value="" placeholder="인증번호" maxlength="6">
						<button type="button" class="frame-function-btn" onclick="MemberCommonCLS.doSubmitCertNum('member');">확인</button>
					</div>
				</li>
				<li class="tel">
					<span class="user-info-fix user-info-fix--title">연락처</span>
					<div class="sign__input-frame">
						<div class="sign__select-wrap">
							<input type="hidden" id="telexcept" name="telexcept" value="1522,1544,1566,1577,1588,1599,1600,1644,1661,1666,1670,1688,1800,1811,1833,1855,1877">
							<select id="tel1" class="chain-select" name="tel1" disabled="disabled">
								<option value="">선택</option>
								<option value="02">02 (서울)</option>
<option value="031">031 (경기)</option>
<option value="032">032 (인천)</option>
<option value="033">033 (강원)</option>
<option value="041">041 (충남)</option>
<option value="042">042 (대전)</option>
<option value="043">043 (충북)</option>
<option value="044">044 (세종)</option>
<option value="051">051 (부산)</option>
<option value="052">052 (울산)</option>
<option value="053">053 (대구)</option>
<option value="054">054 (경북)</option>
<option value="055">055 (경남)</option>
<option value="061">061 (전남)</option>
<option value="062">062 (광주)</option>
<option value="063">063 (전북)</option>
<option value="064">064 (제주)</option>
<option value="070">070</option>
<option value="080">080</option>
<option value="0502">0502</option>
<option value="0503">0503</option>
<option value="0504">0504</option>
<option value="0505">0505</option>
<option value="0506">0506</option>
<option value="0507">0507</option>
<option value="0508">0508</option>
<option value="0303">0303</option>
<option value="013">013</option>
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>

								<option value=" ">지역번호 없음</option>
							</select>
						</div>
						<input type="tel" id="tel2_3" class="select-chian-input" name="tel2_3" maxlength="8" placeholder="- 제외 번호 입력" value="" disabled="disabled">
						<input type="hidden" id="tel2" name="tel2" value="">
						<input type="hidden" id="tel3" name="tel3" value="">
					</div>
					<span id="msg_tel" class="msg"></span>
					<div class="sign__sub-contents">
						<span class="input on">
							<input type="checkbox" id="notel" name="notel" value="1" onclick="MemberCommonCLS.checkOpenResumeTelOrHtel('sonji1214', 'tel');" checked="">
							<label for="notel" class="notel">연락처없음</label>
						</span>
					</div>
					<input type="hidden" id="opentel" value="">
					
					<script>
					$("#tel1").attr("disabled", true);
					$("#tel2_3").attr("disabled", true);
					</script>
					
				</li>
				<li class="srchaddr">
					<label for="addr1" class="chain-label">주소</label>
					<div class="sign__input-frame">
						<input type="text" id="zipcd" class="chain-input" name="zipcd" value="138-813" maxlength="7" readonly="readonly" onblur="MemberCommonCLS.checkZipCd()" placeholder="우편번호">
						<button type="button" id="addrSearch" class="frame-function-btn">주소찾기</button>
					</div>
					<span id="msg_zipcd" class="msg"></span>

					<div class="sign__line-feed">
						<input type="text" id="addr1" name="addr1" value="서울 송파구 거여1동" placeholder="주소" readonly="readonly">
						<span id="msg_addr1" class="msg"></span>
					</div>
					<div class="sign__line-feed">
						<input type="text" id="addr2" name="addr2" value="18번지 명산주택 402호" placeholder="상세주소" maxlength="50">
						<span id="msg_addr2" class="msg"></span>
					</div>
					<div id="addrResult" class="formLayer">
						<div class="filter"></div>
						<div class="layer over" id="addrResultLayer"><a href="#addrResult" class="closeBtn">닫기</a></div>
					</div>
				</li>
			</ul>
		</fieldset>
		<fieldset class="agreementCk">
			<legend class="hide">정보 수신설정</legend>
			<ul class="inputForm end">
				<li class="emailSetup">
					<label for="sectioncd_A" class="sign-option-label"><em>뉴스레터</em></label>
					<div class="sign__option-wrap">
						<span class="input on">
							<input type="checkbox" id="sectioncd_A" name="sectioncd" value="A" checked="checked"> <label for="sectioncd_A">뉴스 (맞춤 알바 포함)</label>
						</span>
						<span class="input on">
							<input type="checkbox" id="sectioncd_B" name="sectioncd" value="B" checked="checked"> <label for="sectioncd_B">이벤트, 소식</label>
						</span>
						<span class="input on">
							<input type="checkbox" id="sectioncd_I" name="sectioncd" value="I" checked="checked"> <label for="sectioncd_I">설문</label>
						</span>
						
						<span class="input on">
							<input type="checkbox" id="sectioncd_C" name="sectioncd" value="C" checked="checked"> <label for="sectioncd_C">광고</label>
						</span>
					</div>
				</li>
				<li class="sms">
					<label for="sectioncd_E" class="sign-option-label">SMS/MMS</label>
					<div class="sign__option-wrap">
						<span class="input on">
							<input type="checkbox" id="sectioncd_E" name="sectioncd" value="E" checked="checked"> <label for="sectioncd_E">이벤트, 소식 등</label>
						</span>
					</div>
				</li>

				
				<li class="customSetup">
					<label for="sectioncd_F" class="sign-option-label">맞춤정보</label>
					<div class="sign__option-wrap">
						<span class="input">
							<input type="checkbox" id="sectioncd_F" name="sectioncd" value="F"> <label for="sectioncd_F">이력서 열람 알림</label>
						</span>
						<span class="input">
							<input type="checkbox" id="sectioncd_H" name="sectioncd" value="H"> <label for="sectioncd_H">입사지원 요청 알림</label>
						</span>
					</div>
					<!--span class="input sectioncd_G">
						<input type="checkbox" id="sectioncd_G" name="sectioncd" value="G" /> <label for="sectioncd_G">맞춤 알바 알림</label>
						<div class="guideBox">
							<em>맞춤알바</em>에서<br/>설정한 맞춤정보를<br/>이메일로 수신합니다.<span class="arrow"></span>
							<a href="#" class="close" onclick="$('.guideBox').hide();return false;">닫기</a>
						</div>
					</span-->

				</li>
				
			</ul>
			
			<script>
			$('#sectioncd_A').attr('checked', true);$('#sectioncd_B').attr('checked', true);$('#sectioncd_I').attr('checked', true);$('#sectioncd_C').attr('checked', true);$('#sectioncd_E').attr('checked', true);$('#sectioncd_F').attr('checked', false);$('#sectioncd_H').attr('checked', false);
			</script>
		</fieldset>

		<!-- 개인정보 유효기간 선택 -->
		<fieldset class="userInfo userInfo--expire">
			<legend class="hide">개인정보 유효기간 선택</legend>
			<section class="join__userinfo sign-expire">
				<h1 class="join__title join__title--show sign-expire__title">개인정보 유효기간 선택 <a href="#SignExpire" onclick="$('#SignExpireLayer').show();return false;">?</a></h1>
				<div id="SignExpireLayer" class="sign-expire__layer">
					<dl class="sign-expire__layer-guide">
						<dt>개인정보 유효기간</dt>
						<dd>선택하신 기간 동안 로그인하지 않을 경우<br> 개인정보를 별도로 분리 저장하게 됩니다.</dd>
					</dl>
					<a href="#SignExpireLayer" class="sign-expire__layer-close" onclick="$('#SignExpireLayer').hide();return false;">개인정보 유효기간 안내 닫기</a>
				</div>
				<ul class="join__info-list sign-expire__list">
					<li class="join__info-item">
						<span class="input on">
							<input type="radio" id="expireduration_1" name="expireduration" value="1" checked="">
							<label for="expireduration_1">1년</label>
						</span>
						<span class="input">
							<input type="radio" id="expireduration_3" name="expireduration" value="3">
							<label for="expireduration_3">3년</label>
						</span>
						<span class="input">
							<input type="radio" id="expireduration_99" name="expireduration" value="99">
							<label for="expireduration_99">회원탈퇴시</label>
							<span class="sign-expire__toast-arrow"></span>
						</span>
						<span id="SignExpireToast" class="sign-expire__toast">
							장기 비로그인 시에도 <strong>계정 활성 상태 유지</strong>
							<a href="#SignExpireToast" class="sign-expire__toast-close" onclick="$('#SignExpireToast, .sign-expire__toast-arrow').hide();return false;">안내 닫기</a>
						</span>
					</li>
				</ul>
			</section>
		</fieldset>
		<!-- //개인정보 유효기간 선택 -->

		<div class="btnAction bottom">
			<a href="#" class="btn btnType1 submit" onclick="UserInfoChangePCLS.doSubmit(); return false;"><span></span>수정완료</a>
		</div>
	</article>
	</form>
</section>
<!-- //section -->
<div class="loadingFilter" style="display:none">
	<div class="filter"></div>
	<img src="/images/common/loading.gif" alt="loading">
</div>

<div class="change-name-wrapper" style="display:none">
	<div class="change-name-filter"></div>
	<div class="change-name-layer">
		<iframe id="snsfrm" name="snsfrm" style="width:100%;height:100%;border:0 none;"></iframe>
	</div>
</div>
<hr>
<script>
window.onload = function() {
	//SNS 회원명 수정 레이어
	var form = "";
	if (form.indexOf("usernm") > -1) {
		snsfrm.location.href = "/user/change/UserInfoChangeS.asp?gourl=";
		$(".change-name-wrapper").show();
	} else {
		$(".change-name-wrapper").hide();
	}
}

valid_email = true;
// 입력값체크
// 아이디
$("#userid").bind({
	keyup : function() {$("#userid").val($("#userid").val().toLowerCase());},
	change : function() {valid_userid = false;},
	blur : function() {
		if ($.trim($("#userid").val()) != "") {
			MemberCommonCLS.idcheck();
		} else {
			valid_userid = true;
			$("#msg_userid").empty().removeClass("show");
			$("#passwd").val("");
			UserInfoChangePCLS.checkPassWdNew();
		}
	},
	keypress : function(e) {if (e.keyCode == 13) $(this).blur();}
});
// 비밀번호
$("#passwd, #passwd2").focusout(function() {
	if ($.trim($("#orguserid").val()).substr(0, 2) == "s_") {
		UserInfoChangePCLS.checkPassWdNew();
	} else {
		UserInfoChangePCLS.checkPassWd();
	}
});
// 성명
$("#usernm").focusout(function() {
	if ($("#realchkyn").val() != "Y" && $("#siteui").val() != "BAR24") {
		UserInfoChangePCLS.checkUsernm();
	}
});
// 성별
$("input[name='gender']").click(function() {UserInfoChangePCLS.checkGender()});
// 생년월일선택
$("#birthyear, #birthmonth, #birthday, #birthdate").bind("focusout change blur", function() {
	UserInfoChangePCLS.checkBirthDay();
});
//휴대폰인증
var old_htelcertyn = "Y";
var old_htel = "01063061756";
var click_cert = false;
$(".certBtn")
	.mouseenter(function() {click_cert = true;})
	.mouseleave(function() {click_cert = false;});
$("#htel1, #htel2, #htel3, #htel").on("propertychange change keyup paste input", function() {
	UserInfoChangePCLS.checkHtel();
	var change_htel = $("#htel").val();
	if (old_htel != change_htel) {
		MemberCommonCLS.resetCert();
	}
	if (old_htel == change_htel) {
		MemberCommonCLS.initCert();
	}
}).on("focusout", function() {
	if(!click_cert){
		UserInfoChangePCLS.checkHtel();
		var change_htel = $("#htel").val();

		if (old_htelcertyn == "Y" && old_htel != change_htel && change_htel != "" && $("#htelcertyn").val() == "N") {
			alert("이미 인증받은 휴대폰번호를 바꾸실 경우, 재인증을 받으셔야 합니다.");
		}
	}
});
// 연락처
$("#tel1, #tel2, #tel3, #tel2_3").focusout(function() {UserInfoChangePCLS.checkTel();});
$("#notel").click(function() {UserInfoChangePCLS.checkTel();});
// 이메일
$("#email").focusout(function(e) {
	if (email_focus) {
		if (!valid_email) {
			if ($.trim($("#email").val()) == "") {
				$("#msg_email").html(strMsgEMAIL);
				return false;
			}
			MemberCommonCLS.setEmail($("#email").val());
			MemberCommonCLS.emailcheck();
		}
	}
});
$("#email").bind({
	change : function() {
		valid_email = false;
		$("#btnEmailCert").show();
		$("#btnEmailChange").hide();
	},
	focus : function() {
		if (valid_email && $("#emailcertyn").val() == "Y") {
			if (confirm("이메일을 변경하시겠습니까?")) {
				valid_email = false;
				$("#emailcertyn").val("N");
				$("#btnEmailCert").show();
				$("#btnEmailChange").hide();
				$("#email").val("");
			} else {
				$("#email").val($.trim($("#email").val()));
				$("#email").blur();
				return false;
			}
		}
	},
	keypress : function(e) {
		if (e.keyCode == 13) $(this).blur();
	}
});
$("#email").keyup(function() {
	$("#msg_email").empty().removeClass("show");
	MemberCommonCLS.selectEmail();
});
$("#btnEmailChange").click(function(e) {
	e.preventDefault();
	if (valid_email) {
		if (!confirm("이메일을 변경하시겠습니까?")) {
			$("#email").blur();
			return false;
		}
	}
	valid_email = false;
	$("#emailcertyn").val("N");
	$("#btnEmailCert").show();
	$("#btnEmailChange").hide();
	$("#email").val("");
});
$("#addrSearch").click(function(e) {
	e.preventDefault();
	MemberCommonCLS.srchAddr();
});
$("#zipcd, #addr1, #addr2").bind("click, focusin", function(e) {
	e.preventDefault();
	if (!blnAddrPopup) {
		MemberCommonCLS.srchAddr();
	}
});
$("#htel2, #htel3, #htel, #tel2, #tel3, #tel2_3, #mobilecertnum, #emailcertnum").keypress(function(e) {
	_commonctrl.chkNumeric({event:e});
});
$("#zipcd").keyup(function() {
	var num = $(this).val();
	var regex = /[^-0-9]|[^0-9-]/gi;
	if (regex.test(num)){
		alert("숫자와 하이픈[-]만 입력 가능합니다.");
	}
	num = num.replace(regex, "");
	$(this).val(num);
});

// 맞춤알바 가이드 레이어
$(".customSetup .input.sectioncd_G").mouseover(function(){
	$(".customSetup .sectioncd_G .guideBox").show();
}).mouseout(function(){
	$(".customSetup .sectioncd_G .guideBox").hide();
});

if (location.hash == "#sectioncd_G") {
	$(".customSetup .sectioncd_G .guideBox").show();
}

// ad tracking
$("input[name='sectioncd']").click(function(e) {
	var action = "";
	var value = $(this).val();
	var data = "";

	if($(this).is(":checked")) data = "on";
	else data = "off";

	switch(value) {
		case "A" : action = "privacy_news"; break;		//뉴스레터 - 뉴스
		case "B" : action = "privacy_event"; break;		//뉴스레터 - 이벤트
		case "I" : action = "privacy_research"; break;	//뉴스레터 - 설문
		case "C" : action = "privacy_ad"; break;		//뉴스레터 - 광고
		case "E" : action = "privacy_sms"; break;		//SMS - 이벤트
		case "F" : action = "privacy_profile"; break;	//맞춤정보 - 이력서열람
		case "H" : action = "privacy_apply"; break;		//맞춤정보 - 입사지원요청
	}

	MemberCommonCLS.goAppboySetCustomLink({"action":action, "data":data});
});
</script>
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

<script src="//trk.alba.co.kr/TA.js?202105261330"></script><div id="_BA"><img src="https://trk.alba.co.kr/Collect?servicetype=PCWEB&amp;logtype=VIEW&amp;cookieenabled=Y&amp;enctype=UTF-8&amp;scheme=https&amp;host=sign.alba.co.kr&amp;port=443&amp;pageurl=%2Fuser%2Fchange%2FUserInfoChange.asp&amp;fullurl=https%3A%2F%2Fsign.alba.co.kr%2Fuser%2Fchange%2FUserInfoChange.asp&amp;getdata=&amp;referurl=https%3A%2F%2Fsign.alba.co.kr%2Fuser%2Fchange%2FPwdChange.asp&amp;category1=%ED%9A%8C%EC%9B%90%EC%A0%95%EB%B3%B4%20%EC%88%98%EC%A0%95(%EA%B0%9C%EC%9D%B8%EC%A0%95%EB%B3%B4%20%EC%88%98%EC%A0%95)%20%3A%20%EC%95%8C%EB%B0%94%EC%B2%9C%EA%B5%AD%2C%20%EC%93%B8%EC%88%98%EB%A1%9D%20%EC%B2%9C%EA%B5%AD&amp;osversion=&amp;cid=B4172419275E4AB8A426BFB58B021846" width="1" height="1" style="display:none" alt=""></div>
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