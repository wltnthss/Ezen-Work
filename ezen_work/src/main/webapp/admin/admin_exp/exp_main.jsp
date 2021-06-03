<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알바경험담</title>
<script type="text/javascript" src="../../script/adminScript.js"></script>
<style type="text/css">
.subject{width: 400px; height: 20px;}
.write{padding-left: 50px;}
::placeholder{	
	font-size: 1.2em;	
}
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}
</style>
</head>
<body>
	<form action="job_experience_search.do" name=exp_search method="post" enctype="utf-8">				
		<h3>알바경험담</h3>		
		<div align="center">			
			<input type="text" class="subject" name="top_subject" placeholder="제목 or 내용">			
			<input type="image" src="../image/search.JPG" alt="검색" onclick="search();"/>
			
		</div>
		<a href="../admin_exp/exp_write.jsp"><img class="write" alt="글쓰기" src="../image/write.JPG"></a>
		
		<table >
			<tr>
				<td colspan="4"><hr color="#28B4B4"></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td>제목</td>
				<td>작성자</td>
				<td>댓글수</td>
				<td>조회수</td>
			</tr>
			<c:forEach var="dto" begin="0" end="19" items="${list}">
				<tr>
					<td>${dto.exp_date}</td>
					<td>
						<a href="job_experience_view.do?seq=${dto.exp_seq}&pg=${pg}" id="subjectA">
							${dto.exp_subject}
						</a>
					</td>
					<td>${dto.exp_reply_count}</td>
					<td>${dto.id}</td>
					<td>${dto.exp_readcount}</td>
				</tr>		
			</c:forEach>			
		</table>
		<br><br>
		<div>
			<c:if test="${totalA == null }">
				<c:if test="${startPage > 10 }">               
	              [ <a  class="paging" href="job_experience_main.do?pg=${startPage - 1}">이전</a> ]
	            </c:if>
	           
	           	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
	              <c:if test="${pg == i }">                  
	                 [ <a class="currentPaging" href="job_experience_main.do?pg=${i }">${i }</a> ]
	              </c:if>
	              
	              <c:if test="${pg != i }">
	                 [ <a class="paging"  href="job_experience_main.do?pg=${i }">${i }</a> ]   
	              </c:if>
	           	</c:forEach>
	           
	           	  <c:if test="${endPage < totalP }">               
	              	 [ <a class="paging"  href="job_experience_main.do?pg=${endPage + 1}">다음</a> ]
	              </c:if>
	         </c:if>
	         
	         <c:if test="${totalA != null }">
	         	<c:if test="${totalA > 20 }">
				   <a href="#">${totalA-20}개 더보기</a>		         
				</c:if> 				
	         </c:if>     
		 </div>			
	</form>	
</body>
</html>