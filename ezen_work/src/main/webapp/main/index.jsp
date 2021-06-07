<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>  
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>이젠몬</title>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}
.header1{
	width: 1400px;
	height: 100px;
	margin-left: 240px;			
}
.header2{
	width: 1400px;
	margin-left: 150px;
	margin: auto;
}

</style>
</head>
<body>
	
	<div class="header1">      
      <a href="${pageContext.request.contextPath}/main/index.jsp"><img alt="이젠일해요" src="../img/Ezen_Work.png" style="width: 200px; height: 120px; text-align: left;"></a>       
      
      <!-- 로그인 창 미표시 -->  
      	<a href="../member/member_registration/registrationMainForm.jsp"><em style="font-style:normal; font-size:15px ; color:black; float: right;">회원가입</em></a>       	
      	<c:choose>
      		<c:when test="${memId == null && cmemId == null}">
      			<a href="../login/loginForm.jsp"><em style="font-style:normal; font-size:15px; color:black; float: right; padding-right: 15px;">로그인</em></a>
      		</c:when>
      	</c:choose>        
  		<!-- //로그인 창 미표시 --> 
 
		 <!-- 회원,회사 마이페이지&&로그아웃 열람 -->
		<c:if test="${memId != null }">
			<a href="../login/logout.do"><em style="font-style:normal; font-size:15px; color:black; float: right; padding-right: 15px;">로그아웃</em></a>
			<a href="../member/member_mypage/mypageindex.do"><em style="font-style:normal; font-size:15px; color:black; float: right; padding-right: 15px;">마이페이지</em></a>    
	 		
		</c:if>
		<c:if test="${cmemId != null }">
			<a href="../../company/login/logout.do"><em style="font-style:normal; font-size:15px; color:black; float: right; padding-right: 15px;">로그아웃</em></a>
			<a href="../../company/mypage/mypageForm.jsp"><em style="font-style:normal; font-size:15px; color:black; float: right; padding-right: 15px;">마이페이지</em></a>
		</c:if>	 	 
 	 </div>	
 	 <hr>
 	 
 	 <div class="header2">
		 <!-- //회원,회사 마이페이지&&로그아웃 열람 -->
		 <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active" data-bs-interval="2500">
		      <img src="../img/444.png" class="d-block w-100" alt="..." style="width: 1000px; height: 400px;">
		    </div>
		    <div class="carousel-item" data-bs-interval="2500" >
		      <img src="../img/222.png" class="d-block w-100" alt="..." style="width: 1000px; height: 400px;">
		    </div>
		    <div class="carousel-item" data-bs-interval="2500">
		      <img src="../img/333.jpg" class="d-block w-100" alt="..." style="width: 1000px; height: 400px;">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>     
		<nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 40px;">
			<div class="container px-4 px-lg-5"> 	           
		           <div class="collapse navbar-collapse" id="navbarSupportedContent">
		           <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
		               <li class="nav-item"><a class="nav-link" href="#!" ></a></li>
		               <li class="nav-item"><a class="nav-link" href="#!" ></a></li>
		               <li class="nav-item"><a class="nav-link" href="#!" ></a></li>
		               <li class="nav-item"><a class="nav-link" href="#!" ></a></li>
		               <li class="nav-item"><a class="nav-link" href="#!" ></a></li>
		               <li class="nav-item"><a class="nav-link" href="#!" ></a></li>
		           </ul>
	 		    </div>
	     	 </div>
	     </nav>     
		<nav style="width: 1150px; margin-left: 127px;">
		  <div class="nav nav-tabs" id="nav-tab" role="tablist">
		    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true" onclick="location.href='index.jsp'">Home</button>
		    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">지역별/업종별</button>
		    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false"
		    	onclick="location.href='index.jsp?req=exp_experience'">알바경험담
		    </button>
		    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">한줄톡</button>
		    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">이벤트</button>	    
		    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">공지사항</button>
		    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false" 
		    	onclick="window.open('../admin/admin_faq/faq_index.jsp','','width=1130,height=730');">F.A.Q
		    </button>
		    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">신고/문의</button>
		  </div>
		</nav>
		<div class="tab-content" id="nav-tabContent" style="width: 1150px; margin-left: 175px;" >
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab"></div>
		  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab"></div>	 
		  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab"></div>
		   <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab"></div>
		  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab"></div>	   
		  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab"></div>
		  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab"></div>
		  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab"></div>
		</div> 
	</div> 	
	
	<c:if test="${param.req==null}">
		<jsp:include page="index_main.jsp"/>
	</c:if>
	
	<div>
		<c:if test="${param.req=='exp_experience'}">
			<jsp:include page="../admin/admin_exp/exp_main.jsp"/>
		</c:if>
	</div>	
    
    <div class="footer1">
	    <footer class="py-5 bg-dark">
	        <div class="container"><p class="m-0 text-center text-white">Copyright © Your Website 2021</p></div>
	    </footer>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>  
</body>
</html> 
