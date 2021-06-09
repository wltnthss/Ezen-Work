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
<script type="text/javascript">
function checkMember(num){
	location.href="../member/member_apply/memberAdViewForm.do?num=" + num + "&pg=" + ${pg};
}
</script>
<style type="text/css">

</style>
</head>
<body>
   <section class="py-5">
     <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center" style="width:1200px; height: 300; margin-left:auto; margin-right:auto; position: inherit;">
         
         <c:forEach var="dto" begin="0" end="7" items="${list}">         
         <div class="col mb-5">
             <div class="card h-100">
                 <!-- Product image-->
                 <a href="#">
                 	<img class="card-img-top" src="../storage/${dto.image}" alt="..." onclick="checkMember(${dto.num});"/>
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
         
         <table class="table table-striped" style="width: 1200px; text-align: center; margin-left: 350px;">
     	<tr>
         	<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">번호</td>
			<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">회사이름</td>
			<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">공고제목</td>
			<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">직종</td>
			<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">지역</td>
			<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">시간</td>						
			<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">기간</td>
			<td width="120px;" style="font-weight: bold; color: #28B4B4; font-size: 20px;">공고 등록일</td>
       </tr>
       
       <c:forEach var="dto" items="${list}">
	       <tr>
	          <td width="100">${dto.num }</td>
	          <td width="300">${dto.cname }</td>
	          <td width="500">${dto.ad_subject }</td>
	          <td width="300">${dto.ad_job }</td>
	          <td width="100">${dto.ad_area }</td>
	          <td width="100">${dto.ad_time }</td>
	          <td width="300">${dto.ad_period }</td>
	          <td width="200">${dto.advertise_date}</td>
	       </tr>      
       </c:forEach>  
   </table>
</div> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>  
</body>
</html> 
