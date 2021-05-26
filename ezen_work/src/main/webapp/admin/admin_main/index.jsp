<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
	<h3>*** 메인 화면 ***</h3>
	<hr>
	<c:if test="${memId == null }">
		<a href="../admin_login/loginForm.jsp">로그인 이동</a>
	</c:if>
	
	<c:if test="${memId != null }">
	<a href="../admin_main/logout.do">로그 아웃</a>
	
	</c:if>
	어드민 인덱스 변경사항입니다. (디벨롭 브랜치)
</body>
</html>