<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result>0}){
		alert("게시글 등록 완료");
		location.href="noticeList.do";
	}else{
		alert("게시글 등록 실패 관리자에게 문의해주세요.");
		history.back();
	}
</script>
</head>
<body>

</body>
</html>