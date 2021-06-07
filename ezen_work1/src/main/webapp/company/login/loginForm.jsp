<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../css/login.css" type="text/css">
<script type="text/javascript" src="../../script/companyScript.js"></script>
</head>
<body class="ALBA">
	<div id="Header">
		<div id="HeaderGnb">
			<h1 style="top:11px">
				<a href="../main/index.jsp">
					<img src="../image/Ezen_Work.png" alt="이젠일해요">
				</a>
			</h1>
			<ul>	
				<li class="login"><a href="../login/loginForm.jsp">로그인</a></li>
				<li class="home"><a href="../main/index.jsp">HOME</a></li>
			</ul>
		</div>
	</div>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td class="layout">
				<div class="loginCombine">
					<form id="f" name="f" method="post" action="login.do">
						<div class="loginArea">
							<fieldset class="login">
								<legend>로그인</legend>
								<div class="loginInput">
									<dl>
										<dt><label for="userid">아이디</label></dt>
										<dd><input type="text" id="userid" name="id" value="" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="0px 11px no-repeat;" tabindex="1"></dd>
										<dt><label for="passwd">패스워드</label></dt>
										<dd class="inputPw"><input type="password" id="passwd" name="pw" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="no-repeat 0 11px" tabindex="2"></dd>
									</dl>
									<input id="btnLogin" type="image" src="../image/btn_login.png" class="btnLogin" alt="로그인" tabindex="3">
								</div>
								<p class="loginBtn">
									<a href="../regist/memberWriteMainForm.jsp" class="btn"><strong>회원가입</strong></a>
									<a href="" class="btn"><span>아이디 찾기</span></a>
									<a href="" class="btn"><span>비밀번호 찾기</span></a>
								</p>
							</fieldset>
						</div>
					</form>
				</div>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>
