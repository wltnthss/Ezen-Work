<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<script type="text/javascript" src="../../script/adminScript.js"></script>
<script type="text/javascript">
function del(){	
	if(confirm("삭제 하시겠습니까?")){
		location.href="job_experience_del.do?seq=${seq}&pg=${pg}";
	}else{
		history.back();
	}
}
</script>
<style type="text/css">
.header{width: 1050px; height: 100px;}
.title{
	border: 3px solid #28B4B4;
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
</head>
<body>	
	<form action="exp_reply.do?seq=${seq}&pg=${pg}" method="post" name="exp_reply_write">		
		<div class='top'>
			<h3>알바경험담</h3>
		</div>
		<div class='header'>	
			<div class='title'>
				<p class='sub'>${dto.exp_subject}</p>
				<span class='subid'>${dto.id}   </span>|   ${dto.exp_date} 
				<span class='hit'>조회수 : ${dto.exp_readcount}</span>	
			</div>
		</div>
		<br><br>
		<div class='body'>
			<div class="exp_img">
				<img alt="그림" src="../../storage/${dto.exp_image}" width="700px;" height="450px;">	
			</div>
			<br><br>
			<div class='content'>
				${dto.exp_content}
			</div>	
			<br><br><br><br><br><br>	
			<div style="padding-left: 830px;">		
				<c:if test="${amemId == dto.id}">
					<a href="job_experience_modifyForm.do?seq=${seq}&pg=${pg}"><img src="../image/modi.JPG" alt="수정" /></a>	
					<a href="#" onclick="del();"><img src="../image/del.JPG" alt="삭제" /></a>																	
				</c:if>
			</div>			
		</div>				
		<br><br>
		<div class='foot'>
			<div class="reply">
				<c:forEach var="dto" items="${list}">
					<table>
						<tr>
							<td align="left" width="170px;" style="font-size: 15px;"><span class='subid' style="font-weight: bold;">${dto.id}</span></td>						
							<td align="left" width="170px;" style="font-size: 15px;"> ${dto.exp_reply_date }</td>
							<td align="right" width="540px;" style="font-size: 15px;"><a href="exp_reply_del.do?seq=${seq}&exp_reply_seq=${dto.exp_reply_seq}&pg=${pg}" style="text-decoration: none;">삭제</a></td>
						</tr>
						<tr>
							<td colspan="4" style="font-size: 13px;">${dto.exp_reply_content}</td>
						</tr>
					</table>
					<br>
				</c:forEach>
			</div>	
			<br>		
			<div class='reply'>
				<c:if test="${amemId != null }">
					<span class='mem'>${memId}</span><br>
				</c:if>
				<c:if test="${amemId == null }">
					<span class='mem'>* 로그인 후 글 작성 가능합니다.</span><br>
				</c:if>			
				<textarea rows="3" cols="115" id="reply_content" name='reply_content' placeholder=
				"광고글, 타인 비방글 등은 제대를 받을 수 있으며 게시물에 대한 모든 법적인 책임은 작성자 본인에게 있습니다."></textarea>				
				<c:if test="${amemId != null }">					
					<input type="image" src="../image/exp_enroll.JPG" alt="등록" onclick="reply_enroll(); return false;"/>			
				</c:if>							
			</div>
			<br>
			<input type="button" class="exp_list" value="목록" onclick="location.href='job_experience_main.do?pg=${pg}'">					
		</div>
	</form>
</body>
</html>