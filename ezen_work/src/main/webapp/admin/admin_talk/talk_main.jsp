<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html >
  <head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>한줄 꿀팁</title>
<script type="text/javascript">
function talk_content(){
	if(${(memId != null) or (amemId != null)}){	
		var frm = document.talk_write;
		
		if(!frm.talk_write1.value){
			alert("내용을 입력해주세요");
			frm.talk_write1.focus();
		}else{
			frm.submit();
		}
	}else{
		alert("로그인 후 이용가능합니다.");
	}
}

function good_count(seq){
	if(${click > 0}){
		location.href="talk_count.do?pg=${pg}&seq="+seq+"&count=1&click=0";			
	}	
}

function bad_count(seq){
	if(${click > 0}){
	location.href="talk_count.do?pg=${pg}&seq="+seq+"&count=0&click=0";	
	}	
}

</script>
<style type="text/css">
body{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}
.header111{	padding-left: 400px;}
#sh{padding-left: 400px;}
.footer222{padding-left: 900px;}
a:hover{color: blue; font-weight: bold; text-decoration: underline;}
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}
</style>
</head>
  <body>
  	<form action="talk_write.do?pg=${pg}" method="post" name="talk_write">	  	
	  	<div style="margin-left: 395px; font-size: 30px; font-weight: bold;">			
  			<img alt="..." src="../image/Ezen_Work.png" width="200px;" height="90px;">
  			한줄 꿀팁						
		</div>	
	  	<br><br><br>
	  	<div class="header111">	  		    
	      	<div class="input-group mb-3" style="width: 1000px; border: solid #48DAD2; padding: 7px;">		      		   
				<input type="text" class="form-control" name="talk_write1" aria-label="Recipient's username" aria-describedby="button-addon2" style="height: 50px; margin: auto;">
				<button class="btn btn-outline-secondary" type="button" id="button-addon2" style="background-color: #48DAD2; width: 80px; height: 50px; margin: auto;"
					onclick="talk_content();">등록</button>
			</div>		   	
			<br> 
			<div style="width: 1000px; height: 90px; border: 0.5px dotted; font-style: italic;">
				<img alt="" src="../image/warning.JPG" style="float: left; margin-top: 8px;">
				<p style="font-size: 12px; float: left;" >
				<em style="font-size: 20px; font-weight: bold;">·</em> Ezen일해요 회원이 작성한 게시물이 서비스 이용약관, 관련 법령 또는 본 규칙에 위배되는 경우 게시자에게 사전 또는 사후 통지<br>
				<em style="padding-left: 5px;">없이 해당 게시물을 (전체 혹은 일부) 임의 삭제할 수 있습니다.</em><br>			
				<em style="font-size: 20px; font-weight: bold;">·</em> 해당 게시물에 대한 모든 법적인 책임은 작성자에게 있으며, 이는 Ezen일해요 모든 게시판에 해당됩니다.				
				</p>		
			</div> 
		</div>
		<br>
		<div id="sh">
			<c:forEach var="dto" items="${list}">		
				<div class="list">
					<table class="table table-striped" style="width: 1000px; text-overflow: clip;">
						<tr>
							<th>
								<span style="color: #5050FF	">${dto.id}</span> | ${dto.talk_date}
								<c:if test="${(memId == dto.id) or (amemId != null)}">
									<a href="talk_del.do?seq=${dto.talk_seq}&pg=${pg}" style="float: right; text-decoration: none;">삭제</a>
								</c:if>
							</th>					
						</tr>
						<tr>
							<td>
								<a style="color: black; text-decoration: none;" >${dto.talk_subject }</a>						
							</td>					
						</tr>						
					</table>
					<div style="width: 1000px; padding-left: 863px;">
						<button type="button" class="btn btn-outline-dark" 
						 onclick="good_count(${dto.talk_seq});"	style="font-size: 12px; margin: auto;">${dto.talk_good_count}
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-emoji-laughing" viewBox="0 0 16 16">
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M12.331 9.5a1 1 0 0 1 0 1A4.998 4.998 0 0 1 8 13a4.998 4.998 0 0 1-4.33-2.5A1 1 0 0 1 4.535 9h6.93a1 1 0 0 1 .866.5zM7 6.5c0 .828-.448 0-1 0s-1 .828-1 0S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 0-1 0s-1 .828-1 0S9.448 5 10 5s1 .672 1 1.5z"/>
						</svg></button>
						<button type="button" class="btn btn-outline-dark" 
						 onclick="bad_count(${dto.talk_seq});" style="font-size: 12px; margin: auto;">${dto.talk_bad_count}
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-emoji-frown" viewBox="0 0 16 16">
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M4.285 12.433a.5.5 0 0 0 .683-.183A3.498 3.498 0 0 1 8 10.5c1.295 0 2.426.703 3.032 1.75a.5.5 0 0 0 .866-.5A4.498 4.498 0 0 0 8 9.5a4.5 4.5 0 0 0-3.898 2.25.5.5 0 0 0 .183.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
						</svg></button>
					</div> 
					<br>					
				</div>				
			</c:forEach>	
		</div>		
		<div class="footer222">
			<c:if test="${totalA == null }">
				<c:if test="${startPage > 10 }">               
	              [ <a  class="paging" href="talk_list.do?pg=${startPage - 1}">이전</a> ]
	            </c:if>
	           
	           	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
	              <c:if test="${pg == i }">                  
	                 [ <a class="currentPaging" href="talk_list.do?pg=${i }">${i }</a> ]
	              </c:if>
	              
	              <c:if test="${pg != i }">
	                 [ <a class="paging"  href="talk_list.do?pg=${i }">${i }</a> ]   
	              </c:if>
	           	</c:forEach>
	           
	           	  <c:if test="${endPage < totalP }">               
	              	 [ <a class="paging"  href="talk_list.do?pg=${endPage + 1}">다음</a> ]
	              </c:if>
	         </c:if>	         
		</div>					
	</form>	 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>	   
  </body>
</html>






























