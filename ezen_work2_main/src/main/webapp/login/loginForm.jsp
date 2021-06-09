<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="referrer" content="always">

<title>로그인 화면</title>
<link rel="stylesheet" href="../css/loginCSS/login.css" type="text/css">

<!-- GNB(s) -->

<div id="Header">
	<div id="HeaderGnb">
		<h1 style="top:11px"><a href="../main/index.do"><img src="../img/Ezen_Work.png" alt="이젠일해요"></a></h1>
		<ul>	
			<li class="login"><a href="../login/loginForm.jsp">로그인</a></li>
			<li class="home"><a href="../main/index.do">HOME</a></li>
		</ul>
	</div>
</div>

<!-- GNB(e) -->

<
<!--script src="//apis.google.com/js/platform.js?onload=googleInit" async defer></script-->

<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tbody><tr>
		<td class="layout">
			<div class="loginCombine">
				<form id="f" name="loginForm" method="post" action="login.do" >
				<input type="hidden" id="site" name="site" value="WWW">
				<input type="hidden" id="gourl" name="gourl" value="http://www.alba.co.kr/">
					

					<div class="loginArea">
						<div class="loginAction">
							<p class="checkArea">
								
								<span><input type="radio" id="keep" name="login" class="typeCheckbox" value="0" checked="checked"><label for="keep">회원 로그인</label>
								<span><input type="radio" id="keep" name="login" class="typeCheckbox" value="1"><label for="keep">회사 로그인</label> 
							</p>							
						</div>
						<fieldset class="login">
							<legend>로그인</legend>
							<div class="loginInput">
								<dl>
									<dt><label for="userid">아이디</label></dt>
									<dd><input type="text" id="userid" name="id" value="" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="0px 11px no-repeat;" tabindex="1" placeholder="아이디를 입력해주세요"></dd>
									<dt><label for="passwd">패스워드</label></dt>
									<dd class="inputPw"><input type="password" id="passwd" name="pwd" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="no-repeat 0 11px" tabindex="2" placeholder="비밀번호를 입력해주세요"></dd>
								</dl>
								<input id="btnLogin" type="image" src="../img/btn_login.png" class="btnLogin" alt="로그인" tabindex="3" onclick="checkLogin(); return false;">
							</div>
							<p class="loginBtn">
								<a href="../member/member_registration/registrationMainForm.jsp" class="btn"><strong>회원가입</strong></a>
								<a href="loginIdFind.jsp" class="btn"><span>아이디 찾기</span></a>
								<a href="loginPwdFind.jsp" class="btn"><span>비밀번호 찾기</span></a>
							</p>
						</fieldset>			
					</div>
				</form>
			</div>
		</td>
	</tr>
</tbody></table>

	<div id="Footer">	
		<address>Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.</address>
	</div>
<!-- 알바 스크립트 -->

<!-- //알바 스크립트 -->


<iframe id="hiddenFrame" name="hiddenFrame" style="display:none" width="500" height="200" src="about:blank" title="빈 프레임"></iframe>
</body></html>