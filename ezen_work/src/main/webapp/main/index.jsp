<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<title>이젠몬</title>
<script type="text/javascript">
	function checkMember(num){
		location.href="../member/member_apply/memberAdViewForm.do?num=" + num + "&pg=" + ${pg};
	}
</script>
<script type="text/javascript">
	function checkId(){
		if(${memId != null}){			
			window.open("../report/reportForm.jsp","","width=1130, height=910, toolbar=no, menubar=no, scrollbars=no, resizable=no" );
		}else if(${cmemId != null}){
			alert("유저만 사용가능합니다.")	
		}else{
			alert("로그인 후 이용가능합니다.");		
		}
	}
</script>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	
}

.header1 {
	width: 1400px;
	height: 100px;
	margin-left: 240px;
	text-overflow: clip;
}

.header2 {
	width: 1400px;
	margin-left: 200px;
	margin: auto;
	text-overflow: clip;
}

.middle {
	margin-left: auto;
	margin-right: auto;
	text-overflow: clip;
}

.paging {
	color: blue;
	text-decoration: none;
}

.currentPaging {
	color: red;
	text-decoration: underline;
}

#subjectA:link {
	color: black;
	text-decoration: none;
}

#subjectA:visited {
	color: black;
	text-decoration: none;
}

#subjectA:hover {
	color: blue;
	text-decoration: underline;
}

#subjectA:active {
	color: black;
	text-decoration: none;
}

.footer111 {
	text-align: center;
}
</style>
</head>

