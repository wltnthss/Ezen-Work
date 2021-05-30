<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">

<meta name="referrer" content="always">

<title>로그인 화면</title>
<link rel="stylesheet" href="../css/loginCSS/login.css" type="text/css">
<script src="https://connect.facebook.net/ko_KR/sdk.js?hash=4a884140c27fbbfb82a352e371766ffa&amp;ua=modern_es6" async="" crossorigin="anonymous"></script><script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script><script type="text/javascript" src="/common/js/common.js?202104131030"></script>
<script type="text/javascript" src="/common/js/jquery.js?202104131030"></script>
<script type="text/javascript" src="../../script/memberScript.js"></script>

<script type="text/javascript" language="javascript">
function goUrl(url) {
location.href = url;

}
</script><script type="text/javascript" language="javascript" src="/common/js/slb.js"></script><style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_customer_chat_bubble_animated_no_badge{box-shadow:0 3px 12px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_no_badge:hover{box-shadow:0 5px 24px rgba(0, 0, 0, .3)}.fb_customer_chat_bubble_animated_with_badge{box-shadow:-5px 4px 14px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_with_badge:hover{box-shadow:-5px 8px 24px rgba(0, 0, 0, .2)}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_new_ui_mobile_overlay_active{overflow:hidden}@keyframes fb_mpn_landing_page_slide_in{0%{border-radius:50%;margin:0 24px;width:60px}40%{border-radius:18px}100%{margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_in_from_left{0%{border-radius:50%;left:12px;margin:0 24px;width:60px}40%{border-radius:18px}100%{left:12px;margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes fb_bounce_out_v2_mobile_chat_started{0%{opacity:1;top:0}100%{opacity:0;top:20px}}@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style></head>




<body class="ALBA" cz-shortcut-listen="true">

<div id="SLB_film" style="z-index: 99997; position: absolute; display: none; width: 960px; height: 845px; background-color: rgb(0, 0, 0); opacity: 0.2;"></div>
<div id="SLB_content" onclick="SLB();" style="z-index: 99999; position:absolute;"></div>
<div id="SLB_loading" onclick="SLB();" title="Loading..."><img src="/image/common/loading.gif" border="0" alt="데이터 로딩중"></div>

<!-- GNB(s) -->

<div id="Header">
	<div id="HeaderGnb">
		<h1 style="top:11px"><a href="../member_main/index.jsp"><img src="../images/Ezen_Work.png" alt="이젠일해요"></a></h1>
		<ul>	
			<li class="login"><a href="../member_login/loginForm.jsp">로그인</a></li>
			<li class="home"><a href="../member_main/index.jsp">HOME</a></li>>
		</ul>
	</div>
</div>

<!-- GNB(e) -->

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/rsc/js/OauthLoginCLS.js?202104131030"></script>
<script>
//---------------------------------------------------------------
// COMMON OAUTH
//---------------------------------------------------------------
var OAUTH_CONFIG = {"SITE":"ALBA", "SVCTYPE":"REAL", "ADULTCERT":"", "MOBILE":"N"};
var OAUTH_SITECD = {"FACEBOOK":"FACEBOOK", "NAVER":"NAVER", "KAKAO":"KAKAO", "GOOGLE":"GOOGLE", "APPLE":"APPLE"};
OauthLoginCLS.init();
//---------------------------------------------------------------
// FACEBOOK OAUTH
//---------------------------------------------------------------
window.fbAsyncInit = function() {
	
	FB.init({ appId:OAUTH_FAPPID.ALBA, cookie:true, version:'v2.8', xfbml:true });
	
	FB.getLoginStatus(function(response) {
		if (response.status === "connected") {
			FB.logout(function(response) {});
		}
	});
};
(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/ko_KR/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
//---------------------------------------------------------------
// KAKAO OAUTH
//---------------------------------------------------------------
Kakao.init(OAUTH_KAPPID.ALBA);
//---------------------------------------------------------------
// GOOGLE OAUTH
//---------------------------------------------------------------
window.googleInit = function() {
	gapi.load("auth2", function() {
		window.gauth = gapi.auth2.init({
			client_id: OAUTH_GAPPID.ALBA
		});
		gauth.then(function() {
			if (gauth.isSignedIn.get()) {
				gauth.signOut();
			}
		}, function() {
		});
	});
};
</script>
<!--script src="//apis.google.com/js/platform.js?onload=googleInit" async defer></script-->

<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tbody><tr>
		<td class="layout">
			<div class="loginCombine">
				<div class="loginHead">				
						<h1>가입하신 아이디와 비밀번호를 입력하세요.</h1>
						<h2>아직 이젠일해요 회원이 아니신가요? 회원가입 후 다양한 서비스를 이용해 보세요!</h2>			
				</div>

				<form id="f" name="loginForm" method="post" action="login.do" >
				<input type="hidden" id="site" name="site" value="WWW">
				<input type="hidden" id="gourl" name="gourl" value="http://www.alba.co.kr/">
					

					<div class="loginArea">
						<div class="loginAction">
							<p class="checkArea">
								<span><input type="radio" id="keep" name="keep" class="typeCheckbox" value="Y"><label for="keep">회원 로그인</label>
								<span><input type="radio" id="keep" name="keep" class="typeCheckbox" value="Y"><label for="keep">회사 로그인</label> 
							</p>

							<script type="text/javascript">
							var browser = navigator.appName;
							var b_version = navigator.appVersion;
							var version = parseFloat(b_version);
							var useragent = navigator.userAgent;

							if (browser == 'Microsoft Internet Explorer') {
								version = useragent.substr(useragent.lastIndexOf('MSIE') + 5, 3);
								if (version < 7) {
									jQuery(".secretHelp").addClass("sha");
								}
							} else {
								if (useragent.lastIndexOf('Chrome/') > 0) {
									version = useragent.substr(useragent.lastIndexOf('Chrome/') + 7, 4);
									if (version < 26) {
										jQuery(".secretHelp").addClass("sha");
									}
								} else if (useragent.lastIndexOf('Firefox/') > 0) {
									version = useragent.substr(useragent.lastIndexOf('Firefox/') + 8, 4);
									if (version < 1.5) {
										jQuery(".secretHelp").addClass("sha");
									}
								}
							}

							//로그인 유지 레이어
							jQuery("#keep").click(function(e) {
								jQuery('.layerHelp').hide();
								if (jQuery(this).is(":checked")) {
									jQuery('#LoginMaintain').show();
								}
							});
							</script>
							<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>

							<!-- 버튼 노출 갯수에 따라서 col3, col4, col5 컨트롤 -->
							<p class="sns sns--col4">
								<a class="naver" href="#" onclick="OauthLoginCLS.doLogin('N');return false;">네이버</a>
								<a class="kakao" href="#" onclick="OauthLoginCLS.doLogin('K');return false;">카카오톡</a>
								</p><div id="OauthFrame"></div>
							<p></p>
						</div>
						<fieldset class="login">
							<legend>로그인</legend>
							<div class="loginInput">
								<dl>
									<dt><label for="userid">아이디</label></dt>
									<dd><input type="text" id="userid" name="id" value="" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="0px 11px no-repeat;" tabindex="1" placeholder="아이디를 입력해주세요"></dd>
									<dt><label for="passwd">패스워드</label></dt>
									<dd class="inputPw"><input type="password" id="passwd" name="pwd" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="no-repeat 0 11px" tabindex="2" placeholder="비밀번호를 입력해주세요"></dd>
								</dl>
								<input id="btnLogin" type="image" src="../images/btn_login.png" class="btnLogin" alt="로그인" tabindex="3" onclick="checkLogin(); return false;">
							</div>
							<p class="loginBtn">
								<a href="../member_registration/registrationMainForm.jsp" class="btn"><strong>회원가입</strong></a>
								<a href="loginIdFind.jsp" class="btn"><span>아이디 찾기</span></a>
								<a href="loginPwdFind.jsp" class="btn"><span>비밀번호 찾기</span></a>
							</p>
						</fieldset>			
					</div>
				</form>
			</div>
		</td>
	</tr>
</tbody></table>

	<div id="Footer">	
		<address>Copyright ⓒ <strong>EZEN-IT</strong>. All Rights Reserved.</address>
	</div>
<!-- 알바 스크립트 -->

<script src="//trk.alba.co.kr/TA.js"></script><div id="_BA"><img src="https://trk.alba.co.kr/Collect?servicetype=PCWEB&amp;logtype=VIEW&amp;cookieenabled=Y&amp;enctype=EUC-KR&amp;scheme=https&amp;host=sign.alba.co.kr&amp;port=443&amp;pageurl=%2Flogin%2Flogingate.asp&amp;fullurl=https%3A%2F%2Fsign.alba.co.kr%2Flogin%2Flogingate.asp%3Fsite%3DWWW&amp;getdata=site%3DWWW&amp;referurl=http%3A%2F%2Fwww.alba.co.kr%2F&amp;category1=%EC%95%8C%EB%B0%94%EC%B2%9C%EA%B5%AD%2C%20%EC%93%B8%EC%88%98%EB%A1%9D%20%EC%B2%9C%EA%B5%AD&amp;osversion=&amp;cid=6E2BD498E7F94A788347D1440DCB981A" width="1" height="1" style="display:none" alt=""></div>
<script>
BA.Collect("VIEW", {

	"servicetype":"PCWEB"

});
</script>

<!-- //알바 스크립트 -->


<iframe id="hiddenFrame" name="hiddenFrame" style="display:none" width="500" height="200" src="about:blank" title="빈 프레임"></iframe>
</body></html>