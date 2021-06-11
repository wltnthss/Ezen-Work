<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" class="pc full js "><head></head>
<meta charset="utf-8">
<title>알바천국, 쓸수록 천국</title>
<script type="text/javascript">
function findId(){
	var frm = document.frmP;
	
	frm.submit();
}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="../css/loginCSS/loginFind.css?v=1">

<link rel="icon" sizes="32x32" href="/favicon.ico">
<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ecommerce.js"></script><script async="" src="//www.google-analytics.com/analytics.js"></script><script src="/rsc/js/stacktrace-with-promises-and-json-polyfills.min.js"></script>

<script src="/rsc/js/jquery-1.11.3.min.js"></script>
<script src="/rsc/js/modernizr.min.js"></script>
<script src="/rsc/js/jquery.placeholder.min.js"></script>
<script src="/rsc/js/CommonUI.js?202105261330"></script>
<script src="/rsc/js/CommonCtrl_min.js?202105261330"></script>


<script src="/rsc/js/IdSearchCLS.js?202105261330"></script>



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
	<article id="Contents" class="idSearch memberSearch">
		<h1 class="sign__title">아이디 찾기</h1>
		
		<!-- 개인회원 아이디 찾기 -->

		<fieldset class="searchWrap person">
			<legend>개인회원</legend>
			<div class="searchForm">
				<ul class="navTab">
					<li id="JoinInfoP" class="joininfo on"><a href="#" onclick="IdSearchCLS.changeTab('P', 'joininfo');return false">이메일로 찾기</a></li>
				</ul>
				<form id="frmP" class="search-form person" name="frmP" method="post" action="find_id.do">
				<ul class="howtoTab person">					
					<li class="name">
						<div class="colWrap">
							<input type="text" id="" class="placeholder-input" name="find_name" value="" maxlength="30" placeholder="이름">
						</div>
					</li>
					<li class="mobile">
						<div class="colWrap">
							<input type="text" id="" class="placeholder-input" name="find_email" value="" maxlength="30" placeholder="이메일">
						</div>
					</li>
					
				</ul>
				</form>
				<div class="howtoGuide self" style="display: none;">
					<div>아이디를 확인하기 위해 회원님 명의의<br><strong>휴대폰으로 본인인증</strong>이 필요합니다.<br><em>(실명인증을 하지 않은 경우 본인인증으로 아이디 찾기 불가)</em></div>
				</div>
			</div>
			<div class="btnAction">
				<a href="#" onclick="findId();" class="btn btnType1">개인 아이디 찾기</a>
			</div>
		</fieldset>
		
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
<hr>
<!-- Footer -->
<footer id="Footer">
	Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.
</footer>


</body></html>