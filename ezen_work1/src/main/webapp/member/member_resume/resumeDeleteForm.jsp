<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result > 0}) {
		alert("삭제되었습니다.");
		location.href="resumeManageForm.do?pg=${pg}";
	} else {
		alert("삭제 실패입니다.");
		location.href="resumeManageForm.do?seq=${seq}&pg=${pg}";
	}
</script>
</head>
<body>

</body>
</html>