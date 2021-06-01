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
	});	
</script>
<style type="text/css">
.head{padding-left: 10px;}
span{font-weight: bold;}
p{padding-left: 10px;}
.ans{display: none;}
.ans1{display: none;}
.ans2{display: none;}
a:hover {font-weight: bold;}

</style>
</head>
<body>
	<p class='head'>FAQ > 개인회원 > <span>기업정보관리</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> 사업자등록번호가 없으면 아이디/비밀번호 찾기를 할 수 없나요?</a><br>			
			<p class="ans"><br>
			<span>[기업회원 아이디 찾기 방법]</span><br>
			① 사업자등록번호로 찾기<br>
			② 아이핀으로 찾기<br>
			③ 이메일로 찾기<br><br>
			<span>[기업회원 비밀번호 찾기 방법]</span><br>
			① 사업자등록번호로 찾기<br>
			② 아이핀으로 찾기<br>
			③ 이메일로 찾기<br>
			④ 전화번호로 찾기<br><br>
			아이디·비밀번호 찾기 관련하여 문의사항이 있으시면 고객센터로 문의해 주세요.<br>
			고객센터 연락처 : Tel. 1588-9351<br>
			전화상담시간:[월~금] 09:00~19:00 / [토] 09:00~15:00<br>
			</p>				
			<br><br>
			<a href="#" class="qes1"><span>Q.</span> 기업정보 중 가입자 이름 변경은 어떻게 하나요?</a><br>			
			<p class="ans1"><br>
			채용 담당자의 퇴사 등으로 가입자 변경이 필요한 경우 회원 탈퇴 후 재가입 할 필요없이<br>
			가입자 정보를 변경하실 수 있습니다.<br>
			기업서비스 > 회원정보 확인·수정 페이지에서 가입자정보의 가입자명 우측의 `변경`버튼을 클릭하시면<br>
			수정이 가능합니다.<br>
			가입자 정보 변경 시에는 본인인증이 필요하며, 가입자 정보 변경과 관련하여 문의사항이 있을 경우<br>
			Ezen일해요 고객센터로 전화주시기 바랍니다.<br><br>
			고객센터 연락처 : Tel. 1588-9351<br>
			전화상담시간 : [월~금] 09:00~19:00 / [토] 09:00~15:00<br>	
			</p>				
			<br><br>
			<a href="#" class="qes2"><span>Q.</span> 기업정보 중 회사명을 변경하고 싶습니다.</a><br>			
			<p class="ans2"><br>
			상호명 변경이나 기 사업자번호의 휴/폐업으로 Ezen일해요에 저장된 기업회원 정보 중 기업명<br>
			또는 사업자등록번호의 변경이 필요하신 경우 아래와 같이 변경 요청 해 주시기 바랍니다.<br><br>
			* 채용정보에 노출되는 회사명은 채용공고 등록 시 별도로 입력하실 수 있습니다.<br><br><br>
			<span>회원정보 변경 요청방법</span><br>
			1. 사업자등록증을 보내신 후 Ezen일해요 고객센터로 전화 주시면 변경 처리가 완료됩니다.<br>
			송부 후 전화를 주시지 않을 경우 처리가 지연되거나 누락될 수 있으니 반드시 연락 주시기 바랍니다.<br>
			- 전화번호 : 1588-9351<br>
			- 고객센터 업무시간 : 평일 09:00~19:00 / 토요일 09:00~15:00<br><br>
			2. 기업명 변경 요청 시 보내주신 사업자등록증 상의 기업명으로만 수정이 가능합니다.<br>
			사업자등록증과 다른 기업명으로의 변경을 요청하시면 처리가 되지 않으므로 양해 부탁 드립니다.<br>  
			</p>			
			<br>			
		</div>		
	</div>
	
</body>
</html>