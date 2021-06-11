<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 <head>
 <title>신고문의하기</title>
 <link rel="stylesheet" href="../css/resumeCSS/PersonRegist.css?v=1" type="text/css">
<link rel="stylesheet" href="../css/mypageCss/repute.css" type="text/css">
<style type="text/css">


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
<script type="text/javascript" src="../script/reportScript.js"></script>
</head>
<body id="RegistStep" class="registStep">
	<div style="margin-left: 1px; font-size: 30px; font-weight: bold;">			
  			<img alt="..." src="../img/Ezen_Work.png" width="200px;" height="90px;">  							
		</div>	
	<div id="SubWrap">
		<div id="SubContents">
			<div id="step1">
	<form action="reportWrite.do" method="post" name="reportForm">
		<div id="step2">
			<div id="RegistTerms" class="registArea">
			<h2>신고문의하기<span class="necessary"></span></h2>
				<div class="registForm">
					<ul class="inputArea">
						<li class="areaSelect">
							<div class="regist__title"><strong>문의/신고</strong></div>
							<div class="searchValue regist__item">
								<input type="radio" name="report" value="0">신고
								<input type="radio" name="report" value="1">문의
							</div>
						</li>
						<li>
							<div class="regist__title"><strong>회사이름</strong></div>
							<div class="searchValue regist__item">
								<input type="text" name="comname" size="25">
							</div>
						</li>
		
						<li>
							<div class="regist__title"><strong>내용선택</strong></div>
							<div class="searchValue regist__item">
								<select name="checkContent">
									<option value="all">신고내용선택</option>
									<option value="통장,신분증,비밀번호를 요구하는 경우">통장,신분증,비밀번호를 요구하는 경우</option>
									<option value="유흥업소 및 불건전 업소">유흥업소 및 불건전 업소</option>
									<option value="다단계 및 피라미드성 통신상품 판매 업체">다단계 및 피라미드성 통신상품 판매 업체</option>
									<option value="허위 사기성 내용">허위 사기성 내용</option>
									<option value="임금체불, 채용사기 경험 업체">임금체불, 채용사기 경험 업체</option>
									<option value="잘못 기재된 연락처">잘못 기재된 연락처</option>
									<option value="최저임금 미만의 급여">최저임금 미만의 급여</option>
								</select>
							</div>
						</li>
		
						<li>
							<div class="regist__title"><strong>내용</strong></div>
							<div class="searchValue regist__item">
								<textarea rows="15" cols="65" name="content" placeholder="내용을입력하세요"></textarea>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>	
				<input type="button" class="join-submit-btn join-submit-btn--person" value ="접수완료" onclick="checkReport();">
				<input type="reset" class="join-submit-btn join-submit-btn--person" value="다시작성">
		</form>
			</div>
		</div>
	</div>
</body>
</html>
	