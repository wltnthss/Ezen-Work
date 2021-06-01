<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result > 0}){
		alert("회원정보 수정 완료");	
	} else{
		alert("회원정보 수정 실패");
	}	
	location.href = "../member_mypage/mypageindex.do";
</script>
</head>
<body>

</body>
</html>