<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="../css/sub.css" type="text/css">
<link rel="stylesheet" href="../css/repute.css" type="text/css">
<link rel="stylesheet" href="../css/person.css" type="text/css">
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
		location.href = "../mypage/resumeView.do?seq=" + seq + "&pg=" + ${pg}; 
	}
</script>
<body  id="PersonMain" class="person">
	<!-- Global -->
<div id="Global">
	<!-- Header -->
	<div id="Header">	
			<h1 class="headerBi">
				<a href="../../main/index.do"><img src="../image/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
			</h1>
		
			<ul class="headerLink">				
						<li class="login"><a href="../../login/logout.do">로그아웃</a></li>			
						<li class="event"><a href="../../main/index.do">HOME</a></li>
			</ul>	
	</div>
		<div id="HeaderMenuWrap">
		<!-- HeaderMenu -->
		<div id="HeaderMenu">
					<!-- 알바스토리 /rsc/inc/common/GlobalMenuStory.inc 중복 관리 -->
			<ul class="headerMenu headerMenu--login">				
				<li class="person on">
					<a href="../mypage/mypageForm.do"><span></span>마이페이지</a>	
				</li>		
				<li class="job">
					<a href="../advertise/advertiseForm.do">공고등록</a>	
				</li>		
				<li class="brand">
					<a href="../advertise/advertiseList.do">공고관리</a>
				</li>		
				<li class="story">
					<a href="../regist/memberModify1.do">개인정보수정</a>
				</li>				
			</ul>
		</div>
		</div>
	</div>
	<iframe src="" name="photoAlbum" id="photoAlbum" width="0" height="0" frameborder="0" scrolling="no" style="display:none;"></iframe>
<!-- PersonHead -->
<div id="PersonHead1" class="person-head">
	<input type="hidden" id="hidmainphotoidx" name="hidmainphotoidx" value="">
	<div class="person-head__wrap">
		<div class="person-head__who">
			<div class="person-head__who-name">
				<strong>${dto.cname }</strong>
			</div>
			<a href="../regist/memberModify1.do" class="person-head__who-modify">개인정보수정</a>
		</div>

		<ul class="person-head__state">
			<li class="person-head__state-item--resume">				
						<span class="state-item__link-title">${dto.email} @ ${dto.email2}</span>
						<span class="state-item__link-date"><em>${dto.tel} - ${dto.tel2} - ${dto.tel3}</em></span>
			</li>
		</ul>
	</div>
</div>
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
						<th scope="col" class="count">회원아이디</th>
						<th scope="col" class="mag">이력서 확인</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="bean" items="${list}">
					<tr class="default"> 	
						<td class="num">  
							${bean.seq}
						</td> 	
						<td class="title">  
							${bean.title}
						</td> 	
						<td class="date">
							${bean.logtime}
						</td> 	
						<td class="count">
							${bean.id}
						</td> 	
						<td class="mag">		
						<a class="button-type" href="#"id="subjectA" onclick="isView(${bean.seq})">확인</a> 	<!-- 이력서상세보기 주소 -->
					</tr> 
					</c:forEach>
					<!-- 페이지 표시 -->
					<tr>
						<td colspan="5" align="center">
							<c:if test="${startPage > 3 }">               
			                  [ <a  class="paging" href="mypageForm.do?pg=${startPage - 1}">이전</a> ]
			                </c:if>
			               
			               	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
			                  <c:if test="${pg == i }">                  
			                     [ <a class="currentPaging" href="mypageForm.do?pg=${i }">${i }</a> ]
			                  </c:if>
			                  
			                  <c:if test="${pg != i }">
			                     [ <a class="paging"  href="mypageForm.do?pg=${i }">${i }</a> ]   
			                  </c:if>
			               </c:forEach>
			               
			               	  <c:if test="${endPage < totalP }">               
			                  	 [ <a class="paging"  href="mypageForm.do?pg=${endPage + 1}">다음</a> ]
			                  </c:if>
						</td>
					</tr>					
				</tbody>
			</table>
		</div>
	</div>
	<!-- //subContents -->
</div>
</body>
</html>