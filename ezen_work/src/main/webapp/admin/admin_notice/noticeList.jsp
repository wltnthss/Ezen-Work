<%@page import="notice.bean.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@page import="notice.DAO.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//데이터
	int pg = Integer.parseInt(request.getParameter("pg"));
	System.out.println("pg = " + pg);
	
	int endNum = pg * 5;
	int startNum = endNum - 4;
	
	NoticeDAO dao = new NoticeDAO();
	List<NoticeDTO> list = dao.noticeList(startNum, endNum);
	
	int totalA = dao.getTotalA();  // 총글수 구하기
	int totalP = (totalA + 4) / 5; // 총페이지수 구하기
	
	int startPage = (pg-1)/3*3 + 1;
	int endPage = startPage + 2;
	if(endPage > totalP) endPage = totalP;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function isLogin(seq) {
		<%if(session.getAttribute("memId") == null) {%>
			alert("먼저 로그인 하세요.");
		<%} else {%>
			location.href = "noticeView.jsp?seq=" + seq + "&pg=" + <%=pg%>;
		<%}%>
}
</script>
</head>
<body>
	<table border="1">
		<tr bgcolor="ffff00">
			<th width="70">글번호</th>
			<th width="200">제목</th>
			<th width="100">작성자</th>
			<th width="100">작성일</th>
			<th width="70">조회수</th>
		</tr>
<%
for(NoticeDTO dto : list) {
%>
		<tr bgcolor="ffffcc" align="center">
			<td><%=dto.getSeq() %></td>
			<td><%=dto.getId() %></td>
			<td><a href="#" id="subjectA"
				   onclick="isLogin(<%=dto.getSeq()%>)">
				   <%=dto.getSubject() %>
				</a></td>
			<td><%=dto.getContent() %></td>
			<td><%=dto.getDay() %></td>
			<td><%=dto.getCount() %></td>
		</tr>
<% } %>

		<!-- 페이지 표시 -->
		<tr>
			<td colspan="5" align="center">
<% if(startPage > 3) {%>			
				[<a class="paging" href="noticeList.jsp?pg=<%=startPage-1%>">이전</a>]
<% } %>

<% for(int i=startPage; i<=endPage; i++) { %>
	<% if(pg==i) { %>
				[<a class="currentPaging" href="noticeList.jsp?pg=<%=i%>"><%=i%></a>]
	<% } else { %>
				[<a class="paging" href="noticeList.jsp?pg=<%=i%>"><%=i%></a>]
	<% } %>
<% } %>

<% if(endPage < totalP) { %>
				[<a class="paging" href="noticeList.jsp?pg=<%=endPage+1%>">다음</a>]
<% } %>				
			</td>
		</tr>
	</table>
</body>
</html>