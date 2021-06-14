<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko" class="pc full">
<head>
<meta charset="utf-8">
<title>아이디 찾기</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no" />

<link rel="stylesheet" href="../css/20210506/Sign.css" />

<link rel="icon" sizes="32x32" href="/favicon.ico" />
<script src="/rsc/js/stacktrace-with-promises-and-json-polyfills.min.js"></script>

<script src="/rsc/js/jquery-1.11.3.min.js"></script>
<script src="/rsc/js/modernizr.min.js"></script>
<script src="/rsc/js/jquery.placeholder.min.js"></script>
<script src="/rsc/js/CommonUI.js?202105261330"></script>
<script src="/rsc/js/CommonCtrl_min.js?202105261330"></script>
<script src="/rsc/js/MemberCommonCLS.js?202105261330"></script>

</head>

<body id="IdSearchResult" class="ALBA find person">
<ul class="skipNav">
	<li><a href="#Header">주요 메뉴 바로가기</a></li>
	<li><a href="#Contents">본문 바로가기</a></li>
</ul>

<header id="Header">
	<div id="HeaderGnb">	
			<h1><a href="../main/index.do"><img src="../img/Ezen_Work.png" alt="이젠일해요" /></a></h1>
		<ul>
			<li class="home"><a href="../main/index.do">HOME</a></li>		
			<li class="login"><a href="loginForm.jsp">로그인</a></li>		
		</ul>
	</div>
</header>
<hr />
<!-- Section -->
<section id="Section" class='oldApp'>
	<article id="Contents" class="idSearchResult memberSearch">		
		<h1 class="sign__title">아이디 찾기</h1>
		<div class="resultInfo">			
					<div class="resultWrap">						
						<div class="guideTxt">회원님의 아이디는 <strong>${id }</strong>입니다.</div>						
					</div>				
					<div class="btnAction"> 						
							<a class="btn btnType1" href="loginForm.jsp">로그인</a>											
					</div>			
		</div>
	</article>
</section>
<footer id="Footer">
	Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.
</footer>
<input type="hidden" id="mobileyn" value="N" /><!-- DO NOT DELETE //-->
<iframe id="hideFrame" name="hideFrame" src="about:blank" class="hide" title="빈 프레임"></iframe><!-- DO NOT DELETE //-->

</body>
</html>