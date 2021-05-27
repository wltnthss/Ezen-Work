<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 작성</title>
<script type="text/javascript" src="../../script/resumeScript.js"></script>
</head>
<body>
	<form action="write.do" method="post" name="writeForm">
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
			<td> <input type="text" name="title" placeholder="나룰 표현할 한마디!!"> </td>
		</tr>
		
		<tr>
			<td align="center">나이 </td>
			<td> <input type="text" name="age"> </td>
		</tr>
		
		<tr>
			<td align="center">키</td>
			<td><input type="text" name="tall"></td>
		</tr>
		
		<tr>
			<td align="center">몸무게</td>
			<td><input type="text" name="weight"></td>
		</tr>
		
		<tr>
			<td align="center">경력</td>
			<td><input type="text" name="career"></td>
		</tr>
		
		<tr>
			<td align="center">학력</td>
			<td><input type="text" name="achieve"></td>
		</tr>
		
		<tr>
			<td align="center">위치</td>
			<td><input type="text" name="loc"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"> 
			<input type="button" value="이력서 작성 완료" onclick="checkWrite(); return false;">
			<input type="reset" value="다시 작성"> 
			</td>
		</tr>
		</table>	
	</form>	
	<a href="../member_mypage/mypageindex.jsp">마이페이지</a>
</body>
</html>