<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>신고리스트페이지</title>
<script type="text/javascript">
	function isLogin(seq) {
		if(${memId == null}) {
			alert("먼저 로그인 하세요");
		} else {
			location.href = "reportView.do?seq=" + seq + "&pg=" + ${pg};
		}
	}
</script>
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
	<div style="margin-left: 230px; font-size: 30px; font-weight: bold;">			
		<img alt="..." src="../img/Ezen_Work.png" width="200px;" height="90px;">
		신고&문의 리스트				
	</div>
	<br>
	<div class="mid1">	
		<table class="table table-hover" style="width: 1500px; text-align: center;">
			<tr>
				<td width="95px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">글번호</td>
				<td width="95px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">아이디</td>
				<td width="100px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">신고/문의</td>
				<td width="95px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">회사이름</td>
				<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">신고선택</td>
				<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">신고내용</td>						
				<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">신고일</td>
			</tr>					
			
			<c:forEach var="dto" items="${list}">
			<tr>
				
				<td width="50">${dto.re_seq }</td>				
				<td width="50">${dto.id }</td>
				<td width="150">
					<c:if test = "${dto.re_name == '0' }">
						신고
					</c:if>
					
					<c:if test="${dto.re_name == '1' }">
						문의
					</c:if>
				</td>
				<td width="300"> <a href="../report/reportView.do?re_seq=${dto.re_seq}&pg=${pg}">${dto.re_report}</a>
				</td>
				<td width="500">${dto.re_check }</td>
				<td width="300">${dto.re_content }</td>
				<td width="300">${dto.logtime }</td>
				
			</tr>
			</c:forEach>
		    </table>
         </div>
			<div class="footer222">
				
					<c:if test="${startPage > 3 }">			
					[<a class="paging" href="reportList.do?pg=${startPage - 1 }">이전</a>]
					</c:if>		
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<c:if test="${pg == i }">
					[<a class="currentPaging" href="reportList.do?pg=${i }">${i }</a>]
					</c:if>
			
					<c:if test="${pg != i }">
					[<a class="paging" href="reportList.do?pg=${i }">${i }</a>]
					</c:if>
					</c:forEach>				
	
					<c:if test="${endPage < totalP }">						
					[<a class="paging" href="reportList.do?pg=${endPage + 1 }">다음</a>]
					</c:if>
				</div>
				<br><br>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

  </body>
</html>