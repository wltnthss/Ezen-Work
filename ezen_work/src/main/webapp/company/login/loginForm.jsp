<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="../../script/companyScript.js"></script>
</head>
<body>
	<form action="login.do" method="post" name="loginForm">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="로그인" onclick="checkLogin()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
