<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고작성</title>
<link rel="stylesheet" href="../css/PersonRegist.css?v=1" type="text/css">
<link rel="stylesheet" href="../css/repute.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.css" type="text/css">
<style type="text/css">
html.pc .join-submit-btn{
    height: 54px;
    line-height: 54px;
}

.join-submit-btn{
	width: 100%;
    height: 70px;
    font-size: 25px;
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
					<a href="../../main/index.do"><img src="../image/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
				</h1>
			
				<ul class="headerLink">
					<li class="login"><a href="../../login/logout.do">로그아웃</a></li>	
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
					<li class="job on">
						<a href="../advertise/advertiseForm.jsp">공고등록</a>	
					</li>			
					<li class="brand">
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
				<h2>기본정보<span class="necessary">*</span></h2>
				<div class="registForm">
					<ul class="inputArea">
						<li class="areaSelect">
							<div class="regist__title"><strong>공고제목</strong></div>
							<div class="searchValue regist__item">
								<input type="text" id="title" name="ad_subject" value="" maxlength="40" autocomplete="off" placeholder="공고제목을 입력하세요" style="width: 620px;">
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>회사사진</strong></div>
							<div class="searchValue regist__item">
								<input type="file" id="title" name="image" value="" >
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>공고 내용</strong></div>
							<div class="searchValue regist__item">
								<textarea rows="15" cols="92" name="ad_content" placeholder="공고내용을 입력하세요"></textarea>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>모집인원</strong></div>
							<div class="searchValue regist__item">
								<input type="text" name="ad_num" size="5"> (명)
								<select name="numselect" onchange="change();" >
									<option value="direct">직접입력</option>
									<option value="00">인원미정</option>
								</select>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>성별</strong></div>
							<div class="searchValue regist__item">
								<input type="radio" name="gender" value="1">남
								<input type="radio" name="gender" value="2">여
								<input type="radio" name="gender" value="0" checked="checked"> 무관
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>모집나이</strong></div>
							<div class="searchValue regist__item">
								<input type="radio" name="age" value="20"> 20대
								<input type="radio" name="age" value="30"> 30대
								<input type="radio" name="age" value="40"> 40대
								<input type="radio" name="age" value="0" checked="checked"> 무관
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>근무 시간</strong></div>
							<div class="searchValue regist__item">
								<select name="ad_time">
									<option value="0">무관</option>
									<option value="9">오전9-오후6</option>
									<option value="6">오후12-오후6</option>
									<option value="7">오후3-오후10</option>
								</select>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>근무 기간</strong></div>
							<div class="searchValue regist__item">
								<input type="radio" name="ad_period" value="3"> 3개월
								<input type="radio" name="ad_period" value="6"> 6개월
								<input type="radio" name="ad_period" value="12"> 1년이상
								<input type="radio" name="ad_period" value="0" checked="checked"> 무관
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>지역</strong></div>
							<div class="searchValue regist__item">
								<input type="text" name="ad_area" id="title" value="" maxlength="40" autocomplete="off" placeholder="지역을 입력하세요" style="width: 620px;">
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>직종</strong></div>
							<div class="searchValue regist__item">
								<select name="ad_job">
									<option value="service">서비스</option>
									<option value="IT">IT.컴퓨터</option>
									<option value="design">디자인</option>
								</select>
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>시급</strong></div>
							<div class="searchValue regist__item">
								<input type="text" id="title" name="salary" value="" size="10" placeholder="ex) 8000">
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>회사명</strong></div>
							<div class="searchValue regist__item">
								<input type="text" id="title" name="cname" value="${cmemName}" readonly maxlength="40" autocomplete="off" style="width: 620px;">
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>기타</strong></div>
							<div class="searchValue regist__item">
								<textarea rows="15" cols="92" name="content" placeholder="기타내용을 입력하세요"></textarea>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
				<button type="button" class="join-submit-btn join-submit-btn--person" onclick="checkWrite()">공고문 등록 완료</button>
		</form>
		</div>
	</div>
</div>
</body>
</html>