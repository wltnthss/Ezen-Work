<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="modify.do" method="post" name="modifyForm">
		<table border="1">
		<tr>
			<td colspan="4">기본정보</td>
		</tr>
		<tr>
			<td>프로필이미지</td>
			<td>휴대폰번호</td>
			<td>이메일</td>
			<td>주소</td>
		</tr>
		
		<tr>
			<td align="center">이력서 제목</td>
			<td> <input type="text" name="title" value="${dto.title }"> </td>
		</tr>
		
		<tr>
			<td align="center">나이 </td>
			<td> <input type="text" name="age" value="${dto.age }"> </td>
		</tr>
		
		<tr>
			<td align="center">키</td>
			<td><input type="text" name="tall" value="${dto.tall }"></td>
		</tr>
		
		<tr>
			<td align="center">몸무게</td>
			<td><input type="text" name="weight" value="${dto.weight }"></td>
		</tr>
		
		<tr>
			<td align="center">경력</td>
			<td><input type="text" name="career" value="${dto.career }"></td>
		</tr>
		
		<tr>
			<td align="center">학력</td>
			<td><input type="text" name="achieve" value="${dto.achieve }"></td>
		</tr>
		
		<tr>
			<td align="center">위치</td>
			<td><input type="text" name="loc" value="${dto.loc }"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"> 
			<input type="button" value="이력서 수정 완료" onclick="checkWrite(); return false;">
			<input type="reset" value="다시 작성"> 
			</td>
		</tr>
		</table>	
	</form>		
</body>
</html>