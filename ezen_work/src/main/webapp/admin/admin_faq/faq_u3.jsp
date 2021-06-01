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
	<p class='head'>FAQ > 개인회원 > <span>공고지원</span></p>
	<hr>
	<div>
		<div id="sh">
			<a href="#" class="qes"><span>Q.</span> 알바정보를 보고 온라인 지원을 하면 어떻게 되는 건가요?</a><br>			
			<p class="ans"><br>
			채용정보에서 [온라인 지원]을 클릭하면 온라인 지원 팝업이 뜹니다.<br>
			회원님이 등록하신 이력서 중 지원하고자 하는 이력서를 선택 후 지원하시면 됩니다.<br>
			연락처를 수정하고 싶다면 [회원정보수정] 버튼을, 자격·특기사항/경력사항 등 이력서를 수정하고 싶다면<br>
			각 이력서 제목 옆의 [이력서 수정] 버튼을 눌러 수정하신 후 다시 지원하세요.<br>
			<br>
			이력서를 보낼 준비가 되었다면 하단의 [지원하기] 버튼을 클릭하세요.<br>
			회원님의 지원 이력서가 기업에게 전달되며, 기업서비스 내 지원자 관리 리스트에서도 보여집니다.<br><br>
			지원하신 내용은 개인서비스 > 알바 지원현황 > 온라인 지원에서 확인하실 수 있습니다.<br>
			</p>				
			<br><br>
			<a href="#" class="qes1"><span>Q.</span> 온라인 지원 후 기업이 내 이력서를 봤는지 알 수 있나요?</a><br>			
			<p class="ans1"><br>
			네. 기업의 이력서 열람여부를 확인할 수 있습니다.<br><br>
			개인서비스 > 알바 지원현황 > 온라인지원에서 기업이 내 이력서를 열어봤는지 여부 및 열람일자를<br>
			제공하고 있습니다.<br>	
			</p>				
			<br><br>
			<a href="#" class="qes2"><span>Q.</span> 이력서를 수정하면 과거 기업에 지원한 이력서까지 수정되는 건가요?</a><br>			
			<p class="ans2"><br>
			아닙니다. 과거에 지원한 이력서는 해당 공고에 지원한 이력서로 저장되어 이력서를 수정하여도 변경되지 않습니다.<br>
			단, 프로필사진, 회원정보, 연락처, 취업우대사항 등 회원님의 개인정보는<br>
			과거 지원한 이력서에도 변경 내용이 반영됩니다. 즉, 연락처가 바뀌어 번호를 수정하게 되면 과거에 지원한 기업에게도<br>
			해당 연락처로 업데이트 되어 변경된 번호로 노출되는 것입니다.<br><br>
			지원 후 지원이력서의 내용 변경을 원하시면 지원취소 후 이력서를 변경하여 다시 지원해주세요.<br>
			</p>					
			<br><br>
			<a href="#" class="qes3"><span>Q.</span> 온라인 지원을 한 업체에게 지원을 취소하고 다시 지원할 수 있나요?</a><br>			
			<p class="ans3"><br>
			네. 지원취소, 재지원 모두 가능합니다.<br>
			단, 지원취소는 공고 당 최대 3회까지 가능합니다. (총 4회 지원 가능)<br>
			기업에게는 재지원 또는 지원취소로 표시됩니다.<br><br>
			이력서의 내용을 바꾸기 위해서 재지원을 하시려면,<br>
			지원현황에 진입하여 해당공고 지원취소 후 이력서를 변경하여 다시 지원하시기 바랍니다.<br>
			</p>					
			<br>			
		</div>		
	</div>
	
</body>
</html>