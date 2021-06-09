<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고목록</title>
<link rel="stylesheet" href="../css/sub.css" type="text/css">
<link rel="stylesheet" href="../css/repute.css" type="text/css">
<link rel="stylesheet" href="../css/person.css?v=6" type="text/css">
<style type="text/css">
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}
/* paging */
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
</style>
</head>
<body id="RegistStep" class="registStep">
	<div id="Global">
		<ul class="skipNav">
			<li><a href="#HeaderMenu">상단 주요메뉴 바로가기</a></li>
			<li><a href="#SubWrap">본문 바로가기</a></li>
			<li><a href="#Footer">하단 메뉴 바로가기</a></li>
		</ul>
		<!-- Header -->
		<div id="Header">
				<h1 class="headerBi">
					<a href="../../main/index.do"><img src="../image/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
				</h1>
			
				<ul class="headerLink">
					<li class="login"><a href="../login/logout.do">로그아웃</a></li>	
					<li class="modify"><a href="../../main/index.do">HOME</a></li>
				</ul>
		</div>
	
		<div id="HeaderMenuWrap">
			<!-- HeaderMenu -->
			<div id="HeaderMenu">
						<!-- 알바스토리 /rsc/inc/common/GlobalMenuStory.inc 중복 관리 -->
				<ul class="headerMenu headerMenu--login">
					<li class="person">
						<a href="../mypage/mypageForm.do"><span></span>마이페이지</a>	
					</li>		
					<li class="job">
						<a href="../advertise/advertiseForm.jsp">공고등록</a>	
					</li>			
					<li class="brand on">
						<a href="../advertise/advertiseList.do">공고관리</a>
					</li>		
					<li class="story">
						<a href="../regist/memberModify1.do">개인정보수정</a>
					</li>	
				</ul>
				<!-- //알바스토리 /rsc/inc/common/GlobalMenuStory.inc 중복 관리 -->
			</div>
			<!-- //HeaderMenu -->
		</div>
	
	</div>
<div id="SubWrap">
	<!-- subContents -->
	<div id="SubContents" class="person-main">
		<div id="ReputeCareerList" class="displayNone" style="display: block;"></div>
		<div class="listForm person-main__resumelist" style="padding-top: 35px;">
			<table id="resumelist" cellspacing="0" summary="내 공고 목록">
				<thead>
					<tr>
						<th scope="col" class="num">글번호</th>
						<th scope="col" class="title">회사사진</th>
						<th scope="col" class="date">글제목</th>
						<th scope="col" class="count">시급</th>
						<th scope="col" class="count">등록일자</th>
						<th scope="col" class="mag">공고 관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${list }">
					<tr class="default"> 	
						<td class="num">  
							${dto.num }
						</td> 	
						<td class="title"> 
							<img alt="회사사진" src="../../storage/${dto.image}" width="100" height="50">
						</td> 	
						<td class="date">
							${dto.ad_subject}
						</td> 	
						<td class="count">
							${dto.salary}
						</td>
						<td class="date">
							${dto.advertise_date}
						</td>
						<td class="mag">		
							<a class="button-type" href="advertiseView.do?num=${dto.num}&pg=${pg}">관리</a> 
						</td>
					</tr> 
					</c:forEach>
			<tr>
				<td colspan="6" align="center">
					<c:if test="${startPage > 3 }">
						[<a class="paging" href="advertiseList.do?pg=${startPage-1}">이전</a>]
					</c:if>
					
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${pg == i }">
							[<a class="currentPaging" href="advertiseList.do?pg=${i }">${i }</a>]
						</c:if>
						<c:if test="${pg != i }">
							[<a class="paging" href="advertiseList.do?pg=${i }">${i }</a>]  
						</c:if>
					</c:forEach>
					
					<c:if test="${endPage <totalP }">
						[<a class="paging" href="advertiseList.do?pg=${endPage+1}">다음</a>]
					</c:if>
				</td>
			</tr>
		</tbody>
		</table>
		</div>
			</div>
		</div>
</body>
</html>