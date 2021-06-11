<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">		
	if(confirm("회원탈퇴하시겠습니까?")){
		location.href="../regist/delete.do";
	} else {
		location.href="../mypage/mypageForm.jsp";
	}
</script>
</head>
<body>

</body>
</html>