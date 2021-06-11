<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 작성</title>
<script type="text/javascript" src="../../script/adminScript.js"></script>
<script type="text/javascript">
function checkEventWrite() {
	//alert("test");
	var frm = document.eventWriteForm1;
	
	if(!frm.subject.value) {
		alert("제목을 입력하세요.");
		frm.subject.focus();
	} else if(!frm.content.value) {
		alert("내용을 입력하세요.");
		frm.content.focus();
	} else {
		frm.submit();
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
.red{color: red}
td{font-weight: bold;}
textarea{
	width:500px; 
	height:300px; 
    resize:none;    
}
p{font-size: 12px;}

#enroll_button{
	text-align: center;
}
</style>
</head>
<body>
	<form action="eventWriteForm.do" method="post" name="eventWriteForm1">
		<table style="margin-left: 630px; font-size: 30px; font-weight: bold;">
			<tr>
				<td style="font-size: 30px; font-weight: bold;">
					<img alt="..." src="../image/Ezen_Work.png" width="200px;" height="90px;">  						
				</td> 
				<td>이벤트 작성</td>
			</tr>
		</table>
		<div align="center">
		<table>
			<tr>
				<td colspan="2"><hr color="#28B4B4"></td>
			</tr>
			<tr>
				<th width="100px;"><span class="red">*</span>제목</th>
				<td width="500px;">
					<input type="text" name="subject" style="width: 450px;">
				</td>
			</tr>
			<tr>
				<th><span class="red">*</span>내용</th>
				<td>
					<textarea rows="" cols="" name="content"></textarea>
				</td>
			</tr>	
			<tr>
				<td colspan="2" align="center">
					<input type="image" src="../image/enroll.JPG" alt="등록" onclick="checkEventWrite(); return false;">
					<input type="image" src="../image/cancel.JPG" alt="돌아가기" onclick="back(); return false;"/>
				</td>
			</tr>
			</table>
		</div>
	</form>
</body>
</html>