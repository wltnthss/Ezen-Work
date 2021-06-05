<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>관리자 페이지</title>
</head>
<body>
	
		<h3>*** 메인 화면 ***</h3>
		<hr>
		<c:if test="${amemId == null }">
			<a href="../admin_login/loginForm.jsp"><button type="button" class="btn btn-outline-primary" style="border-color: red; color: blue;">로그인 이동</button></a>			
			<a href="../admin_login/loginForm.jsp">로그인 이동</a>
		</c:if>
		<br><br>
		
		<c:if test="${amemId != null }">	
			
		<a href="../admin_login/logout.do"><button type="button" class="btn btn-danger">로그 아웃</button></a>		
		<a href="../admin_login/logout.do">로그 아웃</a> 
		<br><br>
				
		<a href="#" onclick="window.open('../admin_faq/faq_index.jsp','',
				'width=1130,height=730');"><button type="button" class="btn btn-warning">faq</button></a>	
		<a href="#" onclick="window.open('../admin_faq/faq_index.jsp','',
				'width=1130,height=730');">faq</a>	
		<br><br>				
		
		<a href="../admin_exp/job_experience_main.do?pg=1"><button type="button" class="btn btn-outline-secondary">알바경험담</button></a>			
		<a href="../admin_exp/job_experience_main.do?pg=1">알바경험담</a>				
		<br><br>
		<a href="../admin_talk/talk_list.do"><button type="button" class="btn btn-danger">한줄톡</button></a>
		</c:if>		
				
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>	
</body>
</html>
