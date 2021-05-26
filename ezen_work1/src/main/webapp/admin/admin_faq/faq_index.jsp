<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	height:100%;
}
#header{
	width:100%;
	height:10%;
	text-align: left;
	border: 0.5px solid #28B4B4;
	background: #28B4B4; 
	color: white
}
#container{
	width:100%;
	height:450px;
}
#nav{
	width:20%;
	height:512px;
	float:left;	
	background:#dcdcdc;		
}
#section{
	width:80%;
	height:100%;
	float:left;
}
#sub{
	text-align: center;
}
.call{		
	padding-left: 10px;
	padding-top: 10px;	
}
.h1{
	padding-left: 50px;
}
div > h1 > span{
	font-family: "Times New Roman", Times, serif;
	font-size: 45px;
}
</style>
</head>
<body>
	
	<div id="header">
		<h1 class="h1"><span>Ezen</span>일해요 FAQ</h1>
	</div>
	
	
	<div id="container">
		<div id="nav">
			<h3 id="sub">** 개인 회원 **</h3><br>
				<a href="faq_index.jsp?req=faq">회원가입·탈퇴</a><br><br>
				<a href="#">faq2</a><br><br>
				<a href="#">faq3</a><br><br>
				<a href="#">faq4</a><br><br>		
			<h3 id="sub">** 기업 회원 **</h3><br>
				<a href="#">faq5</a><br><br>	
				<a href="#">faq6</a><br><br>
				<a href="#">faq7</a><br><br>
				<a href="#">faq8</a><br><br>
			<hr>
			<img class="call" src="../image/call.JPG" alt="고객센터">	
				
		</div>
		
		<div id="section">
			<c:if test="${param.req == 'faq' }">
				<jsp:include page="faq_u1.jsp"/>
			</c:if>
		
		
		</div>				
	</div>	
</body>
</html>