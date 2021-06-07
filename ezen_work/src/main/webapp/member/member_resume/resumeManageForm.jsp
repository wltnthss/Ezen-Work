<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>이력서 관리</title>
<link rel="stylesheet" href="../css/resumeCSS/Sub.css" type="text/css">
<link rel="stylesheet" href="../css/resumeCSS/Person.css"
	type="text/css">
<meta name="referrer" content="always">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<style type="text/css">
#subjectA:link {color:black; text-decoration: none;}
#subjectA:visited {color:black; text-decoration: none;}
#subjectA:hover {color:blue; text-decoration: underline;}
#subjectA:active {color:black; text-decoration: none;}

/* paging */
.paging {color: blue; text-decoration: none;}
.currentPaging {color: red; text-decoration: underline;}
</style>
<script type="text/javascript">
	function isView(seq){
		location.href = "../member_resume/resumeViewForm.do?seq=" + seq + "&pg=" + ${pg}; 
	}
</script>
<body id="MagResume" class="person" cz-shortcut-listen="true">
	<!-- Global -->
	<div id="Global">
		<!-- Header -->
		<div id="Header">
			<h1 class="headerBi">
				<a href="../member_main/index.jsp"><img
					src="../images/Ezen_Work.png" class="headerBi__logo" alt="이젠일해요"></a>
			</h1>

			<ul class="headerLink">
				<li class="login"><a href="../member_login/logout.do">로그아웃</a></li>
				<li class="modify"><a href="../member_main/index.jsp">HOME</a></li>
			</ul>
		</div>
		<!-- //Header -->


		<div id="HeaderMenuWrap">
			<!-- HeaderMenu -->
			<div id="HeaderMenu">
				<!-- 알바스토리 /rsc/inc/common/GlobalMenuStory.inc 중복 관리 -->
				<ul class="headerMenu headerMenu--login">
					<li class="person on">
						<a href="../member_mypage/mypageindex.do"><span></span>마이페이지</a>
					</li>
					<li class="job">
						<a href="../member_resume/resumeWriteForm.do">이력서등록</a>
					</li>
					<li class="brand">
						<a href="../member_resume/resumeManageForm.do">이력서관리</a>
					</li>
					<li class="story">
						<a href="../member_modify/memberModifyForm.do">개인정보수정</a>
					</li>
				</ul>
			</div>
			<!-- //HeaderMenu -->
		</div>
	</div>
	<!-- //Global -->

	<!-- subWrap-->
	<div id="SubWrap">
		<!-- subContents -->
		<div id="SubContents">
			<h1 class="body-title">이력서 관리</h1>

			<!-- 리스트 -->
			<form id="manageForm" name="manageForm" method="post">
				<div class="listForm">
					<div class="listForm__title">
						내 이력서 : 총 <em>2</em>개
					</div>
					<table id="resumelist" cellspacing="0" summary="내 이력서 목록">
						<thead>
							<tr>
								<th scope="col" class="select" style="width: 75px;">이력서 번호</th>
								<th scope="col" class="title" style="width: 750px;">이력서 제목</th>
								<th scope="col" class="date" style="width: 160px;">최종수정일</th>
								<th scope="col" class="count">열람확인</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bean" items="${list }">
								<tr>
									<td class="select">
										${bean.seq }
									</td>
									<td class="title">  
										<a href="#" id="subjectA" onclick="isView(${bean.seq})">${bean.title }</a>
									</td> 	
									<td class="date">
										${bean.logtime }
									</td>
									<td class="count">
										${bean.opencount }
									</td>
								</tr>
								<tr>
							</c:forEach>
					<!-- 페이지 표시 -->
							<tr>
								<td colspan="5" align="center">
									<c:if test="${startPage > 3 }">               
					                  [ <a  class="paging" href="resumeManageForm.do?pg=${startPage - 1}">이전</a> ]
					                </c:if>
					               
					               	<c:forEach var="i" begin="${startPage }" end="${endPage }">               
					                  <c:if test="${pg == i }">                  
					                     [ <a class="currentPaging" href="resumeManageForm.do?pg=${i }">${i }</a> ]
					                  </c:if>
					                  
					                  <c:if test="${pg != i }">
					                     [ <a class="paging"  href="resumeManageForm.do?pg=${i }">${i }</a> ]   
					                  </c:if>
					               </c:forEach>
					               
					               	  <c:if test="${endPage < totalP }">               
					                  	 [ <a class="paging"  href="resumeManageForm.do?pg=${endPage + 1}">다음</a> ]
					                  </c:if>
								</td>
							</tr>	
						</tbody>
					</table>
				</div>
			</form>
			<!-- //리스트 -->
			<!-- 이력서공개 선택창 -->

			<div id="HistorySetup" style="display: none;">
				<div class="filter"></div>
				<div class="resume-setup__wrap">
					<h1>이력서 및 개인정보 설정</h1>
					<a class="resume-setup__close" href="#HistorySetup"
						onclick="openday_confirm_close();return false;">닫기</a>

					<form id="updForm" name="updForm" method="post">
						<div class="resume-setup__content">
							<div class="setup-table">
								<strong class="setup-table__title">이력서 설정</strong>
								<table cellspacing="0" cellpadding="0" border="0"
									summary="이력서 설정">
									<thead>
										<tr>
											<th colspan="2"><select
												class="resume-select select-long" name="resumeItem"
												id="resumeItem" title="이력서 선택"><option
														value="14436314">1</option>
													<option value="5035210">(기본)알바지원합니다.</option></select></th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- // 이력서공개 선택창 -->
</body>
</html>