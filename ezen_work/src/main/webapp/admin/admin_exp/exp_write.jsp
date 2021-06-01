<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../script/adminScript.js"></script>
<style type="text/css">
.red{color: red}
td{font-weight: bold;}
textarea{
	width:500px; 
	height:300px; 
    resize:none;
}
li{font-size: 10px;}
ul{padding-left: 100px;}
.warning_img{
	padding-top:10px;
	float: left;
}
#warning{		
	float: left;
}
#enroll_button{
clear: left;
}
</style>
</head>
<body>
	<form action="job_experience_write.do" enctype="multipart/form-data" method="post" name="exp_write">
		<h3>알바경험담</h3>
		
		<table>
			<tr>
				<td colspan="2"><hr color="#28B4B4"></td>
			</tr>
			<tr>
				<th><span class="red">*</span>제목</th>
				<td>
					<input type="text" name="exp_subject">
				</td>
			</tr>
			<tr>
				<th>사진</th>
				<td>
					<input type="file" name="exp_image">
				</td>
			</tr>
			<tr>
				<th><span class="red">*</span>내용</th>
				<td>
					<textarea rows="" cols="" name="exp_content"></textarea>
				</td>
			</tr>		
		</table>
		
		<div id="warning">
			<img class="warning_img" alt="경고" src="../image/warning.JPG">
			<ul>
				<li>
					알바몬은 회원이 작성한 게시물이 서비스 이용약관, 관련 법령 또는 본 규칙에
					위배되는 경우 게시자에게 사전 또는 사후 통지 없이<br>
					해당 게시물을 (전체 혹은 일부) 임의 삭제할 수 있습니다.<br><br>
				</li>
				<li>
					해당 게시물(댓글포함)에 대한 모든 법적인 책임은 작성자에게 있으며,
					이는 알바몬 모든 게시판에 해당됩니다.
				</li>
			</ul>
		</div>	
		<br><br>
		<div id="enroll_button">
			<input type="image" src="../image/enroll.JPG" alt="등록" onclick="enroll(); return false;"/>
			<input type="image" src="../image/cancel.JPG" alt="돌아가기" onclick="back(); return false;"/>
		</div>		
	</form>
</body>
</html>


