<body>

	<div class="header1">
		<a href="${pageContext.request.contextPath}/main/index.do"><img
			alt="이젠일해요" src="../img/Ezen_Work.png"
			style="width: 200px; height: 120px; text-align: left;"></a>

		<!-- 로그인 창 미표시 -->
		<a href="../member/member_registration/registrationMainForm.jsp"><em
			style="font-style: normal; font-size: 15px; color: black; float: right;">회원가입</em></a>
		<c:choose>
			<c:when test="${memId == null && cmemId == null}">
				<a href="../login/loginForm.jsp"><em
					style="font-style: normal; font-size: 15px; color: black; float: right; padding-right: 15px;">로그인</em></a>
			</c:when>
		</c:choose>
		<!-- //로그인 창 미표시 -->

		<!-- 회원,회사 마이페이지&&로그아웃 열람 -->
		<c:if test="${memId != null }">
			<a href="../login/logout.do"><em
				style="font-style: normal; font-size: 15px; color: black; float: right; padding-right: 15px;">로그아웃</em></a>
			<a href="../member/member_mypage/mypageindex.do"><em
				style="font-style: normal; font-size: 15px; color: black; float: right; padding-right: 15px;">마이페이지</em></a>

		</c:if>
		<c:if test="${cmemId != null }">
			<a href="../company/login/logout.do"><em
				style="font-style: normal; font-size: 15px; color: black; float: right; padding-right: 15px;">로그아웃</em></a>
			<a href="../company/mypage/mypageForm.do"><em
				style="font-style: normal; font-size: 15px; color: black; float: right; padding-right: 15px;">마이페이지</em></a>
		</c:if>
		<!-- //회원,회사 마이페이지&&로그아웃 열람 -->
	</div>
	<hr>
	<nav style="width: 1150px; margin-left: 250px;">
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-home-tab"
					data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
					role="tab" aria-controls="nav-home" aria-selected="true"
					onclick="location.href='index.do'">Home</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false"
					onclick="window.open('${pageContext.request.contextPath}/tarea/main.jsp','','')">지역별/업종별
				</button>
				<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact" type="button" role="tab"
					aria-controls="nav-contact" aria-selected="false"
					onclick="window.open('${pageContext.request.contextPath}/admin/admin_exp/job_experience_main.do','','')">알바경험담
				</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false"
					onclick="window.open('${pageContext.request.contextPath}/admin/admin_talk/talk_list.do','','')">한줄톡
				</button>
				<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact" type="button" role="tab"
					aria-controls="nav-contact" aria-selected="false"
					onclick="window.open('${pageContext.request.contextPath}/admin/admin_event/eventList.do','','')">이벤트</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false"
					onclick="window.open('${pageContext.request.contextPath}/admin/admin_notice/noticeList.do','','')">공지사항</button>
				<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact" type="button" role="tab"
					aria-controls="nav-contact" aria-selected="false"
					onclick="window.open('../admin/admin_faq/faq_index.jsp','','width=1130,height=730');">F.A.Q
				</button>
				<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact" type="button" role="tab"
					aria-controls="nav-contact" aria-selected="false"
					onclick="checkId();">신고/문의</button>
			</div>
		</nav>
	<!-- 메인사진&&네비게이션 -->
	<div class="header2">
		<div id="carouselExampleFade" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="2500">
					<img src="../img/pa.JPG" class="d-block w-100" alt="..."
						style="width: 1000px; height: 400px;">
				</div>
				<div class="carousel-item" data-bs-interval="2500">
					<img src="../img/just.JPG" class="d-block w-100" alt="..."
						style="width: 1000px; height: 400px;">
				</div>
				<div class="carousel-item" data-bs-interval="2500">
					<img src="../img/pm.JPG" class="d-block w-100" alt="..."
						style="width: 1000px; height: 400px;">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light"
			style="height: 40px;">
			<div class="container px-4 px-lg-5">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
						<li class="nav-item"><a class="nav-link" href="#!"></a></li>
						<li class="nav-item"><a class="nav-link" href="#!"></a></li>
						<li class="nav-item"><a class="nav-link" href="#!"></a></li>
						<li class="nav-item"><a class="nav-link" href="#!"></a></li>
						<li class="nav-item"><a class="nav-link" href="#!"></a></li>
						<li class="nav-item"><a class="nav-link" href="#!"></a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent"
			style="width: 1150px; margin-left: 175px;">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab"></div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab"></div>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab"></div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab"></div>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab"></div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab"></div>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab"></div>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab"></div>
		</div>
	</div>
	<!-- //메인사진&&네비게이션 -->
	
	<!-- 회사공고란 -->
	<section class="py-5">
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"
			style="width: 1200px; height: 300; margin-left: auto; margin-right: auto; position: inherit;">

			<c:forEach var="dto" begin="0" end="7" items="${list}">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<a href="#"> <img class="card-img-top"
							src="../storage/${dto.image}" alt="..."
							onclick="checkMember(${dto.num});" />
						</a>
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">${dto.cname}</h5>
								<h5 class="fw-bolder">${dto.ad_subject }</h5>
								<h5 class="fw-bolder">${dto.salary }</h5>
								<h5 class="fw-bolder">${ad_content}</h5>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</section>

	<div class="table">

		<table class="table table-striped"
			style="width: 1200px; text-align: center; margin-left: 350px;">
			<tr>
				<td width="120px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">번호</td>
				<td width="120px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">회사이름</td>
				<td width="120px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">공고제목</td>
				<td width="120px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">직종</td>
				<td width="240px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">지역</td>
				<td width="100px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">시간</td>
				<td width="100px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">기간</td>
				<td width="120px;"
					style="font-weight: bold; color: #28B4B4; font-size: 20px;">공고
					등록일</td>
			</tr>

			<c:forEach var="dto" items="${list}">
				<tr>
					<td width="100">${dto.num }</td>
					<td width="300">${dto.cname }</td>					
					<td width="500">
						<a href="#" onclick="checkMember(${dto.num});"> ${dto.ad_subject }</a>
					</td>														
					<td width="300">${dto.ad_job }</td>
					<td width="100">${dto.ad_area }</td>
					<td width="100">${dto.ad_time }</td>
					<td width="300">${dto.ad_period }</td>
					<td width="200">${dto.advertise_date}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!-- //회사공고란 -->
	
	<!-- Footer -->
	<div class="footer111">
	   	<c:if test="${startPage > 10 }">               
	          [ <a  class="paging" href="index.do?pg=${startPage - 1}">이전</a> ]
	        </c:if>
	       
	       	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
	          <c:if test="${pg == i }">                  
	             [ <a class="currentPaging" href="index.do?pg=${i }">${i }</a> ]
	          </c:if>
	          
	          <c:if test="${pg != i }">
	             [ <a class="paging"  href="index.do?pg=${i }">${i }</a> ]   
	          </c:if>
	       	</c:forEach>
	       
	       	  <c:if test="${endPage < totalP }">               
	          	 [ <a class="paging"  href="index.do?pg=${endPage + 1}">다음</a> ]
	          </c:if>	   
	   	</div>	   
    <br>
    <div class="footer1">
	    <footer class="py-5 bg-dark">
	        <div class="container"><p class="m-0 text-center text-white">Copyright © Your Website 2021</p></div>
	    </footer>
    </div>
	<!-- //Footer -->
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
</body>
</html>
