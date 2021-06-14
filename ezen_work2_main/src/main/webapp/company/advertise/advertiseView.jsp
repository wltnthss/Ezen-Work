<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고 상세보기</title>
<link rel="stylesheet" href="../css/PersonRegist.css?v=1" type="text/css">
<link rel="stylesheet" href="../css/repute.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.css" type="text/css">
<style type="text/css">
html.pc .join-submit-btn{
    height: 54px;
    line-height: 54px;
}

.join-submit-btn{
	width: 33%;
    height: 50px;
    font-size: 18px;
    background-color: #ffe000;
    font-style: bold;
}
button{
	padding: 0;
    font-family: "Apple SD Gothic Neo", "Malgun Gothic", Gulim, Sans-serif;
    font-size: 14px;
    line-height: 1.2;
    cursor: pointer;
    border: 0;
}
</style>
<script type="text/javascript" src="../../script/advertiseScript.js"></script>
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
					<a href="${pageContext.request.contextPath}/main/index.do"><img src="../image/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
				</h1>
			
				<ul class="headerLink">
					<li class="login"><a href="../login/logout.do">로그아웃</a></li>	
					<li class="modify"><a href="${pageContext.request.contextPath}/main/index.do">HOME</a></li>
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
	<div id="SubContents">
		<div id="Contents">
		<div id="step1">	
		<form action="advertise.do" id="regResume" method="post" name="advertiseForm" enctype="multipart/form-data">
		<div id="step2">
			<div id="RegistTerms" class="registArea">
				<h2>상세보기<span class="necessary">*</span></h2>
				<div class="registForm">
					<ul class="inputArea">
						<li class="areaSelect">
							<div class="regist__title"><strong>공고제목</strong></div>
							<div class="searchValue regist__item">
								${dto.ad_subject}
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>회사사진</strong></div>
							<div class="searchValue regist__item">
								<img alt="회사사진" src="../../storage/${dto.image}" width="180" height="130">
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>공고 내용</strong></div>
							<div class="searchValue regist__item">
								<pre>${dto.ad_content}</pre>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>모집인원</strong></div>
							<div class="searchValue regist__item">
								<c:if test="${dto.ad_num == '00'}">
									인원미정(00)
								</c:if>
								<c:if test="${dto.ad_num != '00'}">
									${dto.ad_num}
								</c:if>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>성별</strong></div>
							<div class="searchValue regist__item">
								<c:if test="${dto.gender == '1'}">
									남자
								</c:if>
								<c:if test="${dto.gender == '2'}">
									여자
								</c:if>
								<c:if test="${dto.gender == '0'}">
									성별무관
								</c:if>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>모집나이</strong></div>
							<div class="searchValue regist__item">
								<c:if test="${dto.age == '20'}">
									20대
								</c:if>
								<c:if test="${dto.age == '30'}">
									30대
								</c:if>
								<c:if test="${dto.age == '40'}">
									40대
								</c:if>
								<c:if test="${dto.age == '0'}">
									연령무관
								</c:if>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>근무 시간</strong></div>
							<div class="searchValue regist__item">
								<c:if test="${dto.ad_time == '0'}">
									시간무관
								</c:if>
								<c:if test="${dto.ad_time == '9'}">
									오전9-오후6
								</c:if>
								<c:if test="${dto.ad_time == '6'}">
									오후12-오후6
								</c:if>
								<c:if test="${dto.ad_time == '7'}">
									오후3-오후10
								</c:if>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>근무 기간</strong></div>
							<div class="searchValue regist__item">
								<c:if test="${dto.ad_period == '0'}">
									기간무관
								</c:if>
								<c:if test="${dto.ad_period == '3'}">
									3개월
								</c:if>
								<c:if test="${dto.ad_period == '6'}">
									6개월
								</c:if>
								<c:if test="${dto.ad_period == '12'}">
									1년이상
								</c:if>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>지역</strong></div>
							<div class="searchValue regist__item">
								${dto.ad_area}
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>직종</strong></div>
							<div class="searchValue regist__item">
								${dto.ad_job}
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>시급</strong></div>
							<div class="searchValue regist__item">
								${dto.salary}
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>회사명</strong></div>
							<div class="searchValue regist__item">
								${dto.cname}
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>기타</strong></div>
							<div class="searchValue regist__item">
								<pre>${dto.content}</pre>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
				<input type="button" class="join-submit-btn join-submit-btn--person" value="목록" onclick="location.href='advertiseList.do?pg=${pg}'">
				<input type="button" class="join-submit-btn join-submit-btn--person" value="글수정" onclick="location.href='advertiseModifyForm.do?num=${num}&pg=${pg}'">		
				<input type="button" class="join-submit-btn join-submit-btn--person" value="글삭제" onclick="location.href='advertiseDeleteForm.do?num=${num}&pg=${pg}'">	 
		</form>
		</div>
	</div>
	</div>
</div>
</body>
</html>