<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html >
  <head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>한줄톡</title>
<script type="text/javascript" src="../../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){		
		$("#talk > .sub1").click(function(){
			$("#talk > .content1").toggle(200);
		});
		
	});	
	function talk_content(){
		var frm = document.talk_write;
		
		if(!frm.talk_write1.value){
			alert("내용을 입력해주세요");
			frm.talk_write1.focus();
		}else{
			frm.submit();
		}
	}	
</script>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
a:hover{color: blue; font-weight: bold; text-decoration: underline;}
.content1{display: none;}
</style>
</head>
  <body>
  	<form action="talk_write.do" method="post" name="talk_write">
	  	<h4 style="font-weight: bold;">한줄톡</h4>
	  	<br><br><br>
	  	<div style="margin-left:auto; margin-right:auto;">		 
	  		<div>	    
		      	<div class="input-group mb-3" style="width: 1000px; border: solid #48DAD2; padding: 7px;">
		      		 <img alt="" src="../image/talk.JPG" style="opacity: 0.8">	   
					<input type="text" class="form-control" name="talk_write1" aria-label="Recipient's username" aria-describedby="button-addon2" style="height: 50px; margin: auto;">
					<button class="btn btn-outline-secondary" type="button" id="button-addon2" style="background-color: #48DAD2; width: 80px; height: 50px; margin: auto;"
						onclick="talk_content();">등록</button>
				</div>			   		
		    </div>
		</div>
		<br> 
		<div style="width: 1000px; height: 90px; border: 0.5px dotted; font-style: italic;">
			<img alt="" src="../image/warning.JPG" style="float: left; margin-top: 8px;">
			<p style="font-size: 12px; float: left;" >
			<em style="font-size: 20px; font-weight: bold;">·</em> 알바몬은 회원이 작성한 게시물이 서비스 이용약관, 관련 법령 또는 본 규칙에 위배되는 경우 게시자에게 사전 또는 사후 통지<br>
			<em style="padding-left: 5px;">없이 해당 게시물을 (전체 혹은 일부) 임의 삭제할 수 있습니다.</em><br>			
			<em style="font-size: 20px; font-weight: bold;">·</em> 해당 게시물(댓글포함)에 대한 모든 법적인 책임은 작성자에게 있으며, 이는 알바몬 모든 게시판에 해당됩니다.				
			</p>		
		</div> 
		<br>
		<div id="talk">	
			<div class="sub1">
				<dl>
					<dd><span style="color: #5050FF	">아이디</span> | 날짜<br></dd>
					<dt ><a href="#" style="color: black; text-decoration: none;" >제목제목제목제목제목제목제목</a></dt>					
				</dl>			
			</div>
			<div class="content1">
				<div class="input-group mb-3" style="width: 800px; padding: auto;">
				  <input type="text" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2">
				  <button class="btn btn-outline-secondary" type="button" id="button-addon2">등록</button>
				</div>
			</div>		
		</div>	
		<div>
		
		</div>	 
	</form>	 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>	   
  </body>
</html>






























