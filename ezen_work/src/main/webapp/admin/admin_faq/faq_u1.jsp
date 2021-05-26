<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){			
		$(".ans").hide(function(){});
		$("#sh > .qes").click(function(){
			$("#sh > .ans").toggle(200);
		});
	});	
</script>
<style type="text/css">
.head{padding-left: 10px;}
span{font-weight: bold;}
p{padding-left: 10px;}
</style>
</head>
<body>
	<p class='head'>FAQ > 개인회원 > <span>회원가입·탈퇴</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> 회원가입은 무료인가요?</a><br>			
			<p class="ans">이젠일해요 회원가입은 무료입니다.<br>
			회원가입 방법으로는 `이젠일해요 아이디 만들기`와 `소셜 로그인` 중 선택하실 수 있습니다.<br><br>
			
			<span>이젠일해요 아이디 만들기</span><br>	
			아이디, 비밀번호, 이메일 주소 등 간단한 개인정보를 입력하고 휴대폰 번호인증을<br>
			완료하면 바로 회원가입이 되어 알바몬의 개인회원 서비스를 이용하실 수 있습니다.<br><br>
						
			* 가입 시 작성한 정보를 수정은 로그인 후 개인서비스 > 회원정보 관리 메뉴에서 하실 수 있습니다.<br></p>				
		</div>
		<div>
			<span>Q.</span> 회원탈퇴는 어디서 하나요?
		</div>
		<div>
			<span>Q.</span> 개인회원으로는 채용공고를 등록할 수 없나요?
		</div>
		<div>
			<span>Q.</span> 미성년자는 회원가입이 안되나요?
		</div>
		<div>
			<span>Q.</span> 아이디를 변경하고 싶어요
		</div>
		<div>
			<span>Q.</span> 아이디와 비밀번호를 잊어벼렸어요.
		</div>
	</div>
	
</body>
</html>