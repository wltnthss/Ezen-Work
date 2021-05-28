<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<h3>*** 메인 화면 ***</h3>
	<hr>
	<a href="../member_registration/registrationForm.jsp">회원가입</a>
	<a href="../member_mypage/mypageindex.jsp">마이페이지</a>
	
	<c:if test="${memId == null }">
		<a href="../member_login/loginForm.jsp">로그인 이동</a>
	</c:if>
	
	<c:if test="${memId != null }">
		<a href="../member_login/logout.do">로그 아웃</a>		
	</c:if>
	
	Test
	
</body>
</html>