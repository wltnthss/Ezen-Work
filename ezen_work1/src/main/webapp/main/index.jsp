<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
  <head>
  <style type="text/css">
  
   .mid {
    width : 85%;
    padding-left: 100px;
    margin-left: 100px; 
   }
   .table{
  margin-left:auto; 
     margin-right:auto; 
   }
  
  </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>이젠몬</title>
  </head>
  <body>
    <!-- Navigation-->
  
        <!-- Header-->
        <em style = "color : white; font-size: 0.1px">.</em>
       <a href="${pageContext.request.contextPath}/main/index.jsp"><img alt="이젠일해요" src="../img/Ezen_Work.png"; style="height: 120px"; width="200px"; align="middle"></a>  
       
       	 <a href="#"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp이벤트</em></a>
         <a href="#"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp공지사항</em></a> 
         <a href="../member/member_registration/registrationMainForm.jsp"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp회원가입</em></a>
	     
	     <!-- 로그인 창 미표시 -->  
         	<c:choose>
         		<c:when test="${memId == null && cmemId == null}">
         			<a href="../login/loginForm.jsp"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp로그인</em></a>
         		</c:when>
         	</c:choose>
		 <!-- //로그인 창 미표시 -->
		 
		 
		 <!-- 회원,회사 마이페이지&&로그아웃 열람 -->

			<c:if test="${memId != null }">
				<a href="../member/member_mypage/mypageindex.do"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp마이페이지</em></a>    
		 		<a href="../login/logout.do"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp로그아웃</em></a>
			</c:if>

			<c:if test="${cmemId != null }">
				<a href="../company/mypage/mypageForm.jsp"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp마이페이지</em></a>    
		 		<a href="../company/login/logout.do"><em style = " font-style:normal; font-size : 15px ; color : red ; float : right; padding-top: 25px">&nbsp로그아웃</em></a>
			</c:if>
	 	
		 <!-- //회원,회사 마이페이지&&로그아웃 열람 -->   
		    
        <div class = "name"> 
    <div style="background-color: black; height: 150px; text-align: center; color : white; font-size: 100px">
                  <p style="background-color: #D2D2FF;">EzEn WoRk회색개통1</p>
   </div>
        </div>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">ezen마크</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                     <li class="nav-item"><a class="nav-link" href="index.jsp?req=modi1"; style="text-align: center">이력서등록</a></li>
                     <li class="nav-item"><a class="nav-link" href="#!"; style="text-align: center">공고등록</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"; style="text-align: center" >지역별/업종별</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"; style="text-align: center">알바경험담</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"; style="text-align: center">한줄톡</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"; style="text-align: center">신고/문의</a></li>
                    </ul>
    </div>
   </div>
        </nav>
        <!-- Section-->
       
  <c:if test="${param.req == 'modi1' }">
   <jsp:include page="display1.jsp"/> 
  </c:if>      
   <c:if test="${param.req == null }"> 
        <section class="py-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"; style="width:1500px; height: 300; margin-left:auto; margin-right:auto; ">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">회사이름</h5>
                                    <h5 class="fw-bolder">글제목</h5>
                                   <h5 class="fw-bolder">시급내용</h5>
                                    <h5 class="fw-bolder">알바내용</h5>
                                </div>
                            </div>
      </div>
                    </div>
                </div>
           </section>
        
        <div class="table">
         
         <table class="table table-striped" style="width: 1500px; text-align: center">
     <tr>
         <th scope="col">회사명</th>
         <th scope="col">내용</th>
         <th scope="col">시급</th>
       </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
        <tr>
          <td>아라야회사이름이다</td>
          <td>아라야내용이다</td>
          <td>아라야시급이다</td>
        </tr>
   </table>
        </div>
        
        </c:if>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright © Your Website 2021</p></div>
        </footer>
    
    
    
    
    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
</html> 
