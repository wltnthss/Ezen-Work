<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>접수완료</title>
<script type="text/javascript">
if(${result > 0}) {
	alert("신고 완료");
	location.href="reportList.do?pg=1";
} else {
	alert("신고 실패");
	history.back();
}	

</script>
</head>
<body>

</body>
</html>