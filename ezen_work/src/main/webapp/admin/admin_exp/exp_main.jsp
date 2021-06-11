<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>알바경험담</title>
<script type="text/javascript" src="../../script/adminScript.js"></script>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}
#header11{
	text-align: center;
	
}
.middle11{
	width: 1000px;	
	margin-left: 470px;
}
.subject{width: 400px; height: 20px;}
.write{padding-left: 50px;}
::placeholder{	
	font-size: 1.2em;	
}
.footer11{
	text-align: center;
	text-overflow: clip;	
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
		<div style="margin-left: 460px; font-size: 30px; font-weight: bold;">			
  			<img alt="..." src="../image/Ezen_Work.png" width="200px;" height="90px;">
  			알바경험담					
		</div>			
		<div id="header11">			
			<br><br>
			<input type="text" class="subject" name="top_subject" style="height: 38px;" placeholder="제목 or 내용">					
			<a href="#"><button type="button" class="btn btn-outline-success" style="margin-bottom: 5px;" onclick="search();">검색</button></a><br><br>
			<c:if test="${amemId != null or memId != null }">
				<a href="exp_write.jsp"><button type="button" class="btn btn-outline-success" style="margin-right: 900px;">
					글쓰기
				</button>
				</a>		
			</c:if>	
		</div>
		<br>			
		<div class="middle11">			
			<table style="text-align: center; text-overflow: clip;" class="table table-hover">				
				<tr>
					<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">작성일</td>
					<td width="350px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">제목</td>
					<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">댓글수</td>
					<td width="100px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">작성자</td>
					<td width="100px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">조회수</td>
				</tr>
				<c:forEach var="dto" begin="0" end="19" items="${list}">
					<tr>
						<td>${dto.exp_date}</td>
						<td>
							<a href="job_experience_view.do?seq=${dto.exp_seq}&pg=${pg}" id="subjectA">
								${dto.exp_subject}
							</a>
						</td>
						<td>(${dto.exp_reply_count})</td>
						<td>${dto.id}</td>
						<td>${dto.exp_readcount}</td>
					</tr>		
				</c:forEach>			
			</table>
		</div>		
		<div class="footer11">
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
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>	
</body>
</html>