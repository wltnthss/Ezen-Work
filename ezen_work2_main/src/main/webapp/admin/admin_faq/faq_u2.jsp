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
	<p class='head'>FAQ > 개인회원 > <span>회원정보관리</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> 아이디를 다른 걸로 변경할 수 있나요?</a><br>			
			<p class="ans"><br>
			한 번 부여된 아이디는 변경이 불가능합니다.<br>
			부득이하게 아이디를 변경하셔야 한다면,<br>
			회원탈퇴를 하신 후, 새로운 아이디로 재가입 하시는 방법이 있습니다.<br><br>
			단, 회원탈퇴를 하시면 등록하신 이력서 및 온라인 지원 등 그동안 저장되었던<br>
			회원님의 정보가 모두 삭제되고,사용했던 아이디는 재사용이 불가능하므로<br>
			신중하게 생각하신 후 탈퇴를 하시기 바랍니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes1"><span>Q.</span> 비밀번호 수정은 어디에서 하나요?</a><br>			
			<p class="ans1"><br>
			<span>Ezen일해요 아이디로 로그인한 경우</span><br>
			비밀번호 변경은 로그인 후 개인서비스 > 개인정보관리 > 비밀번호 변경 에서<br>
			수정하실 수 있습니다.<br><br>
			<span>소셜 로그인 회원의 경우</span><br>
			Ezen일해요에서는 소셜 로그인의 비밀번호를 저장하고 있지 않습니다.<br>
			연동한 각 소셜서비스의 사이트를 방문해 비밀번호를 변경해 주세요.<br>
			</p>				
			<br><br>
			<a href="#" class="qes2"><span>Q.</span> 개명을 했습니다. 이름을 변경하려면 어떻게 해야 하나요?</a><br>			
			<p class="ans2"><br>
			Ezen일해요의 회원정보에서 이름을 변경하고 싶으신 경우, 우선 실명확인을 위하여<br>
			실명인증기관에 본인의 바뀐 정보를 등록하셔야 합니다.<br><br>
			① 실명인증기관에 실명DB를 수정 요청하세요.<br>
			실명인증기관에 팩스나 이메일을 통해 실명확인에 필요한 증빙서류를 제출하여<br>
			개인 실명DB를 수정하시기 바랍니다.<br>
			② PC/모바일에서 개인회원 로그인 후 회원정보 수정페이지에서 [본인인증 하기]를 클릭하세요.<br>
			③ 본인 인증 후 이름 변경 완료!<br>
			</p>				
			<br><br>
			<a href="#" class="qes3"><span>Q.</span> 간편 로그인 관리는 무엇인가요?</a><br>			
			<p class="ans3"><br>
			Ezen일해요 아이디를 소셜서비스 계정과 연결하여 간편하게 로그인 할 수 있는 서비스입니다.<br>
			네이버, 카카오, 페이스북, 구글, 애플 계정이 있다면 알바몬 아이디와 연결 후,<br>
			 각 소셜서비스 로그인으로 쉽게 로그인하세요.<br>
			</p>				
			<br><br>
			<a href="#" class="qes4"><span>Q.</span> 개인회원인데 기업회원으로 변경할 수 있나요?</a><br>			
			<p class="ans4"><br>
			개인회원에서 기업회원으로 변경은 불가능합니다.<br>
			기업회원 아이디가 있어도 개인회원으로 별도로 가입할 수 있습니다.<br><br>
			<span>※ 회원 가입 전 주의사항</span><br>
			1. 한번 가입한 아이디는 탈퇴 이후 동일한 아이디 사용이 불가능합니다.<br>
			2. 개인회원 아이디와 기업회원 아이디는 동일하게 사용이 불가능합니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes5"><span>Q.</span> 회원탈퇴는 어떻게 하나요?</a><br>			
			<p class="ans5"><br>
			개인회원 또는 기업회원으로 로그인 하시면 [정보수정 > 회원탈퇴 신청]에서 가능합니다.<br><br>
			※ 탙퇴 전 주의사항<br>
			회원탈퇴를 하시면 이용하시던 아이디로 재가입은 영구적으로 불가능합니다.<br>
			</p>				
			<br>					
		</div>		
	</div>
	
</body>
</html>