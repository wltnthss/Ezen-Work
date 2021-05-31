<%@page import="notice.bean.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 모양 나오게 만들기</title>
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
			<td><a href="#" id="subjectA"
				   onclick="isLogin(<%=dto.getSeq()%>)">
				   <%=dto.getSubject() %>
				</a></td>
			<td><%=dto.getId() %></td>
			<td><%=dto.getDate() %></td>
			<td><%=dto.getCount() %></td>
		</tr>
<% } %>

		<!-- 페이지 표시 -->
		<tr>
			<td colspan="5" align="center">
<% if(startPage > 3) {%>			
				[<a class="paging" href="boardList.jsp?pg=<%=startPage-1%>">이전</a>]
<% } %>

<% for(int i=startPage; i<=endPage; i++) { %>
	<% if(pg==i) { %>
				[<a class="currentPaging" href="boardList.jsp?pg=<%=i%>"><%=i%></a>]
	<% } else { %>
				[<a class="paging" href="boardList.jsp?pg=<%=i%>"><%=i%></a>]
	<% } %>
<% } %>

<% if(endPage < totalP) { %>
				[<a class="paging" href="boardList.jsp?pg=<%=endPage+1%>">다음</a>]
<% } %>				
			</td>
		</tr>
	</table>
</body>
</html>