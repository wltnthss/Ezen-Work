<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko" class=" js "><head>
<title>이력서 상세보기</title>
<link rel="stylesheet" href="../../css/resumeCSS/PersonRegist.css?v=1" type="text/css">
<link rel="stylesheet" href="../../css/resumeCSS/Repute.css" type="text/css">
<link rel="stylesheet" href="../../css/resumeCSS/jquery-ui.css" type="text/css">
<style type="text/css">
html.pc .join-submit-btn{
    height: 54px;
    line-height: 54px;
}

.join-submit-btn{
	width: 20%;
    height: 50px;
    margin-top: 20px;
    font-size: 15px;
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
					<a href="../../main/index.jsp"><img src="../image/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
				</h1>
			
				<ul class="headerLink">
					<li class="login"><a href="../../login/logout.do">로그아웃</a></li>	
					<li class="modify"><a href="../../main/index.jsp">HOME</a></li>
				</ul>
		</div>
		</div>
	
	</div>
<!-- subWrap-->
<div id="SubWrap">
	
	<!-- subContents -->
	<div id="SubContents">
		<!-- Contents -->
		<div id="Contents">
		<div id="step1">	
		<form name="resumeWriteForm" id="regResume" method="post" action="write.do" enctype="multipart/form-data">	
			<!-- 개인정보 -->
			<div id="RegistBaseInfo" class="registArea">
				<h2>기본정보<span class="necessary">*</span></h2>
				
				<div class="registForm">
					<div class="photoArea" style="margin-top: 5px;">
						<span class="photo" id="idmainresumephoto">
						</span>
						<!-- 사진아이콘 -->
						<span class="applyBtn">
							<!-- 사진있을 때 -->
								<img src="../../storage/${dto.image }" id="resumephoto" alt="프로필 이미지"  style="width: 112px; height="134px; margin-top: 5px;"> 
							<!-- //사진있을 때 -->
								
							<!-- 사진없을 때 -->
							<c:if test="${dto.image == null }">
								<span id="picReigst" style="">
									<a class="noImgReg"><span></span>사진등록</a>
									<input type="file" class="input_file" name="image">
								</span>
							</c:if>
							<!-- //사진없을 때 -->
						</span>
						<!-- //사진아이콘 -->
					</div>
					<div class="baseInfo">
						<table cellpadding="0" cellspacing="0">
							<caption>개인정보 항목표</caption>
							<tbody>
								<tr>
									<td class="who" colspan="2">
										<span class="name">${dto1.name}</span>
										<span class="genderAge">${dto1.gender}<em class="male"></em></span>
									</td>
								</tr>
								<tr><td colspan="2" class="blank"></td></tr>
								<tr>
									<td class="item">휴대폰</td>
									<td class="infoContents hpNumber">
										<div class="contentsBox">
											<span class="number" id="idResumeHtel">${dto1.tel}</span>									
										</div>
									</td>
								</tr>
								<tr>
									<td class="item">이메일</td>
									<td class="infoContents userEmail">
										<div class="contentsBox">
											${dto1.email}
										</div>
									</td>
								</tr>
								<tr>
									<td class="item">주소</td>
									<td class="infoContents address">
										<div class="contentsBox">
											<span class="shortText">
												${dto1.addr}
											</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<!-- //개인정보 -->
			<!-- //이력서 저장 불러오기 -->

			<!-- 이력서 제목 -->
		
			<div id="RegistTitle" class="registArea">
				<h2>이력서 제목<span class="necessary">*</span></h2>
				<div class="registForm registForm--title">
					${dto.title }
					
				</div>
			</div>
			<!-- //이력서 제목 -->

			<!-- 학력 -->
			<div id="RegistTitle01">
				<a href="#" class="fullsizeBtn" id="edu-fullsizeBtn" style="display:none"><span></span>학력</a>
				<div id="RegistEducation" class="registArea">
					<h2>
						학력<span class="necessary">*</span>
					</h2>
					<div class="registForm registForm--title">
						${dto.achieve }
					</div>
				</div>
			</div>
			<!-- //학력 -->

			<!-- 경력사항 -->
			<div id="RegistTitle02">
				<div id="RegistCareer" class="registArea">
					<h2>경력<span class="necessary">*</span></h2>
					<div class="regist__inner" id="careerCategory" style="">
						<div class="regist__title"><strong>경력구분</strong></div>
						<div class="regist__item regist__item-input">
							<div class="input">
								<c:if test="${dto. career == '신입'}">
									신입
								</c:if>
								<c:if test="${dto. career == '경력'}">
									경력
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div id="step2">
			<!-- 희망근무 조건 -->
						<div id="RegistTerms" class="registArea">
				<h2>희망근무 조건<span class="necessary">*</span></h2>
				<div class="registForm">
					<ul class="inputArea">
						<li class="areaSelect">
							<!-- 희망지역선택 -->
							<div class="regist__title"><strong>희망지역</strong></div>
							<div class="searchValue regist__item">
								${dto.loc }
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>나이</strong></div>
							<div class="searchValue regist__item">
								${dto.age }
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
				<button type="button" class="join-submit-btn join-submit-btn--person" onclick="location.href='../mypage/mypageForm.do'">뒤로가기</button>
		</form>
		</div>
		</div>
	</div>
</div>		
</body>
</html>