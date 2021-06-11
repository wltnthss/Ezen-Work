<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result>0}){
		alert("게시글 수정 완료");
		location.href="job_experience_main.do?pg=${pg}";
	}else{
		alert("수정 실패");
		history.back();
	}
</script>		
</head>
<body>

</body>
</html>