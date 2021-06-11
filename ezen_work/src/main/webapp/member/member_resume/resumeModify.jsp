<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result > 0}){
		alert("이력서 수정 완료");
		location.href = "../member_mypage/mypageindex.do";	
	} else{
		alert("수정에 실패했습니다");
		history.back();
	}
	
</script>
</head>
<body>

</body>
</html>