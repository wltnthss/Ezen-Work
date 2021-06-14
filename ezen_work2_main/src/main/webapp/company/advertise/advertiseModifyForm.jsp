<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고수정</title>
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
<script type="text/javascript">
function checkModify(){
   var frm = document.advertiseModifyForm;
   
   if(!frm.ad_subject.value){
      alert("공고 제목을 입력해주세요")
      frm.ad_subject.focus();
   }else if(!frm.ad_content.value){
      alert("공고 내용을 입력해주세요")
      frm.ad_content.focus();
   }else if(!frm.image.value){
      alert("사진을 넣어주세요")
      frm.image.focus();
   }else if(frm.numselect.value == "0"){
      alert("인원수중 하나를 선택해주세요.");
      frm.numselect.focus();
   }else if(frm.ad_time.value == "0"){
      alert("시간중 하나를 선택해주세요.");
      frm.ad_time.focus();
    }else if(!frm.ad_area.value){
      alert("위치(지역)을 입력해주세요")
      frm.ad_area.focus();
   }else if(frm.ad_job.value == "00"){
      alert("직종중 하나를 선택해주세요.");
      frm.ad_job.focus();
   }else if(!frm.salary.value){
      alert("시급을 입력해주세요")
      frm.salary.focus();
    }else {      
      frm.submit();
   }
}
</script>
</head>
<body>
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
   
   <div id="SubContents">
      <div id="Contents">
      <div id="step1">   
   <form action="advertiseModify.do?num=${num}&pg=${pg}" id="regResume" method="post" name="advertiseModifyForm" enctype="multipart/form-data">
   <div id="step2">
         <div id="RegistTerms" class="registArea">
            <h2>기본정보수정<span class="necessary">*</span></h2>
            <div class="registForm">
               <ul class="inputArea">
                  <li class="areaSelect">
                     <div class="regist__title"><strong>공고제목</strong></div>
                     <div class="searchValue regist__item">
                        <input type="text" id="title" name="ad_subject" value="${dto.ad_subject}" maxlength="40" autocomplete="off" placeholder="공고제목을 입력하세요" style="width: 620px;">
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
                        <textarea rows="15" cols="92" name="ad_content" placeholder="공고내용을 입력하세요">${dto.ad_content}</textarea>
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
                     <c:if test="${dto.gender == '1'}">
                        <input type="radio" name="gender" value="1" checked="checked">남
                        <input type="radio" name="gender" value="2">여
                        <input type="radio" name="gender" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.gender == '2'}">
                        <input type="radio" name="gender" value="1">남
                        <input type="radio" name="gender" value="2" checked="checked">여
                        <input type="radio" name="gender" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.gender == '0'}">
                        <input type="radio" name="gender" value="1">남
                        <input type="radio" name="gender" value="2">여
                        <input type="radio" name="gender" value="0" checked="checked"> 무관
                     </c:if>
                     </div>
                  </li>
                  <li>
                     <div class="regist__title"><strong>모집나이</strong></div>
                     <div class="searchValue regist__item">
                     <c:if test="${dto.age == '20'}">
                        <input type="radio" name="age" value="20" checked="checked"> 20대
                        <input type="radio" name="age" value="30"> 30대
                        <input type="radio" name="age" value="40"> 40대
                        <input type="radio" name="age" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.age == '30'}">
                        <input type="radio" name="age" value="20"> 20대
                        <input type="radio" name="age" value="30" checked="checked"> 30대
                        <input type="radio" name="age" value="40"> 40대
                        <input type="radio" name="age" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.age == '40'}">
                        <input type="radio" name="age" value="20"> 20대
                        <input type="radio" name="age" value="30"> 30대
                        <input type="radio" name="age" value="40" checked="checked"> 40대
                        <input type="radio" name="age" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.age == '0'}">
                        <input type="radio" name="age" value="20"> 20대
                        <input type="radio" name="age" value="30"> 30대
                        <input type="radio" name="age" value="40"> 40대
                        <input type="radio" name="age" value="0" checked="checked"> 무관
                     </c:if>
                     </div>
                  </li>
                  <li>
                     <div class="regist__title"><strong>근무 시간</strong></div>
                     <div class="searchValue regist__item">
                        <select name="ad_time">
                           <option value="0">--선택해주세요.--</option>
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
                     <c:if test="${dto.ad_period == '3'}">
                        <input type="radio" name="ad_period" value="3" checked="checked"> 3개월
                        <input type="radio" name="ad_period" value="6"> 6개월
                        <input type="radio" name="ad_period" value="12"> 1년이상
                        <input type="radio" name="ad_period" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.ad_period == '6'}">
                        <input type="radio" name="ad_period" value="3"> 3개월
                        <input type="radio" name="ad_period" value="6" checked="checked"> 6개월
                        <input type="radio" name="ad_period" value="12"> 1년이상
                        <input type="radio" name="ad_period" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.ad_period == '12'}">
                        <input type="radio" name="ad_period" value="3"> 3개월
                        <input type="radio" name="ad_period" value="6"> 6개월
                        <input type="radio" name="ad_period" value="12" checked="checked"> 1년이상
                        <input type="radio" name="ad_period" value="0"> 무관
                     </c:if>
                     <c:if test="${dto.ad_period == '0'}">
                        <input type="radio" name="ad_period" value="3"> 3개월
                        <input type="radio" name="ad_period" value="6"> 6개월
                        <input type="radio" name="ad_period" value="12"> 1년이상
                        <input type="radio" name="ad_period" value="0" checked="checked"> 무관
                     </c:if>
                     </div>
                  </li>
                  <li>
                     <div class="regist__title"><strong>지역</strong></div>
                     <div class="searchValue regist__item">
                        <input type="text" name="ad_area" id="title" value="${dto.ad_area}" maxlength="40" autocomplete="off" placeholder="지역을 입력하세요" style="width: 620px;">
                     </div>
                  </li>
                  <li>
                     <div class="regist__title"><strong>직종</strong></div>
                     <div class="searchValue regist__item">
                        <select name="ad_job">
                           <option value="00">--선택해주세요.--</option>
                           <option value="주방보조설거지">주방보조설거지</option>
                           <option value="서빙">서빙</option>
                           <option value="전단지배포">전단지배포</option>
                           <option value="피부관리">피부관리</option>
                           <option value="포토그래머">포토그래머</option>
                           <option value="HTML코딩">HTML코딩</option>
                           <option value="QA테스터검증">QA테스터검증</option>
                           <option value="보조출연·방청">보조출연·방청</option>
                           <option value="방송스탭·촬영보조">방송스탭·촬영보조</option>
                           <option value="동영상촬영·편집">동영상촬영·편집</option>
                           <option value="일반음식점">일반음식점</option>
                           <option value="레스토랑">레스토랑</option>
                           <option value="페밀리레스토랑">페밀리레스토랑</option>
                           <option value="CAD·CAM·인테리어">CAD·CAM·인테리어</option>
                           <option value="캐릭터·애니메이션디자인">캐릭터·애니메이션디자인</option>
                           <option value="패션·잡화디자인">패션·잡화디자인</option>
                           <option value="수의사·수의간호사">수의사·수의간호사</option>
                           <option value="실험·연구보조">실험·연구보조</option>
                           <option value="생동성·임상시험">생동성·임상시험</option>
                        </select>
                     </div>
                  </li>
                  <li>
                     <div class="regist__title"><strong>시급</strong></div>
                     <div class="searchValue regist__item">
                        <input type="text" id="title" name="salary" value="${dto.salary}" size="10" placeholder="ex) 8000">
                     </div>
                  </li>
                  <li>
                     <div class="regist__title"><strong>회사명</strong></div>
                     <div class="searchValue regist__item">
                        <input type="text" id="title" name="cname" value="${dto.cname}" readonly maxlength="40" autocomplete="off" style="width: 620px;">
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
            <button type="button" class="join-submit-btn join-submit-btn--person" onclick="checkModify()">공고문 수정 완료</button>
      </form>
      </div>
   </div>
</div>
</body>
</html>