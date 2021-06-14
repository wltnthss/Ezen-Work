<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>공지사항 상세보기</title>
<style type="text/css">
table.detail {
	border-collapse: separate;
	border-spacing: 1px;
	text-aligh: left;
	line-height: 1.5;
	border-top: 1px soild #28B4B4;
	margin : 20px 10px;
	margin-left: 400px;
}
table.detail tr {
	width: 150px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
table.detail td {
	width: 350px;
 	padding: 10px;
 	vertical-align: top;
 	border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
	<div style="margin-left: 385px; font-size: 30px; font-weight: bold;">			
  			<img alt="..." src="../image/Ezen_Work.png" width="200px;" height="90px;">
  			공지사항 상세보기				
	</div>
	<table class="detail">
		<tr align="center">
			<td width="360" colspan="3"style="font_weight: bold; font-size: 20px;">${dto.subject }</td>
		</tr>
		<tr align="center">
			<td width="120" style="font_weight: bold; font-size: 20px;">글번호 : ${dto.seq }</td>
			<td width="240" style="font_weight: bold; font-size: 20px;">작성자 : ${dto.id }</td>
			<td width="120" style="font_weight: bold; font-size: 20px;">조회수 : ${dto.count }</td>
		</tr>
		<tr>
			<td colspan="3" height="300" valign="top" style="font_weight: bold; font-size: 20px;">
				<pre>${dto.content }</pre>
			</td>
		</tr>
	</table>
	<div style="margin-left: 1330px;">
	<input type="button" value="목록" onclick="location.href='noticeList.do?pg=${pg }'">
	<!-- <input type="button" value="글 수정" onclick="location.href='noticeModify.do?seq=${seq }&pg=${pg }'"> -->
	<c:if test="${amemId != null}">
	<input type="button" value="글 삭제" onclick="location.href='noticeDelete.do?seq=${seq }&pg=${pg }'">
	</c:if>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>