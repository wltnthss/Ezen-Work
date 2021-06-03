<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="../../script/memberScript.js"></script>
</head>
<body>
	<form action="login.do" method="post" name="loginForm">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" placeholder="아이디"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="로그인" onclick="checkLogin(); return false;">
				</td>
			</tr>
		</table>
	</form>
	<a href="../member_main/index.jsp">메인화면이동</a>
</body>
</html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">

<meta name="referrer" content="always">

<title>로그인 화면</title>
<link rel="stylesheet" href="../css/loginCSS/login.css" type="text/css">
<script src="https://connect.facebook.net/ko_KR/sdk.js?hash=3ef34effd01ed2f704a76fef72afcd76&amp;ua=modern_es6" async="" crossorigin="anonymous"></script><script src="https://connect.facebook.net/ko_KR/sdk.js?hash=4a884140c27fbbfb82a352e371766ffa&amp;ua=modern_es6" async="" crossorigin="anonymous"></script><script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script><script type="text/javascript" src="/common/js/common.js?202104131030"></script>
<script type="text/javascript" src="/common/js/jquery.js?202104131030"></script>
<script type="text/javascript" src="../script/memberScript.js"></script>

<script type="text/javascript" language="javascript">
function goUrl(url) {
location.href = url;

}
</script><script type="text/javascript" language="javascript" src="/common/js/slb.js"></script><style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_customer_chat_bubble_animated_no_badge{box-shadow:0 3px 12px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_no_badge:hover{box-shadow:0 5px 24px rgba(0, 0, 0, .3)}.fb_customer_chat_bubble_animated_with_badge{box-shadow:-5px 4px 14px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_with_badge:hover{box-shadow:-5px 8px 24px rgba(0, 0, 0, .2)}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_new_ui_mobile_overlay_active{overflow:hidden}@keyframes fb_mpn_landing_page_slide_in{0%{border-radius:50%;margin:0 24px;width:60px}40%{border-radius:18px}100%{margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_in_from_left{0%{border-radius:50%;left:12px;margin:0 24px;width:60px}40%{border-radius:18px}100%{left:12px;margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes fb_bounce_out_v2_mobile_chat_started{0%{opacity:1;top:0}100%{opacity:0;top:20px}}@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style><style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_customer_chat_bubble_animated_no_badge{box-shadow:0 3px 12px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_no_badge:hover{box-shadow:0 5px 24px rgba(0, 0, 0, .3)}.fb_customer_chat_bubble_animated_with_badge{box-shadow:-5px 4px 14px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_with_badge:hover{box-shadow:-5px 8px 24px rgba(0, 0, 0, .2)}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_new_ui_mobile_overlay_active{overflow:hidden}@keyframes fb_mpn_landing_page_slide_in{0%{border-radius:50%;margin:0 24px;width:60px}40%{border-radius:18px}100%{margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_in_from_left{0%{border-radius:50%;left:12px;margin:0 24px;width:60px}40%{border-radius:18px}100%{left:12px;margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes fb_bounce_out_v2_mobile_chat_started{0%{opacity:1;top:0}100%{opacity:0;top:20px}}@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style></head>



<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko"><head><meta http-equiv="X-UA-Compatible" content="IE=edge">


<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">

<meta name="referrer" content="always">

<title>알바천국, 쓸수록 천국</title>
<link rel="stylesheet" href="/image/css/sign.css?202104131030" type="text/css">
<script src="https://connect.facebook.net/ko_KR/sdk.js?hash=0488a1e329e3c7015e4d111fc6911c8a&amp;ua=modern_es6" async="" crossorigin="anonymous"></script><script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script><script type="text/javascript" src="/common/js/common.js?202104131030"></script>
<script type="text/javascript" src="/common/js/jquery.js?202104131030"></script>


<script type="text/javascript" language="javascript">
function goUrl(url) {
location.href = url;

}
</script><script type="text/javascript" language="javascript" src="/common/js/slb.js"></script><style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_customer_chat_bubble_animated_no_badge{box-shadow:0 3px 12px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_no_badge:hover{box-shadow:0 5px 24px rgba(0, 0, 0, .3)}.fb_customer_chat_bubble_animated_with_badge{box-shadow:-5px 4px 14px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_with_badge:hover{box-shadow:-5px 8px 24px rgba(0, 0, 0, .2)}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_new_ui_mobile_overlay_active{overflow:hidden}@keyframes fb_mpn_landing_page_slide_in{0%{border-radius:50%;margin:0 24px;width:60px}40%{border-radius:18px}100%{margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_in_from_left{0%{border-radius:50%;left:12px;margin:0 24px;width:60px}40%{border-radius:18px}100%{left:12px;margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes fb_bounce_out_v2_mobile_chat_started{0%{opacity:1;top:0}100%{opacity:0;top:20px}}@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style></head>




<body class="ALBA" cz-shortcut-listen="true">

<div id="SLB_film" style="z-index: 99997; position: absolute; display: none; width: 934px; height: 845px; background-color: rgb(0, 0, 0); opacity: 0.2;"></div>
<div id="SLB_content" onclick="SLB();" style="z-index: 99999; position:absolute;"></div>
<div id="SLB_loading" onclick="SLB();" title="Loading..."><img src="/image/common/loading.gif" border="0" alt="데이터 로딩중"></div>

<!-- GNB(s) -->

<div id="Header">
	<div id="HeaderGnb">
		<h1 style="top:11px"><a href="http://www.alba.co.kr" onclick="goUrl(this.href);return false;"><img src="//image.alba.kr/sign/bi_top.gif" alt="알바천국"></a></h1>
		<ul>
		
			<li class="login"><a href="http://sign.alba.co.kr/login/logingate.asp?site=WWW">로그인</a></li>
			<li class="home"><a href="http://www.alba.co.kr">HOME</a></li>
			<li class="job"><a href="http://www.alba.co.kr/job/Main.asp">채용정보</a></li>
			<li class="recruit"><a href="http://www.alba.co.kr/recruit/Main.asp">정직원채용</a></li>
			<li class="resume"><a href="http://www.alba.co.kr/resume/Main.asp">인재정보</a></li>
			<li class="customer"><a href="http://www.alba.co.kr/customer/Main.asp">고객지원</a></li>
		
		</ul>
	</div>
</div>

<!-- GNB(e) -->
<script type="text/javascript">
function blurLoginInput(obj) {
	if (obj.value == "") {
		if (obj.name == "userid") {
			obj.style.backgroundImage = "url(/image/ALBA/id.gif)";
		} else {
			obj.style.backgroundImage = "url(/image/ALBA/pw.gif)";
		}
	}
}

function blurLoginInputTMS(obj) {
	if (obj.value == "") {
		if (obj.name == "userid") {
			obj.style.backgroundImage = "url(/image/ALBA/id_camp.png)";
		} else {
			obj.style.backgroundImage = "url(/image/ALBA/pw_camp.png)";
		}
	}
}

function doLogin(frm) {
	if (document.getElementById("userid").value == "") {
		alert("아이디를 입력하세요.");
		return false;
	}
	if (document.getElementById("passwd").value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}

	if (typeof(jQuery("#g-recaptcha-response").val()) != "undefined") {
		if (jQuery("#g-recaptcha-response").val() == "") {
			alert("'로봇이 아닙니다.'를 체크 하신 후 안내에 따라 자동입력방지 이미지를 선택하시고 다시 로그인 해 주십시오.");
			return false;
		}
	}
	frm.action = "https://" + location.host + "/login/Login.asp";
	return true;
}

window.onload = function() {
	if (jQuery("#userid").val() == "") {
		jQuery("#userid").focus();
	} else {
		jQuery("#userid").focus();
		jQuery("#passwd").focus();
	}
}
</script>


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
						<h2>아직 알바천국 회원이 아니신가요? 회원가입 후 다양한 서비스를 이용해 보세요!</h2>
					
				</div>

				<form id="f" name="f" method="post" action="/login/Login.asp" onsubmit="return doLogin(this)">
				<input type="hidden" id="site" name="site" value="WWW">
				<input type="hidden" id="gourl" name="gourl" value="http://localhost:8080/ezen_work/member/member_login/loginForm.jsp">
					

					<div class="loginArea">
						<div class="loginAction">
							<p class="checkArea">
								<span><input type="checkbox" id="keep" name="keep" class="typeCheckbox" value="Y"><label for="keep">로그인 상태 유지</label> <a href="#LoginMaintainDetail" onclick="jQuery('.layerHelp').hide();jQuery('#LoginMaintainDetail').show();return false;"><img src="//image.alba.kr/e/common/201406/secret_help.png" alt="도움말"></a></span>
								<span class="security"><span>보안접속실행</span> <a href="#SecretHelp" onclick="jQuery('.layerHelp').hide();jQuery('.secretHelp').toggle();return false;" style="text-decoration:none"><img src="/image/ALBA/secret_help.png" alt="도움말"></a></span>
							</p>

							<div id="LoginMaintain" class="loginMaintain layerHelp">
								개인정보보호를 위해<br> <strong>개인PC에서만 사용해주세요</strong>
								<a href="#LoginMaintainDetail" class="viewDetail" onclick="jQuery('.layerHelp').hide();jQuery('#LoginMaintainDetail').show();return false;">자세히 보기 &gt;</a>
								<span class="arrow"></span>
								<a href="#LoginMaintain" class="close" onclick="jQuery('#LoginMaintain').hide();return false;">닫기</a>
							</div>
							<div id="LoginMaintainDetail" class="loginMaintainDetail layerHelp">
								<p class="title">로그인 상태 유지 안내</p>
								<p>아이디와 비밀번호를 입력하지 않고, 편리하게 로그인 정보를 유지할 수 있는 기능 입니다.</p>
								<p>로그인 상태 유지를 선택하고, 로그인하시면, 브라우저의 쿠키를 삭제하거나, 직접 로그아웃을 선택하기 전까지 로그인 상태가 유지됩니다.</p>
								<p>다만, 2주동안 해당 PC에서 알바천국을 방문하지 않는 경우, 자동으로 해제 됩니다.</p>
								<p class="caution">
									<span>※</span> 개인정보 보호를 위해 <strong>여러 사람이 사용하는 공용PC에서는 사용에 유의해주세요.</strong><br>
									<span>※</span> 일부 브라우저에서 제공하는 ‘개인정보보호 브라우징(InPrivate 브라우징) 상태로 인터넷 이용 시 쿠키가 저장되지 않아 로그인 상태 기능을 사용하실 수 없습니다.
								</p>
								<span class="arrow"></span>
								<a href="#LoginMaintainDetail" class="close" onclick="jQuery('#LoginMaintainDetail').hide();return false;">닫기</a>
							</div>
							<div id="SecretHelp" class="secretHelp layerHelp">
								<p>보안접속안내</p>
								로그인 시 회원님의 아이디 및 비밀번호를 암호화하여 회원님의 정보를<br> 안전하게 보호해줍니다.<br>&nbsp;<br>
								<strong><span>※</span> <em>보안접속 미지원 브라우저 안내</em></strong><br>
								<em>2015년 12월 30일 부터</em> 아래 브라우저 이용 고객님께서는 로그인 시 오류가 발생할 수 있습니다. 아래 내용을 참조하여 운영체제나 브라우저를 업그레이드 하신 후 이용해 주시기 바랍니다.<br>&nbsp;<br>
								* Internet Explorer : 버전 7.0 미만 <a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank">업그레이드 링크</a><br>
								* Chrome 버전 : 26 미만 <a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank">업그레이드 링크</a><br>
								* Safari (Mac OS X에서 실행될 때) : OS X 버전 10.5 미만 <a href="https://support.apple.com/ko-kr/HT204416" target="_blank">업그레이드 링크</a><br>
								* Firefox 버전 : 1.5 미만<br>
								* Netscape : 버전 7.1 미만<br>
								* Opera : 버전 9.0 미만<br>
								* Java 기반 어플리케이션 및 제품 : 버전 1.4.2 미만<br>
								* Konqueror : 버전 3.5.6 미만<br>
								* OpenSSL 기반 어플리케이션과 제품 : 버전 0.9.8o 미만<br>&nbsp;<br>
								<a href="//www.alba.co.kr/customer/notice/NoticeView.asp?idx=2861">상세안내 바로가기 &gt;</a>
								<span class="arrow"></span>
								<a href="#" class="close" onclick="jQuery('#SecretHelp').hide();return false;">닫기</a>
							</div>
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
								<a class="facebook" href="#" onclick="OauthLoginCLS.doLogin('F');return false;">페이스북</a>
								<a class="naver" href="#" onclick="OauthLoginCLS.doLogin('N');return false;">네이버</a>
								<a class="kakao" href="#" onclick="OauthLoginCLS.doLogin('K');return false;">카카오톡</a>
								<!--a class="google"	href="#" onclick="OauthLoginCLS.doLogin('G');return false;">구글</a-->
								<a class="apple" href="#" onclick="OauthLoginCLS.doLogin('A');return false;">애플</a>
								</p><div id="OauthFrame"></div>
							<p></p>
						</div>
						<fieldset class="login">
							<legend>로그인</legend>
							<div class="loginInput">
								<dl>
									<dt><label for="userid">아이디</label></dt>
									<dd><input type="text" id="userid" name="userid" value="" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="background: url(&quot;/image/ALBA/id.gif&quot;) 0px 11px no-repeat;" tabindex="1"></dd>
									<dt><label for="passwd">패스워드</label></dt>
									<dd class="inputPw"><input type="password" id="passwd" name="passwd" class="i_text" onfocus="this.style.backgroundImage=''" onblur="blurLoginInput(this)" style="background:url('/image/ALBA/pw.gif') no-repeat 0 11px" tabindex="2"></dd>
								</dl>
								<input id="btnLogin" type="image" src="/image/ALBA/btn_login.png" class="btnLogin" alt="로그인" tabindex="3">
							</div>
							<p class="loginBtn">
								<a href="https://sign.alba.co.kr/user/join/?site=WWW" class="btn"><strong>회원가입</strong></a>
								<a href="https://sign.alba.co.kr/user/find/IdSearch.asp?site=WWW" class="btn"><span>아이디 찾기</span></a>
								<a href="https://sign.alba.co.kr/user/find/PwdSearch.asp?site=WWW" class="btn"><span>비밀번호 찾기</span></a>
							</p>
						</fieldset>

						
					</div>

				</form>

				<div class="loginContents">
					<div class="person">
						<h3>개인회원 특별서비스</h3>
						<ul>
							<li>간편한 입사지원 관리 - 알바천국 이력서를 통해 One클릭 입사지원</li>
							<li>SMART 맞춤 채용정보 - 희망 조건에 따라 매칭율 높은 채용정보 제공</li>
							<li>알바상담센터 - 아르바이트하면서 발생한 문제에 대한 무료 상담</li>
						</ul>
					</div>
					<div class="biz">
						<h3>기업회원 특별서비스</h3>
						<ul>
							<li>편리한 지원자 관리 - 온라인 입사지원자를 간편하게 한번에 관리</li>
							<li>정액권, 이력서열람 상품 구매가능 - 최대 40% 할인된 정액권 상품, 원하는 인재를 직접 찾을 수 있는 이력서 상품</li>
							<li>적립,무료쿠폰 제공 - 6만원 이상 결제시, 결제금액의 3%적립, 뉴스레터 수신 시 매주 할인쿠폰 발송</li>
						</ul>
					</div>
				</div>
			</div>
		</td>
	</tr>
</tbody></table>

	<div id="Footer">

	
		<ul class="nav">
			<li class="guide first"><a href="http://www.alba.co.kr/serviceGuide/guinregist.asp" onclick="goUrl(this.href);return false;">전체유료상품안내</a></li>
			<li class="intro"><a href="http://corp.alba.co.kr" target="_blank">회사소개</a></li>
			<li class="inquiry"><a href="http://corp.alba.co.kr/about/Inquiry.asp" target="_blank">제휴 및 배너광고 문의</a></li>
			<li class="agreement"><a href="/policy/agreement.asp?site=WWW" onclick="goUrl(this.href);return false;">이용약관</a></li>
			<li class="privacy"><a href="/policy/privacy.asp?site=WWW" onclick="goUrl(this.href);return false;">개인정보처리방침</a></li>
			<li class="email"><a href="/policy/emailNo.asp?site=WWW" onclick="window.open(this.href, 'noEmail', 'width=450,height=504,top=0,left=0,status=no,scrollbars=no,resizable=no'); return false" title="이메일무단수집거부 팝업창">이메일무단수집거부</a></li>
			<li class="sitemap"><a href="http://www.alba.co.kr/sitemap/sitemap.asp" onclick="goUrl(this.href);return false;">사이트맵</a></li>
		</ul>
	
		<address>Copyright ⓒ <strong>(주)미디어윌네트웍스</strong>. All Rights Reserved.</address>

		<div class="familySite">
			<a class="link" href="#FamilySiteList" onclick="viewFamilySiteInfo(); return false;"><img src="/image/ALBA/btn_FamilySite.gif" alt="FamilySite"></a>
			<ul id="FamilySiteList">
				
					<li><a href="http://www.ganhojob.com" target="_blank">간호잡</a></li>
					<li><a href="http://www.gangsa.com" target="_blank">강사닷컴</a></li>
				
			</ul>
		</div>
	</div>

	<script type="text/javascript" language="javascript">
	function viewFamilySiteInfo() {
		document.getElementById('FamilySiteList').style.display=(document.getElementById('FamilySiteList').style.display=='block') ? 'none' : 'block';
	}
	</script>
	<!--[if IE 6]><script type="text/javascript">try{document.execCommand('BackgroundImageCache',false,true);}catch(me){}</script><![endif]-->




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