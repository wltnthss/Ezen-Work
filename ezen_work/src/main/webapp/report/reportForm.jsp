<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고문의하기</title>
<script type="text/javascript" src="../../script/reportScript.js"></script>
</head>
<body>
	<form action="reportWrite.do" method="post" name="reportForm">
		<table border="1">
		<tr>
			<td align="center">문의/신고</td>
			<td>
				<input type="radio" name="report" value="0" checked="checked">신고 
				<input type="radio" name="report" value="1">문의
			</td>
		</tr>
		
		<tr>
			<td align="center">회사이름</td>
			<td> <input type="text" name="comname"></td>
		</tr>
		
		<tr>
			<td align="center">내용선택</td>
			<td> <input type="text" name="checkContent"> </td>
		</tr>
	
		<tr>
			<td align="center">내용</td>
			<td><textarea rows="20" cols="50" name="content"></textarea></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"> 
			<input type="submit" value="신고완료">
			<input type="reset" value="다시작성"> 
			</td>
		</tr>
		</table>	
	</form>
</body>
</html>
	