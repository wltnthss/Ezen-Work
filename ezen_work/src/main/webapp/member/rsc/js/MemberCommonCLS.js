var OAUTH_FAPPID = { ALBA: "788189774566772", JOBSEARCH: "1088470491182206" };
var OAUTH_KAPPID = { ALBA: "a1fe7ce30fc15b388357dc7da3cf7057", JOBSEARCH: "5ec0c39bb09c5f9b2b080f585d4e4ad6" };
var OAUTH_GAPPID = { ALBA: "223315527955-0qeefdvemb22cbmjsb884hon4qrovmmc.apps.googleusercontent.com", JOBSEARCH: "" };
var OAUTH_AAPPID = { ALBA: "kr.co.alba.sign", JOBSEARCH: "" };
var OAUTH_SVCDOMAIN;
var OAUTH_PROTOCOL = location.protocol;
var OauthLoginCLS = {
	init: function() {
		var signdomain = (OAUTH_CONFIG.SVCTYPE.toLowerCase() == "test" ? "https://sign0" : "https://sign");
		if (OAUTH_CONFIG.SITE == "ALBA") {
			signdomain += ".alba.co.kr";
		} else if (OAUTH_CONFIG.SITE == "JOBSEARCH") {
			signdomain += ".job.co.kr";
		}
		OAUTH_SVCDOMAIN = signdomain;
	},

	// 鍮덇컪泥댄겕
	isEmpty: function(str) {
		return (str == null || str == "null" || typeof (str) == "undefined" || str == "undefined" || str.replace(/ /gi, "") == "") ? true : false;
	},

	// SNS濡쒓렇�� �대┃��
	doLogin: function(snscode) {
		if (location.host.indexOf(".alba.co.kr") > -1) {
			document.domain = "alba.co.kr";
		} else if (location.host.indexOf(".job.co.kr") > -1) {
			document.domain = "job.co.kr";
		}

		if (snscode == "F") {			// �섏씠�ㅻ턿
			OauthLoginCLS.checkFacebook();
		} else if (snscode == "K" || snscode == "KL") {	// 移댁뭅�ㅽ넚, 移댁뭅�ㅽ넚�곌껐�댁젣
			var ua = window.navigator.userAgent;
			var msie = ua.indexOf("MSIE");
			var is_version = true;
			if (msie > 0) {
				var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
				if (re.exec(ua) != null)
					rv = parseFloat(RegExp.$1);
				if (rv <= 8)
					is_version = false;
			}
			if (is_version == true) {
				snscode == "K" ? OauthLoginCLS.checkKakao() : OauthLoginCLS.checkKakaoUnlink();
			} else {
				alert("移댁뭅�ㅽ넚�� IE9 �댁긽�먯꽌留� 吏��먮맗�덈떎.");
			}
		} else if (snscode == 'N') {	// �ㅼ씠踰�
			OauthLoginCLS.checkNaver();
		} else if (snscode == "G") {	// 援ш�
			OauthLoginCLS.checkGoogle();
		} else if (snscode == "A") {	// �좏뵆
			OauthLoginCLS.checkApple();
		}
	},

	// 濡쒓렇�몄떎��
	execLogin: function(param) {
		var site = OauthLoginCLS.isEmpty(param.site) ? "" : param.site;
		var snscode = OauthLoginCLS.isEmpty(param.snscode) ? "" : param.snscode;
		var snsyn = OauthLoginCLS.isEmpty(param.snsyn) ? "" : param.snsyn;
		var userid = OauthLoginCLS.isEmpty(param.userid) ? "" : param.userid;
		var usernm = OauthLoginCLS.isEmpty(param.usernm) ? "" : param.usernm;
		var gender = OauthLoginCLS.isEmpty(param.gender) ? "" : param.gender;
		var email = OauthLoginCLS.isEmpty(param.email) ? "" : param.email;
		var birth = OauthLoginCLS.isEmpty(param.birth) ? "" : param.birth;
		var profile = OauthLoginCLS.isEmpty(param.profile) ? "" : param.profile;
		var picture = OauthLoginCLS.isEmpty(param.picture) ? "" : param.picture;
		var gourl = jQuery("#gourl").val();
		var adultcert = OauthLoginCLS.isEmpty(param.adultcert) ? "" : param.adultcert;
		var popup = OauthLoginCLS.isEmpty(param.popup) ? "" : param.popup;

		var strHtml = "";
		strHtml += "<div id=\"divSnsLogin\">";
		strHtml += "<form id=\"frmSnsLogin\" name=\"frmSnsLogin\" method=\"post\" accept-charset=\"utf-8\" action=\"" + OAUTH_SVCDOMAIN + "/login/LoginSnsProc.asp\">";
		strHtml += "	<input type=\"hidden\" id=\"sns_site\" name=\"site\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_snscode\" name=\"snscode\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_snsyn\" name=\"snsyn\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_userid\" name=\"userid\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_usernm\" name=\"usernm\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_gender\" name=\"gender\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_email\" name=\"email\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_birth\" name=\"birth\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_profile\" name=\"profile\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_picture\" name=\"picture\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_adultcert\" name=\"adultcert\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_gourl\" name=\"gourl\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_popup\" name=\"popup\" />";
		strHtml += "	<input type=\"hidden\" id=\"sns_mobile\" name=\"mobile\" />";
		strHtml += "</form>";
		strHtml += "</div>";
		jQuery("#divSnsLogin").remove();
		jQuery("body").append(strHtml);

		jQuery("#sns_site").val(site);
		jQuery("#sns_snscode").val(snscode);
		jQuery("#sns_snsyn").val("Y");
		jQuery("#sns_userid").val(userid);
		jQuery("#sns_usernm").val(usernm);
		jQuery("#sns_gender").val(gender);
		jQuery("#sns_email").val(email);
		jQuery("#sns_birth").val(birth);
		jQuery("#sns_profile").val(profile);
		jQuery("#sns_picture").val(picture);
		jQuery("#sns_adultcert").val(adultcert);
		jQuery("#sns_gourl").val(gourl);
		jQuery("#sns_popup").val(popup);
		jQuery("#sns_mobile").val("N");
		document.frmSnsLogin.submit();
	},

	// FACEBOOK 濡쒓렇�몄긽�쒖껜��
	checkFacebook: function() {
		FB.getLoginStatus(function(response) {
			if (response.status === "connected") {
				OauthLoginCLS.loginFacebook();
			} else {
				if (OAUTH_CONFIG.MOBILE != "Y") {
					FB.login(function(response) {
						if (response.status === "connected") {
							OauthLoginCLS.loginFacebook();
						}
					}, { scope: "public_profile,email" });
				} else {
					//var url = OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=F&mobile=Y&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&keep=" + encodeURIComponent(jQuery("#keep").is(":checked") ? "Y" : "N")
					var url = OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=F&mobile=Y&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&keep=Y";
					if ($("#device").val() == "") {
						location.href = url;
					} else {
						location.replace(url);
					}
				}
			}
		});
	},

	// FACEBOOK 濡쒓렇�몄쿂由�
	loginFacebook: function() {
		FB.api("/me", { fields: "name,email,gender" }, function(response) {
			var birth = (typeof (response.birthday) == "undefined") ? "" : response.birthday;
			var barr = birth.split("/");
			OauthLoginCLS.execLogin({
				site: OAUTH_SITECD.FACEBOOK,
				snscode: "F",
				snsyn: "Y",
				userid: response.id,
				usernm: response.name,
				gender: response.gender == "male" ? "M" : (response.gender == "female" ? "F" : ""),
				email: response.email,
				birth: barr.length == 3 ? barr[2] + "." + barr[0] + "." + barr[1] : "",
				profile: "http://facebook.com/profile.php?id=" + response.id,
				picture: "https://graph.facebook.com/" + response.id + "/picture?type=large",
				adultcert: OAUTH_CONFIG.ADULTCERT,
				popup: OAUTH_CONFIG.POPUP == "Y" ? "1" : ""
			});
		});
	},

	// KAKAO 濡쒓렇�몄긽�쒖껜��
	checkKakao: function() {
		Kakao.Auth.getStatusInfo(function(response) {
			if (response.status === "connected") {
				OauthLoginCLS.loginKakao();
			} else {
				if (OAUTH_CONFIG.MOBILE != "Y") {
					Kakao.Auth.login({
						success: function(authObj) {
							OauthLoginCLS.loginKakao();
						},
						fail: function(errorObj) {
							//alert('移댁뭅�ㅽ넚 濡쒓렇�몄뿉 �ㅽ뙣�섏��듬땲��.');
						},
						persistAccessToken: false,
						persistRefreshToken: false
					});
				} else {
					var url = OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=K&mobile=Y&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&keep=Y";
					if ($("#device").val() == "") {
						location.href = url;
					} else {
						location.replace(url);
					}
				}
			}
		});
	},

	// KAKAO 濡쒓렇�몄긽�쒖껜�� �� �깆뿰寃고빐��
	checkKakaoUnlink: function() {
		Kakao.Auth.getStatusInfo(function(response) {
			if (response.status === "connected") {
				OauthLoginCLS.KakaoUnLink();
			} else {
				if (OAUTH_CONFIG.MOBILE != "Y") {
					Kakao.Auth.login({
						success: function(authObj) {
							OauthLoginCLS.KakaoUnLink();
						},
						fail: function(err) {
							alert('移댁뭅�ㅽ넚 濡쒓렇�몄뿉 �ㅽ뙣�섏��듬땲��.');
						}
						//persistAccessToken : false,
						//persistRefreshToken : false
					});
				} else {
					Kakao.Auth.logout(function(response) {
						var url = OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=KL&mobile=Y&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + OAUTH_SVCDOMAIN + "/user/change/Kakao_unlinkProc.asp";
						if ($("#device").val() == "") {
							location.href = url;
						} else {
							location.replace(url);
						}
					});
				}
			}
		});
	},

	// KAKAO 濡쒓렇�몄쿂由�
	loginKakao: function() {
		Kakao.API.request({
			url: "/v2/user/me",
			data: { secure_resource: true },
			success: function(response) {
				var userid = response.id;
				var usernm = "";
				var picture = "";
				if (typeof (response.properties) == "object") {
					usernm = OauthLoginCLS.isEmpty(response.properties.nickname) ? "" : response.properties.nickname;
					picture = OauthLoginCLS.isEmpty(response.properties.profile_image) ? "" : response.properties.profile_image;
				}
				var email = "";
				var gender = "";
				if (typeof (response.kakao_account) == "object") {
					email = OauthLoginCLS.isEmpty(response.kakao_account.email) ? "" : response.kakao_account.email;
					if (!OauthLoginCLS.isEmpty(response.kakao_account.gender)) {
						gender = response.kakao_account.gender == "male" ? "M" : (response.kakao_account.gender == "female" ? "F" : "");
					}
				}

				OauthLoginCLS.execLogin({
					gourl: jQuery("#gourl").val(),
					site: OAUTH_SITECD.KAKAO,
					snscode: "K",
					snsyn: "Y",
					userid: userid.toString(),
					usernm: usernm,
					gender: gender,
					email: email,
					birth: "",
					profile: "",
					picture: picture,
					adultcert: OAUTH_CONFIG.ADULTCERT,
					popup: OAUTH_CONFIG.POPUP == "Y" ? "1" : ""
				});
			},
			fail: function(response) {
				alert(response.msg);
			}
		});
	},

	// KAKAO unLink 泥섎━ �깆뿰寃고빐��
	KakaoUnLink: function() {
		Kakao.API.request({
			url: '/v1/user/unlink',
			success: function(res) {
				var strLoginUrl = OAUTH_SVCDOMAIN + "/user/change/Kakao_unlinkProc.asp";
				if ($("#device").val() == "") {
					location.href = strLoginUrl;
				} else {
					location.replace(strLoginUrl);
				}
			},
			fail: function(error) {
				alert('�깆뿰寃고빐�� �ㅽ뙣�섏뿀�듬땲��.');
			}
		});
	},

	// NAVER 濡쒓렇�몄긽�쒖껜��
	checkNaver: function() {
		//jQuery("#OauthFrame").html("<iframe id='OauthNaver' style='display:none' src='https://nid.naver.com/nidlogin.logout'></iframe>");
		if (OAUTH_CONFIG.MOBILE != "Y") {
			window.open(OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=N&mobile=N&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&popup=" + (OAUTH_CONFIG.POPUP == "Y" ? "1" : ""), "OAuth", "width=460px, height=517px, resizable=no");
		} else {
			var url = OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=N&mobile=Y&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&keep=Y";
			if ($("#device").val() == "") {
				location.href = url;
			} else {
				location.replace(url);
			}
		}
	},

	// Google 濡쒓렇�몄긽�쒖껜��
	checkGoogle: function() {
		if (gauth.isSignedIn.get()) {
			OauthLoginCLS.loginGoogle();
		} else {
			if (OAUTH_CONFIG.MOBILE != "Y") {
				gauth.signIn({
					scope: "profile email"
				}).then(function() {
					OauthLoginCLS.loginGoogle();
				});
			} else {
				var url = OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=G&mobile=Y&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&keep=Y";
				if ($("#device").val() == "") {
					location.href = url;
				} else {
					location.replace(url);
				}
			}
		}
	},

	// Google 濡쒓렇�몄쿂由�
	loginGoogle: function() {
		var profile = gauth.currentUser.get().getBasicProfile();
		OauthLoginCLS.execLogin({
			site: OAUTH_SITECD.GOOGLE,
			snscode: "G",
			snsyn: "Y",
			userid: profile.getId(),
			usernm: profile.getName(),
			gender: "",
			email: profile.getEmail(),
			birth: "",
			profile: "",
			picture: profile.getImageUrl(),
			adultcert: OAUTH_CONFIG.ADULTCERT,
			popup: OAUTH_CONFIG.POPUP == "Y" ? "1" : ""
		});
	},

	// APPLE 濡쒓렇�몄긽�쒖껜��
	checkApple: function() {
		if (OAUTH_CONFIG.MOBILE != "Y") {
			window.open(OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=A&mobile=N&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&popup=" + (OAUTH_CONFIG.POPUP == "Y" ? "1" : ""), "OAuth", "width=700px, height=699px, resizable=no");
		} else {
			var url = OAUTH_SVCDOMAIN + "/login/Oauth.asp?snscode=A&mobile=Y&adultcert=" + OAUTH_CONFIG.ADULTCERT + "&gourl=" + encodeURIComponent(jQuery("#gourl").val()) + "&keep=Y";
			if ($("#device").val() == "") {
				location.href = url;
			} else {
				location.replace(url);
			}
		}
	}
}