<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko" class=" js "><head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>이력서 작성</title>
<link rel="stylesheet" href="../css/resumeCSS/PersonRegist.css" type="text/css">
<link rel="stylesheet" href="../css/resumeCSS/Repute.css" type="text/css">
<link rel="stylesheet" href="../css/resumeCSS/jquery-ui.css" type="text/css">
<meta name="referrer" content="always">

</head>

<body id="RegistStep" class="registStep" cz-shortcut-listen="true">

<!-- Global -->
<div id="Global">

	<ul class="skipNav">
	
		<li><a href="#HeaderMenu">상단 주요메뉴 바로가기</a></li>
	
		<li><a href="#SubWrap">본문 바로가기</a></li>
	
		<li><a href="#Footer">하단 메뉴 바로가기</a></li>
	</ul>


	<!-- Header -->
	<div id="Header">
			<h1 class="headerBi">
				<a href="../member_main/index.jsp"><img src="../images/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
			</h1>
		
			<ul class="headerLink">
				<li class="login"><a href="../member_login/logout.do">로그아웃</a></li>	
				<li class="modify"><a href="../member_main/index.jsp">HOME</a></li>
			</ul>
	</div>
	<!-- //Header -->


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
			<!-- //알바스토리 /rsc/inc/common/GlobalMenuStory.inc 중복 관리 -->
		</div>
		<!-- //HeaderMenu -->
	</div>

</div>
<!-- //Global -->

<!-- subWrap-->
<div id="SubWrap">
	<!-- subContents -->
	<div id="SubContents">
		<!-- Contents -->
		<form name="writeForm" id="regResume" method="post" action="write.do">
		<div id="Contents">
		<div id="step1">		
			<!-- 개인정보 -->
			<div id="RegistBaseInfo" class="registArea">
				<h2>기본정보<span class="necessary">*</span></h2>
				<span class="topBtn">
					<a href="../member_modify/memberModifyForm.do" class="btn modify">회원정보 수정</a>
				</span>
				<div class="registForm">
					<div class="photoArea">
						<span class="photo" id="idmainresumephoto">
						<a href="https://www.alba.co.kr/person/popup/PicRegistResume.asp" onclick="window.open(this.href, 'popupName','width=567,height=740,top=0,left=0,status=no,scrollbars=no,resizable=no'); return false">
						<img id="resumephoto" src="//image.alba.kr/person/profile_no_male.png" alt=""></a>
						</span>
						<!-- 사진아이콘 -->
						<span class="applyBtn">
							<!-- 사진없을 때 -->
							<span id="picReigst" style="">
								<a class="noImgReg" href="https://www.alba.co.kr/person/popup/PicRegistResume.asp?registreform=Y" onclick="window.open(this.href, 'popupName','width=567,height=740,top=0,left=0,status=no,scrollbars=yes,resizable=no'); return false"><span></span>사진등록</a>
							</span>
							<!-- //사진없을 때 -->
							<!-- 사진있을 때 -->
							<span id="picModify" style="display: none;">
								<span class="modifyBtn">
									<a class="imgModify" href="https://www.alba.co.kr/person/popup/PicRegistResume.asp" onclick="window.open(this.href, 'popupName','width=567,height=740,top=0,left=0,status=no,scrollbars=yes,resizable=no'); return false"><span></span>변경</a>
									<a class="imgdel" href="#" onclick="delMainPhoto(); return false;"><span></span>삭제</a>
								</span>
							</span>
							<!-- //사진있을 때 -->
						</span>
						<!-- 사진아이콘 -->
					</div>
					<div class="baseInfo">
						<table cellpadding="0" cellspacing="0">
							<caption>개인정보 항목표</caption>
							<tbody>
								<tr>
									<td class="who" colspan="2">
										<span class="name">${dto.name }</span>
										<span class="genderAge"><em class="male">${dto.gender }</em></span>
									</td>
								</tr>
								<tr><td colspan="2" class="blank"></td></tr>
								<tr>
									<td class="item">휴대폰</td>
									<td class="infoContents hpNumber">
										<div class="contentsBox">
											<span class="number" id="idResumeHtel">${dto.tel }</span>									
										</div>
									</td>
								</tr>
								<tr>
									<td class="item">이메일</td>
									<td class="infoContents userEmail">
										<div class="contentsBox">
											${dto.email }
										</div>
									</td>
								</tr>
								<tr>
									<td class="item">주소</td>
									<td class="infoContents address">
										<div class="contentsBox">
											<span class="shortText">
												${dto.addr }
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
					<input type="text" id="title" name="title" value="" maxlength="25" autocomplete="off">
					<label for="title">나를 표현할 한마디를 적어보세요 (최대 25자)</label>
				</div>
			</div>
			<!-- //이력서 제목 -->

			<!-- 학력 -->
			<div id="RegistTitle01">
				<a href="#" class="fullsizeBtn" onclick="_REGFRM.showfield('RegistEducation', this); return false;" id="edu-fullsizeBtn" style="display:none"><span></span>학력</a>
				<div id="RegistEducation" class="registArea">
					<h2>
						학력<span class="necessary">*</span>
					</h2>
				<div class="registForm registForm--title">
					<input type="text" id="title" name="achieve" value="" maxlength="40" autocomplete="off" placeholder="학력을 입력하세요" required="required" style="width: 728px;">
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
							<span class="input">
								<input type="radio" id="newcomer" name="career" value="신입">
								<label for="newcomer">신입</label>
							</span>
							<span class="input">
								<input type="radio" id="careercomer" name="career" value="경력" check>
								<label for="careercomer">경력</label>
							</span>
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
								<input type="text" id="title" name="loc" value="" maxlength="40" autocomplete="off" placeholder="희망지역을 입력하세요" required="required" style="width: 620px;">
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>나이</strong></div>
							<div class="searchValue regist__item">
								<input type="text" id="title" name="age" value="" maxlength="40" autocomplete="off" placeholder="나이를 입력하세요" required="required" style="width: 620px;">
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
			<p class="completeBtn">
				<a href="#" class="btn reviewBtn" onclick="preSave('RegistResume'); return false;">미리보기</a>
				<a href="#" class="btn yellowBtn" onclick="doSubmit(); return false;">이력서 작성 완료</a>
			</p>
		</div>
		</div>
		</form>
	</div>
</div>		
</body>
</html>