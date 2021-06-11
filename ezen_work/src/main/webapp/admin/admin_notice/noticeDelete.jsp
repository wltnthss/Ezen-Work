<%@page import="notice.dao.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 삭제하기</title>
<script type="text/javascript">
	if(${result} > 0) {
		alert("삭제 완료");
		location.href="noticeList.do?pg=${pg}";
	} else {
		alert("삭제 실패");
		location.href="noticeView.do?seq=${seq}&pg=${pg}";
	}
</script>
</head>
<body>

</body>
</html>