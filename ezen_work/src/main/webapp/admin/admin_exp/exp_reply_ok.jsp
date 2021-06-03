<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result>0}){
		location.href="job_experience_view_reply.do?pg=${pg}&seq=${seq}";		
	}else{
		history.back();
	}
</script>
</head>
<body>

</body>
</html>