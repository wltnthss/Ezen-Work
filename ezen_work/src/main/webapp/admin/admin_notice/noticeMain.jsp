<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<form action="notice.do" method="post">
		<table>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="subject">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea rows="15" cols="15" name="content"></textarea>
				</td>
			</tr>
		</table>
		
		<input type="submit" value="등록" onclick="">
		<input type="reset" value="다시 작성">
	</form>
</body>
</html>