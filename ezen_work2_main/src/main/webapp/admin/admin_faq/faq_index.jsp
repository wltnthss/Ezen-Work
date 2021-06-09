<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F.A.Q</title>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	height:100%;
}
#header{
	width:1200px;
	height:10%;	
	padding-left:20px;
	border: 0.5px solid black;
	background: white; 	
}
#container{
	width:1200px;
	height:450px;
}
#nav{
	width:250px;
	height:512px;
	float:left;	
	background:#F9FFFF;		
}
#section{
	width:850px;
	height:100%;
	float:left;
}
#sub{
	text-align: center;
	text-decoration: underline;
	font-weight: bold;
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
a:visited { color: black; font-weight: bold;}
a:hover { color: black; font-weight: bold;}
a{
	text-decoration: none;
	padding-left: 10px;	
}
.frog{
	padding-left: 200px;
	padding-top: 40px;
	opacity: 0.1
}

</style>
</head>
<body>	
	<div id="header">
		<img alt="..." src="../image/Ezen_Work.png" width="200px;" height="90px;">				
	</div>
	<div id="container">
		<div id="nav">			
			<h3 id="sub"> 개인 회원 F.A.Q</h3><br>
				<a href="faq_index.jsp?req=faq1">· 회원가입·탈퇴</a><br><br>
				<a href="faq_index.jsp?req=faq2">· 회원정보관리</a><br><br>
				<a href="faq_index.jsp?req=faq3">· 공고지원</a><br><br>
				<a href="faq_index.jsp?req=faq4">· 기타 문의</a><br><br>
						
			<h3 id="sub"> 기업 회원 F.A.Q</h3><br>
				<a href="faq_index.jsp?req=faq5">· 회원가입·탈퇴</a><br><br>	
				<a href="faq_index.jsp?req=faq6">· 기업정보관리</a><br><br>				
				<a href="faq_index.jsp?req=faq7">· 이력서·지원관리</a><br><br>
				<a href="faq_index.jsp?req=faq8">· 기타 문의</a><br><br>
			<hr>
			<img class="call" src="../image/call.JPG" alt="고객센터">	
				
			</div>
		
			<div id="section">
			
				<c:if test="${param.req == null }">
					<img class="frog" alt="개구리" src="../image/frog.JPG">
				</c:if>
				
				<c:if test="${param.req == 'faq1' }">
					<jsp:include page="faq_u1.jsp"/>	
				</c:if>
									
				<c:if test="${param.req == 'faq2' }">
					<jsp:include page="faq_u2.jsp"/>
				</c:if>
				
				<c:if test="${param.req == 'faq3' }">
					<jsp:include page="faq_u3.jsp"/>
				</c:if>
				
				<c:if test="${param.req == 'faq4' }">
					<jsp:include page="faq_u4.jsp"/>
				</c:if>
				
				<c:if test="${param.req == 'faq5' }">
					<jsp:include page="faq_u5.jsp"/>
				</c:if>
				
				<c:if test="${param.req == 'faq6' }">
					<jsp:include page="faq_u6.jsp"/>
				</c:if>
				
				<c:if test="${param.req == 'faq7' }">
					<jsp:include page="faq_u7.jsp"/>
				</c:if>
				
				<c:if test="${param.req == 'faq8' }">
					<jsp:include page="faq_u8.jsp"/>
				</c:if>
		</div>				
	</div>	
</body>
</html>
