<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 작성</title>
<script type="text/javascript">
	if(${result > 0}){
		alert("글 저장 완료");
		location.href="eventList.do?pg=1";
	} else {
		alert("글 저장 실패");
		location.href="history.back()";
	}
</script>
</head>
<body>

</body>
</html>