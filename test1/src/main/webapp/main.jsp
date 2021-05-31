<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전보벌레</title>
<style type="text/css">
html, body{
	margin: 0; padding: 0;
	width: 100%; height: 100%; 
}
#header {
	height: 10px;
}
.gnb{
	height : 30px;
    border-bottom: 1px solid #eaeaea;
    background: #adff2f;
    padding-top : 10px;
}
.gnb .nav{
	text-align: right;
	padding-right: 50px;
}
.logoArea {
    padding-top : 30px;
    height: 120px;
    width : 15%;
    float: left;
    margin: 0px 0;
    overflow: hidden;
    display: table;
    position: relative;
}
.logoArea .logo{
    display: table-cell;
    vertical-align: middle;
    text-align: left;
    
}


</style>
</head>

<body>
<div id ="header">
	<div class = "gnb">
		<div class="nav">
		<a href="#">로그인</a>
		<a href="#">회원가입</a>
		<a href="#">이벤트</a>
		<a href="#">게시판</a>
		</div>
	</div>

	<div class = "logoArea">
		<div class="logo">
			<a href="#">
				<img src="image/flag.jpg" alt="logo" class=west>
			</a>
		</div>
	</div>
</div>
	


</body>
</html>