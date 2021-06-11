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
	<p class='head'>FAQ > 개인회원 > <span>회원가입·탈퇴</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> 회원가입은 무료인가요?</a><br>			
			<p class="ans"><br>
				이젠일해요 회원가입은 무료입니다.<br><br>
				회원가입 방법으로는 `이젠일해요 아이디 만들기`와 `소셜 로그인` 중 선택하실 수 있습니다.<br><br>				
				<span>이젠일해요 아이디 만들기</span><br>	
				아이디, 비밀번호, 이메일 주소 등 간단한 개인정보를 입력하고 휴대폰 번호인증을<br>
				완료하면 바로 회원가입이 되어 알바몬의 개인회원 서비스를 이용하실 수 있습니다.<br><br>							
				* 가입 시 작성한 정보를 수정은 로그인 후 마이페이지 > 회원정보 관리 메뉴에서 하실 수 있습니다.
			</p>				
			<br><br>
			<a href="#" class="qes1"><span>Q.</span> 회원탈퇴는 어디서 하나요?</a><br>			
			<p class="ans1"><br>
				회원탈퇴는 회원 로그인 > 마이페이지 > 회원정보 관리 페이지의 회원탈퇴 메뉴에서 신청하실 수 있습니다.<br><br>
				탈퇴 시 주의사항을 반드시 읽어보신 후 탈퇴를 위한 정보를 모두 입력하면 탈퇴신청 및 처리가 완료됩니다.<br><br>
				탈퇴 후에는 그동안 이용하셨던 아이디가 삭제되어 로그인이 불가능하며 재가입 시에도 동일 아이디를<br> 
				사용하실 수 없습니다.<br>			
			</p>				
			<br><br>
			<a href="#" class="qes2"><span>Q.</span> 개인회원으로는 채용공고를 등록할 수 없나요?</a><br>			
			<p class="ans2"><br>
			채용공고 등록/관리는 기업회원님께 제공하는 서비스입니다.<br><br>
			기업회원으로 가입/로그인 후 공고등록을 이용해 주세요.	<br>
			</p>			
			<br><br>
			<a href="#" class="qes3"><span>Q.</span> 미성년자는 회원가입이 안되나요?</a><br>			
			<p class="ans3"><br>
			주민등록 상의 연령이 만 15세 미만인 경우, “근로기준법 제 64조” 내용에 근거하여<br>
			취업이 불가능하므로 구인구직을 목적으로 하는 알바몬에 회원가입 하실 수 없습니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes4"><span>Q.</span> 아이디를 변경하고 싶어요</a><br>			
			<p class="ans4"><br>	
			<span>한번 부여받으신 아이디는 변경하실 수 없습니다.</span><br>
			부득이하게 아이디 변경을 원하실 경우 회원탈퇴 후, 원하시는 아이디로 재가입하셔야 합니다.<br><br>
			<span>※ 회원탈퇴를 하시면<br></span>
			작성된 이력서와 개인정보가 모두 영구히 삭제되어 복구가 불가능하므로 신중하게 생각하신 후<br>
			탈퇴를 하시기 바랍니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes5"><span>Q.</span> 아이디와 비밀번호를 잊어벼렸어요.</a><br>			
			<p class="ans5"><br>
			아이디 찾기에서 회원별로 해당되는 정보를 입력하시면 쉽게 검색할 수 있습니다.<br><br>
			<span>- 개인회원 : 가입시 입력한 이메일, 휴대폰</span><br>
			<span>- 기업회원 : 가입시 입력한 사업자등록번호, 담당자명과 휴대폰번호, 아이핀 인증</span><br><br>
			비밀번호는 개인/기업회원 가입 시 입력한 이메일 또는 회원님 명의의 휴대폰을 통해 본인인증을 받으신 후<br>
			새로운 비밀번호를 설정하여 이용하실 수 있습니다.<br><br>
			위와같은 방법으로도 아이디나 비밀번호 찾기에 어려움이 있다면, 고객센터로 문의 주시기 바랍니다.<br>
			- 고객센터 : 1661 - 2288 </p>		
			<br>			
		</div>		
	</div>
	
</body>
</html>