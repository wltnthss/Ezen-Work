<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
<script type="text/javascript" src="../../script/companyScript.js"></script>
</head>
<body>
	<form action="memberModify.do" name="modifyForm" method="post">
		<table border="1">
			<tr>
				<th>회사명</th>
				<td><input type="text" name="cname" size="30" value="${dto.cname}" readonly></td>
			</tr>
			<tr>
				<th>ID</th>
				<td>
					<input type="text" name="id" size="20"value="${dto.id}" readonly>
				</td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" name="pw" size="30" value="${dto.pw}"></td>
			</tr>
			<tr>
				<th>PW 재확인</th>
				<td><input type="password" name="repw" size="30" value="${dto.pw}"></td>
			</tr>
			<tr>
				<th>사업자번호</th>
				<td colspan="4" align="center">
					<input type="text" name="bnumber1" maxlength="3" size="3" value="${dto.bnumber1}" readonly> -
					<input type="text" name="bnumber2" maxlength="2" size="2" value="${dto.bnumber2}" readonly> -
					<input type="text" name="bnumber3" maxlength="5" size="5" value="${dto.bnumber3}" readonly>
					<input type="button" value="확인" onclick="">
				</td>
			</tr>
			<tr>
				<th>이메일 </th>
				<td> 
					<input type="text" name="email" size="20" value="${dto.email}">
					<span>@</span>
					<select name="email2" value="${dto.email2}">
						<option value="naver.com">naver.com </option>
						<option value="gmail.com">gmail.com </option>
						<option value="hanmail.com">hanmail.com </option>
						<option value="nate.com">nate.com </option>
					</select>			
				</td>
			</tr>
			<tr>
				<th>핸드폰 </th>
				<td> 
					<select name="tel" value="${dto.tel}">
						<option value="010">010 </option>
						<option value="011">011 </option>
						<option value="016">016 </option>
					</select>
					<span>-</span>
					<input type="text" name="tel2" size="3" value="${dto.tel2}">
					<span>-</span>
					<input type="text" name="tel3" size="3" value="${dto.tel3}">
				</td>
			</tr>
			<tr>				
				<td colspan="2" align="center">
					<input type="submit" value="정보수정" onclick="modify(); return false;">
					<input type="reset" value="다시작성">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>