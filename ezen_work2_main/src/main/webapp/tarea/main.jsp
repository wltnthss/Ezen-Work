<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역/직종별</title>
<link rel="stylesheet" type="text/css" href="../company/css/reset.css">
<link rel="stylesheet" type="text/css" href="../company/css/common.css">
<link rel="stylesheet" href="../company/css/sub.css" type="text/css">
<link rel="stylesheet" href="../company/css/repute.css" type="text/css">
<link rel="stylesheet" href="../company/css/person.css?v=6" type="text/css">
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<style type="text/css">
form > span {
   display: none;
}
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}
/* paging */
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
</style>
<script type="text/javascript">
   $(function(){
      $("#category1").load("../ajax/text/category-data.html #category1-1", function(){
         $(this).show();
      });
      
      $(document).on("change", "#category1 > select", function(){
         $("#category2").empty().hide();
         $("#category3").empty().hide();
         
         var target = $(this).find("option:selected").attr("data-target");
         var selector = "../ajax/text/category-data.html " + target;
         // 다음 항목 로드
         $("#category2").load(selector, function(){
            $(this).show();
         });
      });
      
      $(document).on("change", "#category2 > select", function(){
         $("#category3").empty().hide();
         
         var target = $(this).find("option:selected").attr("data-target");
         var selector = "../ajax/text/category-data.html " + target;
         
         // 다음 항목 로드
         $("#category3").load(selector, function(){
            $(this).show();
         });
      });
      
      $(document).on("change", "#category3 > select", function(){
         if($(this).find("option:selected").index() > 0) {
            var data1 = $("#category1 > select > option:selected").val();
            var data2 = $("#category2 > select > option:selected").val();
            var data3 = $("#category3 > select > option:selected").val();
            
            $(".console").html(data1 + " > " + data2 + " > " + data3);   
           
         }
      });
      
      $(document).on('click', '#btnSubmit', function(e) {
    	        	    
    	    var form = {
    	        noncon_ins_id : JSON.stringify(noncon_ins_id),
    	        data3 : $('#category3').val(),
    	       
    	    };

    	    $.ajax({
    	          type: "post", 
    	          url: "tarea1.do", 
    	          dataType: "json", 
    	          contentType : "application/x-www-form-urlencoded; charset=UTF-8",
    	          data: data3
    	      });
    	});     
   });
</script>
</head>
<body>
   <div class="exec">      
         <span id="category1"></span>
         <span id="category2"></span>
         <span id="category3"></span>    
   </div>    
   
   <form action="tarea1.do" method="post">
	   
	   <div class="console" >
	   		
	   </div>
	 
	   <div>		
	   		<input type="text" id="data" value="">
	   		<input type="submit" value="검색" id="btnSubmit">
	   </div>
   </form>
<div id="SubWrap">
   <div id="SubContents" class="person-main">
		<div id="ReputeCareerList" class="displayNone" style="display: block;"></div>
		<div class="listForm person-main__resumelist" style="padding-top: 35px;">
			<table id="resumelist" cellspacing="0" summary="내 공고 목록">
				<thead>
					<tr>
						<th scope="col" class="num">회사명</th>
						<th scope="col" class="title">지역</th>
						<th scope="col" class="title">직종</th>
						<th scope="col" class="date">글제목</th>
						<th scope="col" class="count">시급</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${list }">
					<tr class="default"> 	
						<td class="num">  
							${dto.cname}
						</td> 	
						<td class="title"> 
							${dto.ad_area}
						</td> 
						<td class="title"> 
							${dto.ad_job}
						</td> 		
						<td class="date">
							${dto.ad_subject}
						</td> 	
						<td class="count">
							${dto.salary}
						</td>
					</tr> 
					</c:forEach>
			<tr>
				<td colspan="6" align="center">
					<c:if test="${startPage > 3 }">
						[<a class="paging" href="advertiseList.do?pg=${startPage-1}">이전</a>]
					</c:if>
					
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${pg == i }">
							[<a class="currentPaging" href="advertiseList.do?pg=${i }">${i }</a>]
						</c:if>
						<c:if test="${pg != i }">
							[<a class="paging" href="advertiseList.do?pg=${i }">${i }</a>]  
						</c:if>
					</c:forEach>
					
					<c:if test="${endPage <totalP }">
						[<a class="paging" href="advertiseList.do?pg=${endPage+1}">다음</a>]
					</c:if>
				</td>
			</tr>
		</tbody>
		</table>
		</div>
	</div>
</div>
</body>
</html>