<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고목록</title>
<style type="text/css">
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}

/* paging */
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
</style>
</head>
<body>
	<table border="1">
			<tr>
				<input type="button" value="신고" onclick="">
			<tr>
			<tr bgcolor="ffff00">
				<th>글번호</th>
				<th>회사사진</th>
				<th>회사이름</th>
				<th>글 제목</th>
				<th>시급</th>
				<th>알바내용</th>
			</tr>
			
			<c:forEach var="dto" items="${list}">
				<tr bgcolor="ffffcc" align="center">
					<td>${dto.num}</td>
					<td>
						<a href="advertiseView.do?num=${dto.num}&pg=${pg}">
							<img alt="회사사진" src="../../storage/${dto.image}" width="450" height="300">
						</a>
					</td>
					<td>${dto.cname}</td>
					<td>${dto.ad_subject}</td>
					<td>${dto.salary}</td>
					<td>${dto.ad_content}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" align="center">
					<c:if test="${startPage > 3 }">
						[<a class="paging" href="advertiseList.do?pg=${startPage-1}">이전</a>]
					</c:if>
					
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${pg == i }">
							[<a class="currentPaging" href="advertiseList.do?pg=${i }">${i }</a>]
						</c:if>
						<c:if test="${pg != i }">
							[<a class="paging" href="advertiseList.do?pg=${i }">${i }</a>]  
						</c:if>
					</c:forEach>
					
					<c:if test="${endPage <totalP }">
						[<a class="paging" href="advertiseList.do?pg=${endPage+1}">다음</a>]
					</c:if>
				</td>
			</tr>
		</table>
		</table>
</body>
</html>