<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고문 보기</title>
</head>
<body>
	<table border="1">
	<!--
		<tr>
			<th>공고 제목</th>
			<td><input type="text" name="ad_subject" size="30"></td>
		</tr>
		<tr>
			<th>회사사진</th>
			<td><input type="file" name="image"></td>
		</tr>
		<tr>
			<th>공고 내용</th>
			<td><textarea rows="15" cols="45" name="ad_content"></textarea></td>
		</tr>
		<tr>
			<th>모집인원</th>
			<td>
				<input type="text" name="ad_num" size="5"> (명)
				<select name="numselect" onchange="change();" >
					<option value="direct">직접입력</option>
					<option value="00">인원미정</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
				<input type="radio" name="gender" value="1">남
				<input type="radio" name="gender" value="2">여
				<input type="radio" name="gender" value="0" checked="checked"> 무관
			</td>
		</tr>
		<tr>
			<th>모집나이</th>
			<td>
				<input type="radio" name="age" value="20"> 20대
				<input type="radio" name="age" value="30"> 30대
				<input type="radio" name="age" value="40"> 40대
				<input type="radio" name="age" value="0" checked="checked"> 무관
			</td>
		</tr>
		<tr>
			<th>근무시간</th>
			<td>
				<select name="ad_time">
					<option value="0">무관</option>
					<option value="9">오전9-오후6</option>
					<option value="6">오후12-오후6</option>
					<option value="7">오후3-오후10</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>근무기간</th>
			<td>
				<input type="radio" name="ad_period" value="3"> 3개월
				<input type="radio" name="ad_period" value="6"> 6개월
				<input type="radio" name="ad_period" value="12"> 1년이상
				<input type="radio" name="ad_period" value="0" checked="checked"> 무관
			</td>
		</tr>
		<tr>
			<th>위치(지역)</th>
			<td><input type="text" name="ad_area" size="30"></td>
		</tr>
		<tr>
			<th>직종</th>
			<td>
				<select name="ad_job">
					<option value="service">서비스</option>
					<option value="IT">IT.컴퓨터</option>
					<option value="design">디자인</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>시급</th>
			<td><input type="text" name="salary" size="5"></td>
		</tr>
		<tr>
			<th>회사명</th>
			<td><input type="text" name="cname" size="10" value="${cname}" readonly></td>
		</tr>
		<tr>
			<th>기타</th>
			<td><textarea rows="15" cols="45" name="content"></textarea></td>
		</tr>
		<tr>				
			<td colspan="2" align="center">
				<input type="submit" value="공고등록" onclick="checkWrite() return false;">
				<input type="reset" value="다시작성">
			</td>
		</tr>
		  -->
		<tr align="center">
			<td width="150">성별 : ${dto.gender}</td>
			<td width="150">시간 : ${dto.ad_time}</td>
		</tr>
		<tr>
			<td colspan="3" height="200" valign="top">
				<!-- <pre> 태그 : 문자열을 있는 그대로 보여줌 -->
				<pre>${dto.content }</pre>
			</td>
		</tr>
	</table>
	
	<input type="button" value="목록" 
		   onclick="location.href='boardList.do?pg=${pg}'">
		   
	<%--글수정과 글삭제는 로그인된 사람과 글쓴 사람이 같을 때만 보이게 설정함 
	<c:if test="${memId == dto.id}">
		<input type="button" value="글수정" 
				onclick="location.href='boardModifyForm.do?seq=${seq}&pg=${pg}'">		
		<input type="button" value="글삭제" 
			   onclick="location.href='boardDelete.do?seq=${seq}&pg=${pg}'">
	</c:if>
	--%>		   
</body>
</html>