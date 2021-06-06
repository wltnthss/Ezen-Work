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
<title>회사관리 페이지</title>
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
	<form action="search_company_list.do" method="post" name="exp_search">  	
 		<div class="head1">
 			<input type="text" class="subject" name="top_subject" style="height: 38px; width: 400px; margin-top: 50px;" placeholder="아이디 or 회사이름">					
			<a href="#"><button type="button" class="btn btn-outline-secondary" style="margin-bottom: 5px;" onclick="search();">검색</button></a><br><br>
 		</div>
 		
 		<div class="mid1">
			<table class="table table-hover" style="width: 1500px; text-align: center;">
					<tr>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">번호</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">회사이름</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">아이디</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">사업자 번호</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">이메일</td>
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">핸드폰번호</td>						
						<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">가입일</td>						
					</tr>
					<c:forEach var="dto" items="${list}">
		 			<tr>
		 				<td width="100">${dto.company_seq }</td>
		 				<td width="300">${dto.cname }</td>
		 				<td width="300">${dto.id }</td>
		 				<td width="600">${dto.bnumber1} - ${dto.bnumber2} - ${dto.bnumber3}</td>
		 				<td width="700">${dto.email} @ ${dto.email2}</td>
		 				<td width="600">${dto.tel} - ${dto.tel2} - ${dto.tel3}</td>
		 				<td width="300">${dto.company_date}</td>		 				
		 				<td width="130"><button type="button" class="btn btn-outline-secondary" style="margin-bottom: 5px;"
		 				 onclick="location.href='company_delete.do?id=${dto.id}&pg=${pg}'">삭제</button></td>
		 			</tr>
					</c:forEach>
			</table> 
		</div>
		<div class="footer222">
			<c:if test="${startPage > 10 }">               
	              [ <a  class="paging" href="company_list.do?pg=${startPage - 1}&top_subject=${top_subject}">이전</a> ]
	            </c:if>
	           
	           	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
	              <c:if test="${pg == i }">                  
	                 [ <a class="currentPaging" href="company_list.do?pg=${i }&top_subject=${top_subject}">${i }</a> ]
	              </c:if>
	              
	              <c:if test="${pg != i }">
	                 [ <a class="paging"  href="company_list.do?pg=${i }&top_subject=${top_subject}">${i }</a> ]   
	              </c:if>
	           	</c:forEach>
	           
	           	  <c:if test="${endPage < totalP }">               
	              	 [ <a class="paging"  href="company_list.do?pg=${endPage + 1}&top_subject=${top_subject}">다음</a> ]
	              </c:if>
		</div> 
		<br><br>   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </form>
  </body>
</html>