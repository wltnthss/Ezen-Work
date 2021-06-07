<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<h3>*** 메인 화면 ***</h3>
	<a href="../member/member_registration/registrationMainForm.jsp">회원가입</a>
	
	<c:if test="${memId == null && cmemId == null}">	
		<a href="../member/member_login/loginForm.jsp">로그인</a>
	</c:if>
	
	<c:if test="${select == 0 }">
		<c:if test="${memId != null }">
			<a href="../../member/member_mypage/mypageindex.jsp">user 마이페이지</a>
			<a href="../../member/member_login/logout.do">user 로그아웃</a>
		</c:if>
	</c:if>
	
	<c:if test="${select == 1 }">
		<c:if test="${cmemId != null }">
			<a href="../../company/mypage/mypageForm.jsp">company 마이페이지</a>
			<a href="../../company/login/logout.do">company 로그아웃</a>
		</c:if>
	</c:if>
</body>
</html>