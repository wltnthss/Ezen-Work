<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" class="pc full js "><head></head>
<meta charset="utf-8">
<title>아이디 찾기</title>
<script type="text/javascript">
function findId(){
	var frm = document.frmP;
	
	frm.submit();
}
function findId1(){
	var frm1 = document.frmP1;
	
	frm1.submit();
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
		<fieldset class="searchWrap biz">		
			<legend>기업회원</legend>
			<div class="searchForm">
				<ul class="navTab">
					<li id="JoinInfoP" class="joininfo on"><a href="#" onclick="IdSearchCLS.changeTab('P', 'joininfo');return false">이메일로 찾기</a></li>
				</ul>
				<form id="frmP1" class="search-form person" name="frmP1" method="post" action="find_id1.do">
				<ul class="howtoTab person">					
					<li class="name">
						<div class="colWrap">
							<input type="text" id="" class="placeholder-input" name="find_cname" value="" maxlength="30" placeholder="회사명">
						</div>
					</li>
					<li class="mobile">
						<div class="colWrap">
							<input type="text" id="" class="placeholder-input" name="find_email" value="" maxlength="30" placeholder="이메일">
						</div>
					</li>
					
				</ul>
				</form>
			</div>
			<div class="btnAction">
				<a href="#" onclick="findId1();" class="btn biz">기업 아이디 찾기</a>
			</div>
		</fieldset>
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