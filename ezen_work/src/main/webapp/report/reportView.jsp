<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<style type="text/css">
.header{width: 1000px; height: 100px; padding-left: 430px;}
.body{padding-left: 430px;}
.foot{padding-left: 430px;}
.title{
	border: 1px solid #28B4B4;
	border-top-left-radius: 2em;
	border-top-right-radius: 2em;	
	padding-left: 15px;
	width: 1000px;	
}	
.sub{font-size: 25px;}
.subid{font-weight: bold; color: #28B4B4}
.hit{float: right; padding-right: 10px;}
.exp_img{padding-left: 170px;}
.content{width: 900px; padding-left: 50px;}
.reply{padding-left: 50px;}
.mem{font-weight: bold; clear: left; color: #28B4B4;}
textarea{resize: none;}
.exp_list{margin-left: 910px;}
.reply{width: 1000px;}
</style>


<title>글 상세 보기</title>
</head>
<body>
	<div style="margin-left: 415px; font-size: 30px; font-weight: bold;">			
		<img alt="..." src="../img/Ezen_Work.png" width="200px;" height="90px;">
		신고&문의 상세보기					
	</div>
	<br>
	<div class='header'>	
		<div class='title'>
			<p class='sub'>${dto.re_check }</p>
			<span class='subid'>${dto.id }   </span>|   ${dto.logtime }   |    ${dto.re_report }
		</div>
	</div>
		<br><br>
		<div class='body'>
			<div class='content'>
					${dto.re_content }
				</div>	
			
		
		<br><br><br><br><br><br>
		<div style="padding-left: 830px;">
		
				<input type="button" value="목록" onclick="location.href='reportList.do?pg=${pg }'">
				<input type="button" value="글삭제" onclick="location.href='reportDelete.do?pg=${pg }&re_seq=${re_seq}'">
			</div>
		</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>