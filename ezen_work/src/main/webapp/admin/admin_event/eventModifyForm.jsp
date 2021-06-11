<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<script type="text/javascript">
function checkEventModify(){
	var frm = document.eventModifyForm;

	if(!frm.subject.value){
		alert("수정할 제목을 입력하세요.");
		frm.subject.focus();
	} else if(!frm.content.value){
		alert("수정할 내용을 입력하세요.");
		frm.content.focus();
	} else {
		frm.submit();
	}
</script>
</head>
<body>
	<form action="eventModifydo.do" name="eventModifyForm" method="post">
		<input type="hidden" name="seq" value="${seq}">
		<input type="hidden" name="pg" value="${pg}">
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject" size="43" value="${eventDTO.subject}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="15" cols="45" name="content">${eventDTO.content}</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="글수정" onclick="checkEventModify();">
					<input type="reset" value="다시 작성">
					<input type="button" value="목록" onclick="location.href='eventList.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>