<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<html lang="ko" class="pc js "><head>
<meta charset="utf-8">
<title>회원정보 수정</title>
<script type="text/javascript" src="../../script/memberScript.js?v=7"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="../../css/memberCSS/memberModify.css">
<link rel="icon" sizes="32x32" href="/favicon.ico">

</head><body id="ChangePerson" class="ALBA change person" cz-shortcut-listen="true"><input type="hidden" id="device" name="device" value="">

<header id="Header">
	<div id="HeaderGnb">
	
			<h1><a href="../../main/index.do"><img src="../images/Ezen_Work.png" alt="이젠일해요"></a></h1>
	

		<ul>
			<li class="home"><a href="../../main/index.do">HOME</a></li>
		
			<li class="service"><a href="../member_mypage/mypageindex.do">마이페이지</a></li>
		
			<li class="logout"><a href="../../login/logout.do">로그아웃</a></li>
		
		</ul>
	</div>
</header>
<hr>
<!-- Section -->
<section id="Section" class="oldApp">
	<form id="frmReg" name="modifyForm" method="post" action="modify.do">
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
						<input class="user-info-fix user-info-fix--title" type="password" id="passwd" name="passwd" value="${dto.pwd }" maxlength="20" readonly="readonly">
					</div>
					<span id="msg_passwd" class="msg"></span>
				</li>
				<li class="passwd">
					<label for="passwd" class="chain-label">새 비밀번호</label>
					<div class="sign__input-frame">
						<input type="password" id="passwd" name="pwd" placeholder="새 비밀번호 입력" value="" maxlength="20">
					</div>
					<span id="msg_passwd" class="msg"></span>
				</li>
				<li class="passwd">
					<label for="passwd" class="chain-label">재확인</label>
					<div class="sign__input-frame">
						<input type="password" id="passwd" name="repwd" placeholder="새 비밀번호 재확인" value="" maxlength="20">
					</div>
					<span id="msg_passwd" class="msg"></span>
				</li>
			
			</ul>
			<ul class="inputForm margin second">
				<li class="name">
					<label class="chain-label" for="usernm">이름</label>					
					<div class="sign__input-frame">
							<input type="text" id="name" class="chain-input" name="name" value="${dto.name }" maxlength="50" autocomplete="off">
					</div>					
				</li>
				
				<li class="join__info-item">
						<label class="chain-label" for="male">성별<span class="sub-message">(선택)</span></label>
						<div class="sign__input-frame">
							<span class="input input--radio" id="autoMale">
								<input type="radio" id="male" name="gender" value="남자" checked="checked">
								<label class="radio-label" for="male">남자</label>
							</span>
							<span class="input input--radio">
								<input type="radio" id="female" name="gender" value="여자">
								<label class="radio-label" for="female">여자</label>
							</span>
						</div>
				</li>
				
				<li class="email">
					<label for="email" class="chain-label">이메일</label>
					<div class="sign__input-frame">
						<input type="text" id="email" class="chain-input" name="email" value="${dto.email }" maxlength="50" autocomplete="off">
					</div>
				</li>
				<li class="tel mobile">
					<label for="htel" class="chain-label">휴대폰</label>
					<div class="sign__input-frame">
						<input type="text" id="htel" class="chain-input" name="tel" value="${dto.tel }" maxlength="11">
					</div>
				</li>
				<li class="srchaddr">
					<label for="addr1" class="chain-label">주소</label>
					<div class="sign__line-feed">
						<input type="text" id="addr1" name="addr" value="${dto.addr }">
					</div>
				</li>
			</ul>
		</fieldset>
		<div class="btnAction bottom">
			<button type="submit" class="btn btnType1 submit" onclick="checkModify(); return false;">수정완료</button>
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
<!-- //Footer -->

</body></html>