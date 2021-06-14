<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>이벤트</title>
<script type="text/javascript" src="../../script/adminScript.js"></script>
<script type="text/javascript">
	function isLogin(seq) {
		if(${Id != null}) {
			alert("먼저 로그인 하세요");
		} else {
			location.href="eventView.do?seq=" + seq + "&pg=" + ${pg};
		}
	}
</script>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}
#header{
	text-align: center;
	
}
.middle{
	width: 1000px;	
	margin-left:auto; margin-right:auto;
}
.subject{width: 400px; height: 20px;}
.write{padding-left: 50px;}
::placeholder{	
	font-size: 1.2em;	
}
.footer{
	text-align: center;	
}
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
#subject:link {color:black; text-decoration: none;}
#subject:visited {color:black; text-decoration: none;}
#subject:hover {color:blue; text-decoration: underline;}
#subject:active {color:black; text-decoration: none;}
</style>
</head>
<body>
	<form action="eventList.do" name=eventList method="post" enctype="utf-8">
		<div style="margin-left: 460px; font-size: 30px; font-weight: bold;">			
  			<img alt="..." src="../image/Ezen_Work.png" width="200px;" height="90px;">
  			이벤트				
		</div>	
		<br><br>	
		<div id="header">			
			<c:if test="${amemId != null}">
				<a href="../admin_event/eventWriteForm.jsp"><button type="button" class="btn btn-outline-success" style="margin-right: 900px;">글쓰기</button></a>
			</c:if>
		</div>
		<br>
		<div class="middle">
			<table style="text-align: center;" class="table table-hover">
				<tr>
					<th width="80px;" style="font_weight: bold; color: #28B4B4; font-size: 20px;">글번호</th>					
					<th width="350px;" style="font_weight: bold; color: #28B4B4; font-size: 20px;">제목</th>
					<th width="100px;" style="font_weight: bold; color: #28B4B4; font-size: 20px;">ID</th>
					<th width="100px;" style="font_weight: bold; color: #28B4B4; font-size: 20px;">작성일</th>
					<th width="100px;" style="font_weight: bold; color: #28B4B4; font-size: 20px;">조회수</th>
				</tr>
		
				<c:forEach var="dto" begin="0" end="19"  items="${list}">
					<tr>
						<td>${dto.e_seq}</td>
						<td><a id="subject"  href="#" onclick="isLogin(${dto.e_seq})">${dto.subject}</a></td>
						<td>${dto.id}</td>
						<td>${dto.day}</td>
						<td>${dto.count}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- 페이지 표시 -->
		<div class="footer">
			<c:if test="${startPage > 3}">
				[<a class="paging" href="eventList.do?pg=${startPage - 1}">이전</a>]
			</c:if> 
			
			<c:forEach var="i" begin="${startPage }" end="${endPage }">
				<c:if test="${pg == i}">
					[<a class="currentpaging" href="eventList.do?pg=${i}">${i}</a>]
				</c:if>

				<c:if test="${pg != i}">
					[<a class="paging" href="eventList.do?pg=${i}">${i}</a>]
				</c:if>
			</c:forEach> 
			
			<c:if test="${endPage < totalP }"> 
				[<a class="paging" href="eventList.do?pg=${endPage + 1}">다음</a>] 
			</c:if>
		</div>
	</form>
	<!-- 
	<a href="../admin_event/eventWriteForm.jsp">새글 쓰기</a><br>
	 -->
	<!-- 상세 보기에서 게시글 삭제하기 만들기 -->
	<!-- 삭제하기 만들기 *.do?seq=seq&pg=pg  -->
	<!-- 
	<a href="../admin_main/index.jsp">관리자 페이지</a> 
	 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>