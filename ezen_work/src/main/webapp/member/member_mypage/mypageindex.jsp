<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	height: 100%
}
ul, li{
	list-style: none;
	display: inline-block;
}
table{
	margin-left: auto;
	margin-right: auto;
}
a{
	text-decoration: none;
}
#profile{
	
}
.headerLink{
	position: absolute;
	top: 30px;
	right: 30px;
}
#wrap{
	text-align: center;
}
.header_person_who{
	display: block;
}


</style>
</head>
<body>
		<div id="wrap">
			<div id="header">
				<h1 class="logo">마이페이지</h1>
				<hr>
				
				<div class="topnav">
					<ul class="headerLink">
						<li class="resume">
							<a href="../member_resume/writeForm.jsp">이력서작성</a>
						</li>
						<li class="modify">
							<a href="../member_modify/modifyForm.jsp">개인정보수정</a>
						</li>
					</ul>
				</div>
			
				<div class="header_person_who">
						<div class="header_person_who_picture" id="profile">
							<img alt="프로필 이미지" src="../../img/profile.png">
						</div>
					
						<div class="who_photo_action">
							<input type="file" name="profile_pt" id="profile_pt" onchange="previewImage(this,'View_area')">
							<div id='View_area' color: black; border: 0px solid black;'></div>
						</div>
						
						<div class="header_person_who_name">
							<strong>
								<%=request.getAttribute("name") %>
							</strong>
						</div>
						<div class="header_person_who_modify">
							<input type="button" value="개인정보수정" onclick="location.href='../member_modify/modifyForm.jsp'">	
						</div>
				</div>	
		
				<ul class="header_resume">
					<li class="header_person_resume">
						<a href="#">이력서 제목 입력</a>
					</li>
				</ul>
			</div>	
		<!-- //header_person -->
		
			<div id="content">
				<div class="resumelistForm">
					<div class="resumeForm_title">
						<span>내 이력서 : 총 1개</span>
					</div>
					
					<table id="resumelist" >
						<thead>
							<tr>
								<th class="title">이력서 제목</td>
								<th class="date">작성일</td>
								<th class="mng">이력서 관리</td>
							</tr>
						</thead>
						
						<tbody>
							<tr class="default">
								<td class="title">이력서 제목</td>
								<td class="date">이력서 작성일</td>
								<td class="mng">
									<button class="modify" onclick="location.href='../member_resume/modifyForm.jsp'">수정</button>
								</td>			
							</tr>
						</tbody>
					</table>
				</div>
			</div>	
		<!-- //content_resume -->
		</div>
</body>
</html>