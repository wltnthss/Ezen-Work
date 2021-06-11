<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result > 0}){
		alert("이력서 지원 완료");	
	} else{
		alert("이력서 지원 실패");
	}	
	location.href = "${pageContext.request.contextPath}/member/member_apply/memberAdList.do";
</script>
</head>
<body>

</body>
</html>