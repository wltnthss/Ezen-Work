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
		<tr>
			<td>공고 제목 : ${dto.ad_subject}</td>
		</tr>
		<tr>
			<td>회사 사진 : <img alt="회사사진" src="../../storage/${dto.image}" width="180" height="130"></td>
		</tr>
		<tr>
			<td>
				공고내용 : 
				<pre>${dto.ad_content}</pre>
			</td>
		</tr>
		<tr>
			<td>
				모집인원 :
				<c:if test="${dto.ad_num == '00'}">
					인원미정(00)
				</c:if>
				<c:if test="${dto.ad_num != '00'}">
					${dto.ad_num}
				</c:if>
			</td>
		</tr>
		<tr>
			<td>
				성별 : 
				<c:if test="${dto.gender == '1'}">
					남자
				</c:if>
				<c:if test="${dto.gender == '2'}">
					여자
				</c:if>
				<c:if test="${dto.gender == '0'}">
					성별무관
				</c:if>
			</td>
		</tr>
		<tr>
			<td>
				모집나이 : 
				<c:if test="${dto.age == '20'}">
					20대
				</c:if>
				<c:if test="${dto.age == '30'}">
					30대
				</c:if>
				<c:if test="${dto.age == '40'}">
					40대
				</c:if>
				<c:if test="${dto.age == '0'}">
					연령무관
				</c:if>
			</td>
		</tr>
		<tr>
			<td>
				근무시간 : 
				<c:if test="${dto.ad_time == '0'}">
					시간무관
				</c:if>
				<c:if test="${dto.ad_time == '9'}">
					오전9-오후6
				</c:if>
				<c:if test="${dto.ad_time == '6'}">
					오후12-오후6
				</c:if>
				<c:if test="${dto.ad_time == '7'}">
					오후3-오후10
				</c:if>
			</td>
		</tr>
		<tr>
			<td>
				근무기간 : 
				<c:if test="${dto.ad_period == '0'}">
					기간무관
				</c:if>
				<c:if test="${dto.ad_period == '3'}">
					3개월
				</c:if>
				<c:if test="${dto.ad_period == '6'}">
					6개월
				</c:if>
				<c:if test="${dto.ad_period == '12'}">
					1년이상
				</c:if>
			</td>
		</tr>
		<tr>
			<td>위치(지역) : ${dto.ad_area}</td>
		</tr>
		<tr>
			<td>
				직종 : 
				<c:if test="${dto.ad_job == 'service'}">
					서비스
				</c:if>
				<c:if test="${dto.ad_job == 'IT'}">
					IT.컴퓨터
				</c:if>
				<c:if test="${dto.ad_job == 'design'}">
					디자인
				</c:if>
			</td>
		</tr>
		<tr>
			<td>시급 : ${dto.salary}</td>
		</tr>
		<tr>
			<td>회사명 : ${cname}</td>
		<tr>
			<td>
				기타 : 
				<pre>${dto.content}</pre>
			</td>
		</tr>
	</table>
	
	<input type="button" value="목록" onclick="location.href='advertiseList.do?pg=${pg}'">
	<input type="button" value="글수정" onclick="location.href='advertiseModifyForm.do?num=${num}&pg=${pg}'">		
	<input type="button" value="글삭제" onclick="location.href='advertiseDeleteForm.do?num=${num}&pg=${pg}'">	   
</body>
</html>