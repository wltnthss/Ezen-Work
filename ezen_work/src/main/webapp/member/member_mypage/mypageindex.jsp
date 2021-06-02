<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko"><head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<title>마이페이지</title>
	<link rel="stylesheet" href="../css/mypageCSS/sub.css" type="text/css">
	<link rel="stylesheet" href="../css/mypageCSS/repute.css" type="text/css">
	<link rel="stylesheet" href="../css/mypageCSS/person.css" type="text/css">
	<meta name="referrer" content="always">

</head>

<body id="PersonMain" class="person" cz-shortcut-listen="true">
<!-- Global -->
<div id="Global">
	<!-- Header -->
	<div id="Header">	
			<h1 class="headerBi">
				<a href="../member_main/index.jsp"><img src="../images/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
			</h1>
		
			<ul class="headerLink">				
						<li class="login"><a href="../member_login/logout.do">로그아웃</a></li>			
						<li class="event"><a href="../member_main/index.jsp">HOME</a></li>
			</ul>	
	</div>
	<div id="HeaderMenuWrap">
		<!-- HeaderMenu -->
		<div id="HeaderMenu">
					<!-- 알바스토리 /rsc/inc/common/GlobalMenuStory.inc 중복 관리 -->
			<ul class="headerMenu headerMenu--login">				
				<li class="person on">
					<a href="../member_mypage/mypageindex.do"><span></span>마이페이지</a>	
				</li>		
				<li class="job">
					<a href="../member_resume/resumeWriteForm.do">이력서등록</a>	
				</li>			
				<li class="brand">
					<a href="../member_resume/resumeManageForm.jsp">이력서관리</a>
				</li>		
				<li class="story">
					<a href="../member_modify/memberModifyForm.do">개인정보수정</a>
				</li>				
			</ul>
		</div>
		<!-- //HeaderMenu -->
	</div>
	<!-- //Header -->
</div>
<!-- //Global -->
<iframe src="" name="photoAlbum" id="photoAlbum" width="0" height="0" frameborder="0" scrolling="no" style="display:none;"></iframe>
<!-- PersonHead -->
<div id="PersonHead1" class="person-head">
	<input type="hidden" id="hidmainphotoidx" name="hidmainphotoidx" value="">
	<div class="person-head__wrap">
		<div class="person-head__who">
			<div class="person-head__who-photo">
				<div class="who-photo__picture" id="idmainresumephoto">
					<img src="../../storage/${dto1.image }" id="resumephoto" alt="프로필 이미지">
				</div>		
			</div>
			<div class="person-head__who-name">
				<strong>${dto.name }</strong>
				<em class="num">${dto.gender }</em>
			</div>
			<a href="../member_modify/memberModifyForm.do" class="person-head__who-modify" target="_blank">개인정보수정</a>
		</div>

		<ul class="person-head__state">
			<li class="person-head__state-item--resume">				
					<a class="state-item__link state-item__link--Y" href="/resume/Detail.asp?adid=5035210">
						<span class="state-item__link-icon"><span></span></span>
						<span class="state-item__link-title">${dto1.title }</span>
						<span class="state-item__link-date">작성일 <em>${dto1.logtime}</em></span>
					</a>
			</li>
		</ul>
	</div>
</div>
<!-- //PersonHead -->

<!-- subWrap-->
<div id="SubWrap">
	<!-- subContents -->
	<div id="SubContents" class="person-main">
		<div id="ReputeCareerList" class="displayNone" style="display: block;"></div>
		<script type="text/javascript">
			ReputeCLS.viewReputeCareerList();
		</script>

		<div class="listForm person-main__resumelist" style="padding-top: 35px;">
			<table id="resumelist" cellspacing="0" summary="내 이력서 목록">
				<thead>
					<tr>
						<th scope="col" class="title">이력서 제목</th>
						<th scope="col" class="date">작성일</th>
						<th scope="col" class="count">열람확인</th>
						<th scope="col" class="mag">이력서 관리</th>
					</tr>
				</thead>
				<tbody>
					<tr class="default"> 	
						<td class="title">  
							<a href="/resume/Detail.asp?adid=5035210">${dto1.title }</a>
						</td> 	
						<td class="date">
							${dto1.logtime }
						</td> 	
						<td class="count">
							${dto1.opencount }
						</td> 	
						<td class="mag">		
						<a class="button-type" href="../member_resume/resumeModifyForm.jsp">수정</a> 	
					</tr> 
				</tbody>
			</table>
			<a href="../member_resume/resumeManageForm.jsp" class="moreBtn">내 이력서 더보기<span></span></a>
		</div>
	</div>
	<!-- //subContents -->
</div>

</body></html>