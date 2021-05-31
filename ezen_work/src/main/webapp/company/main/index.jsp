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
	<hr>
	<c:if test="${memId == null }">
		<a href="../regist/memberWriteForm.jsp">회원가입</a>
		<a href="../login/loginForm.jsp">로그인</a>
	</c:if>
	
	<c:if test="${memId != null }">
		<a href="../mypage/mypageForm.jsp">마이페이지</a>
		<a href="../login/logout.do">로그아웃</a>
	</c:if>
</body>
</html>