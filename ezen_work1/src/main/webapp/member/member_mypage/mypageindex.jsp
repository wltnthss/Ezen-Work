<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko"><head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<title>마이페이지</title>
	<link rel="stylesheet" href="../../css/mypageCSS/sub.css" type="text/css">
	<link rel="stylesheet" href="../../css/mypageCSS/repute.css" type="text/css">
	<link rel="stylesheet" href="../../css/mypageCSS/person.css" type="text/css">
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
				<a href="../../main/index.jsp"><img src="../images/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
			</h1>
		
			<ul class="headerLink">				
						<li class="login"><a href="../../login/logout.do">로그아웃</a></li>			
						<li class="event"><a href="../../main/index.jsp">HOME</a></li>
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

<!-- subWrap-->
<div id="SubWrap">
	<!-- subContents -->
	<div id="SubContents" class="person-main">
		<div id="ReputeCareerList" class="displayNone" style="display: block;"></div>
		<div class="listForm person-main__resumelist" style="padding-top: 35px;">
			<table id="resumelist" cellspacing="0" summary="내 이력서 목록">
				<thead>
					<tr>
						<th scope="col" class="num" style="width: 100px;">이력서 번호</th>
						<th scope="col" class="title" style="width: 700px;">이력서 제목</th>
						<th scope="col" class="date" style="width: 200px;">작성일</th>
						<th scope="col" class="count" style="width: 150px;">열람확인</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="bean" items="${list }">
					<c:if test="${bean.id == id1 }">
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
					</tr> 
					</c:if>
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
		</div>
	</div>
	<!-- //subContents -->
</div>

</body></html>