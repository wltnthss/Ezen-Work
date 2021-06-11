<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>접수완료</title>
<script type="text/javascript">
if(${result > 0}) {
	alert("접수 완료");
	self.close();
} else {
	alert("신고 실패");
	history.back();
}	

</script>
</head>
<body>
</body>
</html>