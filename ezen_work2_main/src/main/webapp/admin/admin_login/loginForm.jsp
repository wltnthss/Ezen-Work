<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>관리자 로그인</title>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}
td{
	text-align: center;
}
#back1{
	background-image: url(../../img/back5.png);
	background-repeat:no-repeat;
	background-position: center center;
	margin: auto;
	width: 1000px;
	height: 700px;	
	padding-top: 300px;
}
</style>
<script type="text/javascript" src="../../script/adminScript.js"></script>
</head>
<body>	
	<form action="login.do" method="post" name="loginForm">
		<div id="back1">
			<table class="table table-striped" style="width: 400px; margin: auto; opacity: 0.8; ">
				<tr>
					<td width="80px;" style="font-weight: bold;">아이디</td>
					<td width="250px;"><input type="text" name="id"></td>
				</tr>
				<tr>
					<td style="font-weight: bold;">비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="left" style="padding-left: 220px;">
						<input type="button" value="로그인" onclick="checkLogin(); return false;">
					</td>
				</tr>
			</table>	
		</div>	
	</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>	
</body>
</html>