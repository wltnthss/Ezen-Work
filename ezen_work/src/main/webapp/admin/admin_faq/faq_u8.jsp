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
	<p class='head'>FAQ > 개인회원 > <span>기타 문의</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> Windows10 Edge 브라우저 이용안내</a><br>			
			<p class="ans"><br>
			Windows10의 기본 브라우저인 Edge 브라우저에서 Ezen일해요를 접속하실 경우 정상적인 이용이 어렵습니다.<br><br>
			Edge 브라우저 대신 Internet Explorer 11을 이용해 주시기 바라며,<br>
			이는 아래와 같은 방법으로 이용하실 수 있습니다.<br><br>
			
			[Windows 10 검색에서 기본 브라우저 변경하기]<br>
			1) 좌측 하단 Windows 아이콘 옆의 검색 창에 '설정'을 검색 후, 설정 메뉴를 클릭합니다.<br>
			2) 시스템 → 기본앱을 차례대로 클릭한 후, 기본앱 메뉴에서 웹브라우저 → Internet Explorer를 선택합니다.<br><br>
			
			[제어판에서 기본 브라우저 설정하기]<br>
			1) Windows 시작 버튼에서 마우스 우클릭 후 ‘제어판’을 선택합니다.<br>
			2) 컴퓨터 설정 변경에서 ‘프로그램’ > ‘기본 프로그램 설정’ 을 클릭합니다.<br>
			3) ‘Internet Explorer’를 선택 후 ‘이 프로그램을 기본 프로그램으로 설정’ 후 확인 버튼을 누릅니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes1"><span>Q.</span> [게시중단] Ezen일해요 아이디가 없는데 게시중단 요청을 할 수 있나요?</a><br>			
			<p class="ans1"><br>
			Ezen일해요 회원이 아닌 고객도 게시중단 요청 접수를 하실 수 있습니다.<br><br>
			비회원으로 게시중단 요청을 접수하실 때에는 알바몬 게시중단 요청서류와 함께 증빙서류를 제출하셔야 합니다.<br>	
			</p>				
			<br><br>
			<a href="#" class="qes2"><span>Q.</span> [게시중단] 게시중단 요청 가능한 게시물은 어떤 것이 있나요?</a><br>			
			<p class="ans2"><br>
			게시중단 요청서비스는 Ezen일해요 일반 이용자가 작성한 게시물이 고객님의 권리를<br>
			침해했다고 판단되는 경우에 요청하실 수 있습니다.<br><br>
			<span>게시중단 요청이 가능한 영역</span><br>
			알바경험담, 한줄톡, 노무상담, 면접족보, 알바후기에 올라온 게시물<br><br>
			*게시중단 요청서비스는 Ezen일해요 PC웹에서 이용할 수 있습니다.<br>
			</p>			
			<br><br>
			<a href="#" class="qes3"><span>Q.</span> [게시중단] 게시중단 요청 후에 언제 조치가 취해지나요?</a><br>			
			<p class="ans3"><br>
			게시중단 요청서가 정상 접수되면 검토를 거쳐 영업일 기준 1~2일 이내 처리 됩니다.<br><br>
			부족한 서류가 있거나 검토결과 조치가 어렵다면 접수해주신 메일로 검토결과를 안내해드립니다.<br>
			</p>			
			<br>			
		</div>		
	</div>
	
</body>
</html>