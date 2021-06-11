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
a:hover {font-weight: bold;}

</style>
</head>
<body>
	<p class='head'>FAQ > 개인회원 > <span>회원가입·탈퇴</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> 기업회원 가입은 무료입니까?</a><br>			
			<p class="ans"><br>
			Ezen일해요에 기업회원으로 가입 하시는 데는 일체 비용이 들지 않습니다.<br>
			즉, 회원가입은 무료입니다.<br><br>
			회원가입 시 본인명의 `휴대폰 본인 인증` 을 거치신 후 아이디, 비밀번호, 회사명,<br>
			사업자 등록번호 등 기업 정보를 입력하시면 바로 회원가입이 되어<br>
			Ezen일해요의 기업회원 서비스를 이용하실 수 있습니다.<br><br>
			가입 시 작성하셨던 정보를 수정하시려면 상단 메뉴 중 [기업서비스]로 들어가신 후 왼쪽메뉴에서<br>
			[회원정보 확인∙수정] 메뉴를 찾아 클릭하시면 기업정보, 가입자정보 등을 수정하실 수 있습니다.<br><br>
			알바공고 등록 역시 무료로 하실 수 있습니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes1"><span>Q.</span> 회원가입 및 기업정보 수정 시 본인인증이란 게 어떤 건가요?</a><br>			
			<p class="ans1"><br>
			보다 책임있는 구인등록 문화를 만들기 위해 회원가입 시 본인인증을 거치고 있습니다.<br>
			가입하시는 분의 본인명의 휴대폰 인증 또는 아이핀(i-PIN)인증을 거친 후 회원가입이 가능합니다.<br><br>
			또한 기업인증과 신청자 본인인증을 거친 기업만이 이력서 열람 서비스를 신청하실 수 있습니다.<br>		
			</p>				
			<br><br>
			<a href="#" class="qes2"><span>Q.</span> 회원탈퇴는 어디에서 하나요?</a><br>			
			<p class="ans2"><br>
			회원 로그인 > 기업서비스 > 회원정보 관리에서 회원탈퇴를 선택하여 신청하실 수 있습니다.<br><br>
			탈퇴 시 주의사항을 반드시 읽어보신 후 탈퇴를 위한 정보를 모두 입력하면 탈퇴신청이 접수됩니다.<br><br>
			즉시 탈퇴처리가 되는 것은 아니며, 운영자 확인을 거쳐 탈퇴가 이루어집니다.<br>
			운영자 확인까지 1시간 가량 시간이 걸릴 수 있으니 양해해 주시기 바랍니다.<br>
			(고객센터 업무 외 시간에 신청을 하시면 다음날에 처리될 수 있습니다.)<br><br>
			탈퇴처리가 되면 회원님의 메일로 탈퇴 되었다는 메일이 발송됩니다.<br>
			탈퇴 후에는 동일 아이디로 다시 가입할 수 없으며, 아이디와 데이터는 복구할 수 없으니<br>
			신중하게 선택해 주세요.<br>
			</p>			
			<br><br>
			<a href="#" class="qes3"><span>Q.</span> 사업자등록증이 없어도 회원가입이 가능한가요?</a><br>			
			<p class="ans3"><br>
			발급받은 사업자등록증의 번호를 입력해야만 회원가입이 가능합니다.<br>
			필수 입력 정보로서, 이는 사업자등록번호 도용 등에 의해 발생할 수 있는<br>
			피해를 미연에 방지하기 위함이니 양해 바랍니다.<br><br>
			더 자세한 내용은 알바몬 고객센터(☎ 1588-9351)로 문의하시기 바랍니다.<br>
			</p>				
			<br>	
		</div>		
	</div>
	
</body>
</html>