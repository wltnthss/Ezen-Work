<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>공고관리 페이지</title>
<script type="text/javascript" src="../../script/adminScript.js"></script>    
<style type="text/css">
body{
	margin: 0;
	padding: 0;	
	width: 2000px;	
}
.head1{text-align: center; }
.mid1{
	width: 1500px;	
	margin-left:auto; margin-right:auto;
}
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}
.footer222{padding-left: 900px;}
</style>    
  </head>
  <body>
	<form action="search_advertise_list.do" method="post" name="exp_search">
		<div style="margin-left: 240px; font-size: 30px; font-weight: bold;">			
  			<img alt="..." src="../image/Ezen_Work.png" width="200px;" height="90px;">
  			공고관리 페이지			
		</div> 	  	
 		<div class="head1">
 			<input type="text" class="subject" name="top_subject" style="height: 38px; width: 400px; margin-top: 50px;" placeholder="회사이름 or 공고제목">					
			<a href="#"><button type="button" class="btn btn-outline-secondary" style="margin-bottom: 5px;" onclick="search();">검색</button></a><br><br>
 		</div>
 		
 		<div class="mid1">
			<table class="table table-hover" style="width: 1500px; text-align: center;">
					<tr>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">번호</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">회사이름</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">공고제목</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">일당</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">모집내용</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">직종</td>					
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">지역</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">기간</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">등록일</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">삭제</td>						
					</tr>
					<c:forEach var="dto" items="${list}">
		 			<tr>
		 				<td width="100">${dto.num}</td>
		 				<td width="300">${dto.cname }</td>
		 				<td width="500">${dto.ad_subject }</td>
		 				<td width="300">${dto.salary}</td>
		 				<td width="700">${dto.ad_content}</td>
		 				<td width="500">${dto.ad_job}</td>		 				
		 				<td width="500">${dto.ad_area}</td>
		 				<td width="500">${dto.ad_period}</td>	
		 				<td width="300">${dto.advertise_date}</td>		 				
		 				<td width="130"><button type="button" class="btn btn-outline-secondary" style="margin-bottom: 5px;"
		 				 onclick="location.href='ad_delete.do?num=${dto.num}&pg=${pg}'">삭제</button></td>
		 			</tr>
					</c:forEach>
			</table> 
		</div>
		<div class="footer222">
			<c:if test="${startPage > 10 }">               
	              [ <a  class="paging" href="ad_list.do?pg=${startPage - 1}&top_subject=${top_subject}">이전</a> ]
	            </c:if>
	           
	           	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
	              <c:if test="${pg == i }">                  
	                 [ <a class="currentPaging" href="ad_list.do?pg=${i }&top_subject=${top_subject}">${i }</a> ]
	              </c:if>
	              
	              <c:if test="${pg != i }">
	                 [ <a class="paging"  href="ad_list.do?pg=${i }&top_subject=${top_subject}">${i }</a> ]   
	              </c:if>
	           	</c:forEach>
	           
	           	  <c:if test="${endPage < totalP }">               
	              	 [ <a class="paging"  href="ad_list.do?pg=${endPage + 1}&top_subject=${top_subject}">다음</a> ]
	              </c:if>
		</div> 
		<br><br>   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </form>
  </body>
</html>