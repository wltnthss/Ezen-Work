<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){		
		$("#sh > .qes").click(function(){
			$("#sh > .ans").toggle(200);
		});
		$("#sh > .qes1").click(function(){
			$("#sh > .ans1").toggle(200);
		});
		$("#sh > .qes2").click(function(){
			$("#sh > .ans2").toggle(200);
		});	
		$("#sh > .qes3").click(function(){
			$("#sh > .ans3").toggle(200);
		});
		$("#sh > .qes4").click(function(){
			$("#sh > .ans4").toggle(200);
		});
		$("#sh > .qes5").click(function(){
			$("#sh > .ans5").toggle(200);
		});
	});	
</script>
<style type="text/css">
.head{padding-left: 10px;}
span{font-weight: bold;}
p{padding-left: 10px;}
.ans{display: none;}
.ans1{display: none;}
.ans2{display: none;}
.ans3{display: none;}
.ans4{display: none;}
.ans5{display: none;}
a:hover {font-weight: bold;}

</style>
</head>
<body>
	<p class='head'>FAQ > 개인회원 > <span>이력서·지원관리</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> 지원자가 많아 공고를 마감하고 싶습니다.</a><br>			
			<p class="ans"><br>
			기업회원으로 구인등록 하신 경우,<br>
			기업서비스 > 공고·지원자관리 > 게재중인 공고에서 마감시키려는 채용공고를 찾아<br>
			우측의 [마감] 버튼을 클릭하시면 해당 공고가 마감됩니다.<br><br>
			공고를 마감해도 “재등록” 기능을 통해 기존의 모집내용 그대로 공고를 등록하실 수 있습니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes1"><span>Q.</span> 지원자 관리에서 이력서를 합격시키면 개인한테 메일이 발송되나요?</a><br>			
			<p class="ans1"><br>
			지원자 관리에서 특정 이력서에 대해 합격 버튼을 클릭해도 해당 개인회원에게 메일이 발송되지 않습니다.<br><br>
			합격 메시지를 전달하시고 싶다면,<br>
			지원자 이력서 리스트에서 이력서를 선택하신 후 또는 해당 이력서 보기 페이지에서<br>
			[e-메일 발송] 버튼을 클릭하신 후 e-메일을 보내시면 됩니다.<br>	
			</p>				
			<br><br>
			<a href="#" class="qes2"><span>Q.</span> 아이디가 휴면처리 되었습니다.</a><br>			
			<p class="ans2"><br>
			채용공고 등록/관리는 기업회원님께 제공하는 서비스입니다.<br><br>
			기업회원으로 가입/로그인 후 공고등록을 이용해 주세요.	<br>
			</p>			
			<br><br>
			<a href="#" class="qes3"><span>Q.</span> 지원자의 이력서를 보면 지원자가 열람사실을 확인할 수 있나요?</a><br>			
			<p class="ans3"><br>
			Ezen일해요 에서는 채용담당자가 이력서를 열람한 사실을 지원자에게 알려주고 있습니다.<br>
			개인회원은 온라인/이메일지원 현황에서 지원한 이력서가 열람되었는지를 확인하고 있습니다.<br><br>
			한번 열람한 이력서는 미열람 상태로 돌릴 수 없습니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes4"><span>Q.</span> 이력서열람서비스를 신청했는데 이력서 연락처가 보이지 않습니다.</a><br>			
			<p class="ans4"><br>	
			이력서열람서비스 상품을 신청하신 경우에는<br>	
			이력서 내용 페이지에서 개인정보 우측의 [열람하기] 버튼을 클릭하셔야 연락처가 보입니다.<br><br>
			열어본 이력서에 대해 모두 연락처가 공개되어 열람서비스 건수가 차감된다면,<br>
			이력서 제목만 보고 이력서를 열어보았는데 마음에 안 들었을 경우 괜히 건수만 손해볼 수 있기 때문입니다.<br><br>
			따라서 기업회원 로그인하여 이력서를 자기소개서 내용까지 살펴보신 후 마음에 들었을 때에만<br>
			[열람하기]를 클릭하여 연락처를 확인하시기 바랍니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes5"><span>Q.</span> 비회원은 이력서열람서비스 신청이 안 되나요?</a><br>			
			<p class="ans5"><br>
			이력서열람서비스는 본인인증과 사업자등록번호를 거친 기업회원만 신청이 가능합니다.<br><br>
			또한 이력서열람서비스를 신청 시 기업인증과 신청자 본인인증을 거친 기업회원에게만<br>
			이력서열람서비스를 제공하고 있습니다.<br><br>
			이는 개인정보 보호 차원에서 일정한 인증 과정을 거친 회원에게만 개인정보를 제공하기 위함입니다.<br><br>
			이력서 열람이 필요하신 기업이라면,<br>
			기업회원 가입 후 기업서비스 > 기업상품안내 > 이력서열람서비스 신청에서 서비스를 신청하시기 바랍니다.<br>
			</p>		
			<br>			
		</div>		
	</div>
	
</body>
</html>