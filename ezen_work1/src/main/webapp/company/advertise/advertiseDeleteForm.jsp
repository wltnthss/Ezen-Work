<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">		
	if(confirm("공고삭제하시겠습니까?")){
		location.href="../advertise/advertiseDelete.do?num=${num}&pg=${pg}";
	} else {
		location.href="../advertise/advertiseView.do?num=${num}&pg=${pg}";
	}
</script>
</head>
<body>

</body>
</html>