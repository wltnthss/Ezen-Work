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
<style type="text/css">
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}

/* paging */
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
</style>
<script type="text/javascript">
	function isView(seq){
		location.href = "../member_resume/resumeViewForm.do?seq=" + seq + "&pg=" + ${pg}; 
	}
</script>
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
					<a href="../member_resume/resumeManageForm.do">이력서관리</a>
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
					<img src="../../storage/${dto1.image }" id="resumephoto" alt="">
				</div>
				<div class="who-photo__action">
					<!-- 사진없을 때 -->
					<span id="picReigst" style="">
						<a class="who-photo__action-regist" href="https://www.alba.co.kr/person/popup/PicRegistResume.asp?registreform=Y" onclick="window.open(this.href, 'popupName','width=567,height=740,top=0,left=0,status=no,scrollbars=yes,resizable=no'); return false"><span></span>사진등록</a>
					</span>
					<!-- //사진없을 때 -->
					<!-- 사진있을 때 -->
					<span id="picModify" style="display: none;">
						<a class="who-photo__action-modify" href="https://www.alba.co.kr/person/popup/PicRegistResume.asp" onclick="window.open(this.href, 'popupName','width=567,height=740,top=0,left=0,status=no,scrollbars=yes,resizable=no'); return false"><span></span>변경</a>
						<a class="who-photo__action-delete" href="#" onclick="delMainPhoto(); return false;"><span></span>삭제</a>
					</span>
					<!-- //사진있을 때 -->
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
					<a class="state-item__link state-item__link--Y" href="../member_resume/resumeManageForm.do">
						<span class="state-item__link-icon"><span></span></span>
						<span class="state-item__link-title">${dto1.title }</span>
						<span class="state-item__link-date">작성일 <em>${dto1.logtime }</em></span>
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
		<div class="listForm person-main__resumelist" style="padding-top: 35px;">
			<table id="resumelist" cellspacing="0" summary="내 이력서 목록">
				<thead>
					<tr>
						<th scope="col" class="num">이력서 번호</th>
						<th scope="col" class="title">이력서 제목</th>
						<th scope="col" class="date">작성일</th>
						<th scope="col" class="count">열람확인</th>
						<th scope="col" class="mag">이력서 관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="bean" items="${list }">
					<tr class="default"> 	
						<td class="num">  
							${bean.seq }
						</td> 	
						<td class="title">  
							<a href="#" id="subjectA" onclick="isView(${bean.seq})">${bean.title }</a>
						</td> 	
						<td class="date">
							${bean.logtime }
						</td> 	
						<td class="count">
							${bean.opencount }
						</td> 	
					
						<td class="mag">		
						<a class="button-type" href="../member_resume/resumeManageForm.do">관리</a> 	
					</tr> 
					</c:forEach>
					<!-- 페이지 표시 -->
					<tr>
						<td colspan="5" align="center">
							<c:if test="${startPage > 3 }">               
			                  [ <a  class="paging" href="mypageindex.do?pg=${startPage - 1}">이전</a> ]
			                </c:if>
			               
			               	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
			                  <c:if test="${pg == i }">                  
			                     [ <a class="currentPaging" href="mypageindex.do?pg=${i }">${i }</a> ]
			                  </c:if>
			                  
			                  <c:if test="${pg != i }">
			                     [ <a class="paging"  href="mypageindex.do?pg=${i }">${i }</a> ]   
			                  </c:if>
			               </c:forEach>
			               
			               	  <c:if test="${endPage < totalP }">               
			                  	 [ <a class="paging"  href="mypageindex.do?pg=${endPage + 1}">다음</a> ]
			                  </c:if>
						</td>
					</tr>					
				</tbody>
			</table>
			<a href="../member_resume/resumeManageForm.jsp" class="moreBtn">내 이력서 더보기<span></span></a>
		</div>
	</div>
	<!-- //subContents -->
</div>

</body></html>