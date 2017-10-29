<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" ng-app="app" ng-id="app"> 
<head>
<link rel="alternate" media="handheld" href="http://m.diningcode.com" />
<link rel="shortcut icon" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/favicon.ico" type="image/x-icon" />
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="전국 어디서나 진짜 맛집만 찾아주는 빅데이터 맛집검색, 다이닝코드"/>
<meta property="og:image" content="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/diningcode_logo.png"/>
<meta property="og:title" content="빅데이터 맛집검색, 다이닝코드"/>
<meta property="og:url" content="http://www.diningcode.com"/>
<meta property="og:site_name" content="다이닝코드"/>
<meta property="og:description" content="빅데이터 맛집검색, 다이닝코드"/>
<!-- jQuery -->
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/jquery/1.11.2/jquery.min.js?2017082501"></script>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/jqueryui/1.11.4/jquery-ui.min.js?2017082501"></script>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/js/jquery.cookie.js?2017082501"></script>
<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/jqueryui/1.11.4/jquery-ui.min.css?2017082501" />
<!-- Angular -->
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular.min.js?2017082501"></script>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular-animate.min.js?2017082501"></script>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/bootstrap/ui-bootstrap-tpls-0.13.0.min.js?2017082501"></script>
<!-- Facebook -->
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/FB_script.js?2017082501"></script>
<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/css/style.css?2017082501" />
<!-- Bootstrap -->
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/bootstrap/bootstrap.min.js?2017082501"></script>
<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/bootstrap/bootstrap.min.css?2017082501" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/bootstrap/html5shiv.js?2017082501"></script>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/bootstrap/respond.min.js?2017082501"></script>
<![endif]--> 
<!-- font-awesome --><link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css?2017082501">
<!-- Custom -->
<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/index.css?2017082501" />
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/index.js?2017082501"></script>
<script src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/notice/noticeApp.js?2017082501" type="text/javascript"></script>
<script type=text/javascript>
var gps = false;
$(document).ready(function() {
//var height	= $(window).height() / 2;	
//$('#div_new').height(height);	//$('#back_div_content').css("top", (height + 50) + "px");
});</script>
<title>빅데이터 맛집검색, 다이닝코드</title> 
<!-- Facebook Pixel Code --> 
<script> 
!function (f, b, e, v, n, t, s) { 
	if (f.fbq)return; n = f.fbq = function () { 
		n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments) 
				}; 
		if (!f._fbq)f._fbq = n; 
		n.push = n; 
		n.loaded = !0; 
		n.version = '2.0'; 
		n.queue = []; 
		t = b.createElement(e); 
		t.async = !0; 
		t.src = v; 
		s = b.getElementsByTagName(e)[0]; 
		s.parentNode.insertBefore(t, s) 
		}
		(window, document, 'script', '//connect.facebook.net/en_US/fbevents.js'); 
		fbq('init', '950571798344364');
		fbq('track', "PageView"); 
		fbq('track', "viewContent"); 
		</script> 
		<noscript> 
		<img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=950571798344364&ev=PageView&noscript=1"/> </noscript> 
		<!-- End Facebook Pixel Code -->
		<!-- Google Analytics -->
		<script> 
		(function(i,s,o,g,r,a,m){
			i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ 
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*
			new Date();a=s.createElement(o), 
						m=s.getElementsByTagName(o)[0];
		a.async=1;
		a.src=g;
		m.parentNode.insertBefore(a,m) 
		})
		(window,document,'script','//www.google-analytics.com/analytics.js','ga'); 
		ga('create', 'UA-46679784-1', 'diningcode.com'); 
		ga('send', 'pageview');
		</script>
		<!-- End Google Analytics -->
		</head>
		<body> 
		<div ng-include="'sharedApp/popup/event.php?2017082501'"></div> 
		<div ng-include="'report/report_new_popup.php?2017082501'"></div> 
		<script src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/login_module.js?2017082501"></script>
		<link href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/login_module.css?2017082501" rel="stylesheet">
		<link href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/css/loader.css?2017082501" rel="stylesheet">
		<script> 
		var w_server = "http://www.diningcode.com"; 
		var dicons = "https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/"; 
		var http_host = "www.diningcode.com"; 
		</script>
		<div ng-app= "loginCtrl" ng-controller="loginCtrl" >
		<div class="modal fade" id="loginModal" talbindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
		<div class="modal-dialog modal-login modal-sm">
		<div class="modal-content login-content">
		<div class="modal-body p-all0">
		<div class='loading-wrap-lg'>
		<div class='loader'>
		</div>
		</div>
		<div class="modal_login_wrap" role="tabpanel">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs nav-login list-2 text-center font_tab" role="tablist">
		<li role="presentation" class="active">
		<a href="#login_tab" aria-controls="login_tab"	role="tab"	data-toggle="tab" >로그인</a></li>
		<li role="presentation" >
		<a class="m-all0" href="#sign_tab" aria-controls="sign_tab"	role="tab"	data-toggle="tab" >회원가입</a>
		</li>
		</ul>
		<!-- Tab panes --><div class="tab-content p-all10">
		<div role="tabpanel" class="tab-pane fade in active" id="login_tab">
		<div class="text-center m-top10 m-bot20">
		<img alt="login-logo" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/i_logo.png">
		</div>
		<button type="button" class="btn btn-fb wid-100" ng-click="fb_login()">Facebook 으로 시작하기</button>
		<!-- data-dismiss="modal" -->
		<div class="m-top20">
		<p class="m-bot5 bold font-12"> 이메일로 로그인하기 </p>
		<input class="form-control" type="text" placeholder="이메일주소" ng-model="login_data.email" ng-change = "form_check('email', login_data, 'loginform')" ng-keydown="form_check('email', login_data, 'loginform')"><p class="guide_red m-bot5" ng-bind = "login_data.guide.email">
		</p>
		<input class="form-control m-top10" type="password" placeholder="비밀번호" ng-model="login_data.pw" ng-change = "form_check('pw', login_data, 'loginform');"ng-keyup="form_check('pw', login_data, 'loginform');" ng-keydown="keydown_check($event,'login_pw')">
		<p class="guide_red m-bot5" ng-bind = "login_data.guide.pw"></p>
		</div>
		<div class="box-grid m-top10 font-12">
		<div class="wid-50 pull-left">
		<label>
		<input type="checkbox" name="sport[]" checked="checked" value="football" ng-model="maintain_login">로그인상태 유지</label>
		</div>
		<div class="wid-50 pull-right text-right">
		<a class="find_pw_link underline" data-dismiss="modal" data-toggle="modal"	data-target="#findPwModal">비밀번호찾기</a>
		</div>
		</div>
		<div class="help-block">아직 회원이 아니신가요?<br>회원가입을 하시면 프리미엄 기능이 제공됩니다.</div>
		<button type="button" class="btn btn-emerald wid-100 m-bot40" ng-disabled = "!login_btn" ng-click="login()" >로그인</button>
		<div class="policy align-right">
		<a href="policy.service.php" target="_blank" >서비스 약관</a>과 <a href="policy.privacy.php" target="_blank" >개인정보 취급방침</a>
		</div>
		</div>
		<div role="tabpanel" class="tab-pane fade" id="sign_tab">
		<div class="text-center m-top10 m-bot20">
		<img alt="login-logo" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/i_logo.png"></div>
		<button type="button" class="btn btn-fb wid-100"	ng-click="fb_login()">Facebook 으로 시작하기</button>
		<div class="m-top20">
		<p class="m-bot5 bold font-12">이메일로 가입하기</p>
		<input class="form-control" type="text" placeholder="이메일주소" id="email_join" ng-model="signup_data.email" >
		<p class="guide_red" ng-bind = "signup_data.guide.email">
		<!-- {{signup_guide_email}} -->
		</p>
		<input class="form-control m-top10" type="text" placeholder="이름(별명)" id='name_join' ng-model="signup_data.name" >
		<p class="guide_red" ng-bind="signup_data.guide.name">
		<!-- {{signup_guide_name}} -->
		</p>
		<input class="form-control m-top10" type="password" placeholder="비밀번호(8자이상)" 
					id='pw_join' ng-model="signup_data.pw" ng-keyup="form_check('pw', signup_data, 'signupform')" 
					ng-keydown="keydown_check($event,'join_pw')" ng-change="form_check('name', signup_data, 'signupform')">
		<p class="guide_red" ng-bind="signup_data.guide.pw">
		<!-- {{signup_guide_pw}} --></p>
		</div>
		<div class="policy margin-5">가입과 함께 다이닝코드의 
		<a href="policy.service.php" target="_blank" class="underline">서비스약관</a>과 
		<a class="underline" id="openPrivacyPolicyModal">개인정보수집이용</a>에 동의하시게 됩니다.
		</div>
		<button type="button" class="btn btn-emerald wid-100" ng-disabled = "!join_btn" ng-click="join('click')" id="join_btn">가입하기</button>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		<div class="modal fade" id="privacyPolicyModal" tabindex="-1" role="dialog" aria-labelledby="privacyPolicyModal" aria-hidden="true"> 
		<div class="modal-dialog"> 
		<div class="modal-content"> 
		<div class='loading-wrap-lg'> 
		<div class='loader'>
		</div> 
		</div> 
		<div class="modal-header"> 
		<button type="button" class="close" data-dismiss="modal" aria-label="Close"> 
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/i_close_gr_sm.png"/> </button> 
		<h4 class="modal-title" id="myModalLabel">개인정보 수집 · 이용에 관한 사항</h4> 
		</div> 
		<div class="modal-body modal-body-gray"> 
		<div class="modal-header-shadow"></div> 
		<div class="p-all10"> 
		<p id="privacyPolicyText">회사는 회원제 서비스 제공을 위해 귀하의 개인정보를 아래와 같이 수집하고자 합니다.</p> 
		<table id="privacyPolicyTable"> <tr> 
		<td>수집하는 개인정보 항목</td> 
		<td>수집 및 이용목적</td> 
		<td>보유 및 이용기간</td> 
		</tr> 
		<tr> 
		<td>아이디, 비밀번호</td> 
		<td>회원제 가입 서비스제공, 계약이행을 위한 연락, 민원 및 고충 처리</td> 
		<td>회원탈퇴 후 7일까지</td> 
		</tr> 
		</table> 
		</div> 
		</div> 
		</div> 
		</div> 
		</div>
		<div class="modal fade" id="fbMoreInfoModal" tabindex="-1" role="dialog" aria-labelledby="pwResetModal"	aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content"> 
			<div class='loading-wrap-lg'> 
				<div class='loader'>
				</div> 
			</div>
		<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/i_close_gr_sm.png"/>
		</button>
		<h4 class="modal-title" id="myModalLabel">회원가입 정보확인</h4>
		</div>
		<div class="modal-body modal-body-gray">
		<div class="modal-header-shadow">
		</div>
		<div class="p-all10">
		<p class="m-bot5 bold font-12">회원정보가 맞는지 확인해주세요.</p>
		<div class="border-bot-d6">
			<img class="fb_profile img-circle pull-left" id="fb_profile" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/ic_login_setting_user.png" >
				<div class="m-left50 p-bot20">
					<input class="form-control" type="text" placeholder="홍길동" ng-model="fb_info_modify.name" 
							ng-keyup="form_check('name', fb_info_modify, 'fb_info')" ng-change="form_check('name', fb_info_modify, 'fb_info')">
				
		<!-- <p class="guide_red" ng-bind="fb_info_modify.guide.name"> -->
		<input class="form-control m-top10" type="text" placeholder="이메일비공개" 
				ng-model="fb_info_modify.email" ng-keyup="form_check('email', fb_info_modify, 'fb_info')" 
					ng-change="form_check('email', fb_info_modify, 'fb_info')" ng-keydown = "keydown_check($event,'fb_info')">
					<p class="guide_red" ng-bind="fb_info_modify.guide.email">
					</div>
			</div>
					<button type="button" class="btn btn-emerald m-top20 m-bot10 wid-100" ng-disabled="!fb_info_btn" ng-click="signup_with_fb()">확인</button>
		</div>
		</div>
			</div>
				</div>
					</div>
		<div class="modal fade" id="findPwModal" tabindex="-1" role="dialog" aria-labelledby="findPwModal"	aria-hidden="true">
		<div class="modal-dialog modal-sm">
		<div class="modal-content">
		<div class='loading-wrap-lg'>
		<div class='loader'>
		</div>
		</div>
		<div class="modal-header modal-header-center">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/i_close_gr_sm.png"/></button>
		<h4 class="modal-title">비밀번호 찾기</h4></div><div class="modal-body">
		<div class="title-block text-center">회원님의 계정으로 비밀번호 재설정 링크를 보내드립니다</div>
		<input class="form-control m-top20" type="text" placeholder="이메일입력"
				 ng-model="reset_data.email" ng-change="form_check('email', reset_data, 'send_reset_emailform')" ng-keydown = "keydown_check($event,'send_resetpw_email')">
		<p class="guide_red m-bot5" ng-bind = "reset_data.guide.email"></p>
		<div class="m-top10">1일 이내에 이메일 함을 열어 비밀번호를 재설정 해 주세요</div>
		<button type="button" class="btn btn-emerald m-top10 m-bot10 wid-100" ng-disabled = "!sendreset_btn" ng-click="send_reset_email()">비밀번호 재설정 메일받기</button>
		</div>
		</div>
		</div>
		</div>
		<div class="modal fade" id="authOverModal" tabindex="-1" role="dialog" aria-labelledby="authOverModal" aria-hidden="true">
		<div class="modal-dialog modal-sm"><div class='loading-wrap-lg'><div class='loader'>
		</div>
		</div>
		<div class="modal-content"><div class="modal-header modal-header-center">
		<h4 class="modal-title">인증기간 경과</h4>
		</div>
		<div class="modal-body">
		<div class="title-block text-center">이메일 인증 기간이 경과된 링크입니다. 인증 메일을 다시 받으시겠습니까?</div>
		<div class="box-grid m-top40 m-bot10">
		<button type="button" class="btn btn-darkgray wid-49 pull-left" ng-click="reload_main('authOverModal')">취소</button>
		<button type="button" class="btn btn-emerald wid-49 pull-right" ng-click="resend_mail()">다시받기</button>
		</div>
		</div>
		</div>
		</div>
		</div>
		<button type="button" class="modal_Btn" id="modal_auth_open" data-toggle="modal" data-target="#authOverModal" style="display: none"></button>
		<button type="button" class="modal_Btn" id="modal_setpw_open" data-toggle="modal" data-target="#pwResetModal" style="display: none"></button>
		<div class="modal fade" id="notvalid" tabindex="-1" role="dialog" aria-labelledby="authOverModal" aria-hidden="true">
		<div class="modal-dialog modal-sm"><div class='loading-wrap-lg'><div class='loader'></div></div><div class="modal-content">
		<div class="modal-header modal-header-center"><h4 class="modal-title">잘못된 접근</h4></div>
		<div class="modal-body"><div class="title-block text-center">유효하지 않은 링크 입니다.</div>
		<div class="box-grid m-top40 m-bot10">
		<button type="button" class="btn btn-emerald m-top20 m-bot10 wid-100" ng-click="reload_main('notvalid')">취소</button>
		</div>
		</div>
		</div>
		</div>
		</div>
		<div class="modal fade" id="modifyPw" tabindex="-1" role="dialog" aria-labelledby="authOverModal" aria-hidden="true">
		<div class="modal-dialog modal-sm">
		<div class='loading-wrap-lg'>
		<div class='loader'>
		</div>
		</div>
		<div class="modal-content">
		<div class="modal-header modal-header-center">
		<h4 class="modal-title">확인창</h4>
		</div>
		<div class="modal-body">
		<div class="title-block text-center">비밀번호가 변경되었습니다.</div>
		<div class="box-grid m-top40 m-bot10">
		<button type="button" class="btn btn-emerald m-top20 m-bot10 wid-100" ng-click="reload_main('modifyPw')">확인</button>
		</div>
		</div>
		</div>
		</div>
		</div>
		<div class="modal fade" id="pwResetModal" tabindex="-1" role="dialog" aria-labelledby="pwResetModal"	aria-hidden="true">
		<div class="modal-dialog modal-sm">
		<div class="modal-content">
		<div class='loading-wrap-lg'>
		<div class='loader'>
		</div>
		</div>
		<div class="modal-header modal-header-center">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/i_close_gr_sm.png"/>
		</button>
		<h4 class="modal-title">비밀번호 재설정</h4>
		</div>
		<div class="modal-body">
		<label class="color-89 m-bot0">Email</label>
		<h4 class="m-bot20 m-top5" >{{reset_data.email}}</h4>
		<input class="form-control m-top10" type="password" placeholder="새비밀번호" ng-model="reset_data.pw" ng-change="form_check('pw', reset_data, 'setNewPw')" >
		<div class="guide_red" ng-bind="reset_data.guide.pw">
		<!-- 영문, 숫자 혼용 8자 이상 입력해주세요. -->
		</div>
		<input class="form-control m-top10" type="password" placeholder="새비밀번호 확인" 
					ng-model="reset_data.repw" ng-change="form_check('repw', reset_data, 'setNewPw')" ng-keydown = "keydown_check($event,'setNewPw')">
		<div class="guide_red" ng-bind="reset_data.guide.repw">
		<!-- 비밀번호가 일치하지 않습니다. -->
		</div>
		<button type="button" class="btn btn-emerald m-top20 m-bot10 wid-100" data-dismiss="modal" ng-disabled = "!setNewPw_btn" ng-click="setNewPw()">비밀번호 재설정</button>
		</div>
		</div>
		</div>
		</div>
		</div>
		<input type="hidden" id="sessionCheck" value="false"> 
		<div id="outline_div"> 
		<div id="back_div"> 
		<div id="background-div"> 
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/bg/main10.jpg" id="background-img-1"> 
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/bg/main10.jpg" id="background-img-2"> 
		</div>
		<div id="op_div">
		</div>
		<!-- 2017.07.10 Xeroad : 화면 변경 -->
		<div id="div_new" style="position:absolute; top:100px; left:50%; width:552px; margin-left:-276px; z-index:1;">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/logo1.png" id="logo1_img" alt="logo1" style="margin-bottom:30px;" width="25%" />
		<link rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/autocomplete.css?2017082501" type="text/css" />
		<script src='https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/autocomplete.js'></script>
		<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/search_main.css?2017082501" />
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/search.js?2017082501"></script>
		<div id="search_area">
		<form id="search_form" action="isearch.php"> <div class="hide" id="hidden_wrapper"> 
		<input type="hidden" id="title_onoff" name="rn" value="0"> 
		<input type="hidden" id="page" name="page"> 
		<input type="hidden" id="chunk" name="chunk"> 
		<input type="hidden" id="lat" name="lat"> 
		<input type="hidden" id="lng" name="lng"> 
		</div> 
		<div class="container-fluid" id="search_wrapper"> 
		<div class="container-fluid" id="search_input_wrapper">
		<input type="text" id="s_input" name="query" autocomplete="off" value="" placeholder="예: 건대입구" style="width:500px; height:50px;" />
		<!-- 2017.07.10 Xeroad : 기존 s_button css을 그대로 두기 위한 처리 -->
		<button type="submit" onClick="$('#s_button').click();" style="width:50px; height:50px; border:#ffffff solid 1px; background-color:#09d2e5; float:left;">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" />
		</button>
		<button type="submit" id="s_button" style="display:none;">
		</button> 
		<div id="ms_ext_area" class="clear board" style="width:549px; margin-top:19px;"> 
		<div id="list_area" class="list_area" style="width:549px;">
		</div> 
		</div> 
		</div> 
		</div>
		</form>
		</div>
		<div id="main_notice_div" ng-controller="noticeCtrl" style="margin:12px; font-size:15px;">
		<notice-dir ng-if="notice" ng-model="notice"></notice-dir>
		</div>
		<div id="pop_sub_area">
		﻿<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/pop_sub.css?2017082501" />
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/pop_sub.js?2017082501"></script>
		<script src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angular-app/realtime-keyword/realtime-keyword.modal.js?2017082501"></script>
		<div id="pop_sub_div"> 
		<div class="realtime_keyword"> 
		<div class="realtime_header" dc-realtime-keyword-modal keyword-list = "[{"ranking":1,"keyword":"\ub86f\ub370\uc6d4\ub4dc \uc810\uc2ec"},
			{"ranking":2,"keyword":"\uc810\uc2ec"},
			{"ranking":3,"keyword":"\uac15\ub989 \ud55c\uc815\uc2dd"},
			{"ranking":4,"keyword":"\ud2f0"},
			{"ranking":5,"keyword":"\uac15\ub0a8 \ud30c\uc2a4\ud0c0"},
			{"ranking":6,"keyword":"\uc815\uc790\uc5ed"},
			{"ranking":7,"keyword":"\uac15\ub0a8\uc5ed \ub9db\uc9d1"},
			{"ranking":8,"keyword":"\ub300\ud559\ub85c \ubcf4\uc308"},
			{"ranking":9,"keyword":"\ub300\uad6c"},
			{"ranking":10,"keyword":"\ub86f\ub370\uc6d4\ub4dc \ud55c\uc2dd"},
			{"ranking":11,"keyword":"\uc0ac\ub2f9\uc5ed \uace0\uae30\uc9d1"},
			{"ranking":12,"keyword":"\uc11c\uc6b8\uc5ed"},
			{"ranking":13,"keyword":"\uc774\ud0dc\uc6d0 \uce74\ud398"},
			{"ranking":14,"keyword":"\ucd08\ubc25"},
			{"ranking":15,"keyword":"\uc7a0\uc2e4\uc5ed \uc810\uc2ec"},
			{"ranking":16,"keyword":"\ud574\uc7a5\uad6d"},
			{"ranking":17,"keyword":"\uac15\ub0a8"},
			{"ranking":18,"keyword":"\uac15\ub0a8\uc5ed \ubdd4\ud398"},
			{"ranking":19,"keyword":"\uac15\ub0a8\uc5ed \uc18c\uac1c\ud305\uc7a5\uc18c"},
			{"ranking":20,"keyword":"\uac74\ub300\uc785\uad6c"},
			{"ranking":21,"keyword":"\ubd80\uc0b0\ub300"},
			{"ranking":22,"keyword":"\uc5ec\uc218 \uac08\uce58\uc870\ub9bc"},
			{"ranking":23,"keyword":"\uc0bc\uccad\ub3d9"},
			{"ranking":24,"keyword":"\uc774\ud0dc\uc6d0 \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":25,"keyword":"\uc11c\uc6b8\ub300\uc785\uad6c"},
			{"ranking":26,"keyword":"\uc885\ub85c \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":27,"keyword":"\uc6a9\uc0b0\uc544\uc774\ud30c\ud06c\ubab0"},
			{"ranking":28,"keyword":"\ud61c\ud654 \uce74\ud398"},
			{"ranking":29,"keyword":"\uc0e4\ub85c\uc218\uae38 \uce74\ud398"},
			{"ranking":30,"keyword":"\uc5ed\uc0bc"}]" title="모두보기"> 
		<a>실시간 인기 검색어<i class="fa fa-chevron-right"></i></a> 
		</div> 
		<div class="realtime_content"> 
		<span id="klist_up" onclick="k_list_up();">
		<i class="fa fa-chevron-up"></i>
		</span> 
		<div id="keyword_table"></div> 
		<span id="klist_down" onclick="k_list_down();">
		<i class="fa fa-chevron-down"></i>
		</span> 
		</div> 
		</div> 
		<div class="realtime_report"> 
		<a href="pop_list.php"> 
		<div class="realtime_header">오늘의 인기 맛집<i class="fa fa-chevron-right"></i>
		</div> 
		</a> 
		<div class="realtime_content"> 
		<span id="rlist_up" onclick="r_list_up();">
		<i class="fa fa-chevron-up"></i>
		</span> 
		<div id="report_table"></div> 
		<span id="rlist_down" onclick="r_list_down();">
		<i class="fa fa-chevron-down"></i>
		</span> 
		</div> 
		</div>
		</div>
		<script>var keyword_list = [{"ranking":1,"keyword":"\ub86f\ub370\uc6d4\ub4dc \uc810\uc2ec"},
			{"ranking":2,"keyword":"\uc810\uc2ec"},
			{"ranking":3,"keyword":"\uac15\ub989 \ud55c\uc815\uc2dd"},
			{"ranking":4,"keyword":"\ud2f0"},{"ranking":5,"keyword":"\uac15\ub0a8 \ud30c\uc2a4\ud0c0"},
			{"ranking":6,"keyword":"\uc815\uc790\uc5ed"},
			{"ranking":7,"keyword":"\uac15\ub0a8\uc5ed \ub9db\uc9d1"},
			{"ranking":8,"keyword":"\ub300\ud559\ub85c \ubcf4\uc308"},
			{"ranking":9,"keyword":"\ub300\uad6c"},
			{"ranking":10,"keyword":"\ub86f\ub370\uc6d4\ub4dc \ud55c\uc2dd"},
			{"ranking":11,"keyword":"\uc0ac\ub2f9\uc5ed \uace0\uae30\uc9d1"},
			{"ranking":12,"keyword":"\uc11c\uc6b8\uc5ed"},
			{"ranking":13,"keyword":"\uc774\ud0dc\uc6d0 \uce74\ud398"},
			{"ranking":14,"keyword":"\ucd08\ubc25"},
			{"ranking":15,"keyword":"\uc7a0\uc2e4\uc5ed \uc810\uc2ec"},
			{"ranking":16,"keyword":"\ud574\uc7a5\uad6d"},
			{"ranking":17,"keyword":"\uac15\ub0a8"},
			{"ranking":18,"keyword":"\uac15\ub0a8\uc5ed \ubdd4\ud398"},
			{"ranking":19,"keyword":"\uac15\ub0a8\uc5ed \uc18c\uac1c\ud305\uc7a5\uc18c"},
			{"ranking":20,"keyword":"\uac74\ub300\uc785\uad6c"},
			{"ranking":21,"keyword":"\ubd80\uc0b0\ub300"},
			{"ranking":22,"keyword":"\uc5ec\uc218 \uac08\uce58\uc870\ub9bc"},
			{"ranking":23,"keyword":"\uc0bc\uccad\ub3d9"},
			{"ranking":24,"keyword":"\uc774\ud0dc\uc6d0 \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":25,"keyword":"\uc11c\uc6b8\ub300\uc785\uad6c"},
			{"ranking":26,"keyword":"\uc885\ub85c \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":27,"keyword":"\uc6a9\uc0b0\uc544\uc774\ud30c\ud06c\ubab0"},
			{"ranking":28,"keyword":"\ud61c\ud654 \uce74\ud398"},
			{"ranking":29,"keyword":"\uc0e4\ub85c\uc218\uae38 \uce74\ud398"},
			{"ranking":30,"keyword":"\uc5ed\uc0bc"}];	
		var report_list = [{"rid":"jUfk7PcmWnoq","ranking":"1","rn":"\ud14c\uc774\uc2a4\ud305\ub8f8 ","area":"\uc7a0\uc2e4"},
			{"rid":"i44BaFBDQ8CS","ranking":"2","rn":"\ub85c\uc6b4 ","area":"\uc7a0\uc2e4"},
			{"rid":"aJTk70A8NZD8","ranking":"3","rn":"\ud53c\uc5d0\ud504\ucc3d ","area":"\ub86f\ub370\uc6d4\ub4dc\ubab0"},
			{"rid":"16B50Ua5wfwe","ranking":"4","rn":"\ud574\ub0a8\uc0dd\uc120\uad6c\uc774\uc870\ub9bc ","area":"\uc815\uc790\ub3d9"},
			{"rid":"h3Xp7akHYc0g","ranking":"5","rn":"\uc911\ud3c9\ub5a1\ubcf6\uc774 \ubcf8\uc810","area":"\uc778\uacc4\ub3d9"},
			{"rid":"pXGUJzuH1pQV","ranking":"6","rn":"\uc138\uc601\ub300\uad6c\ud0d5 ","area":"\uc11c\uba74"},
			{"rid":"5GqrgzlpovUh","ranking":"7","rn":"\uc5e0\ud22c ","area":"\uc218\uc6d0\uc5ed"},
			{"rid":"dVp4GRiqmUdt","ranking":"8","rn":"\ud638\uc2dc ","area":"\uc11c\ud604\uc5ed"},
			{"rid":"E9xdhoIQ06nP","ranking":"9","rn":"\uc624\ub385\uc2dd\ub2f9 ","area":"\ub86f\ub370\uc6d4\ub4dc\ubab0"},
			{"rid":"rdFYiqOkpwbH","ranking":"10","rn":"\uc544\ud53c\uc544 ","area":"\uc774\ud0dc\uc6d0"},
			{"rid":"5i4wazMM1I9T","ranking":"11","rn":"\uc2a4\ud14c\ud0a4 ","area":"\uacbd\ub9ac\ub2e8\uae38"},
			{"rid":"oKlOO93NZtmh","ranking":"12","rn":"\uc544\uadf8\ub77c ","area":"\uc7a0\uc2e4"},
			{"rid":"3zCW5Xuib1YW","ranking":"13","rn":"\ud55c\uc77c\uc2dd\ub2f9 ","area":"\uc885\ub85c3\uac00"},
			{"rid":"nUryiJ2LqgLO","ranking":"14","rn":"\ub300\uc7a5\uae08 ","area":"\ub86f\ub370\uc6d4\ub4dc\ubab0"},
			{"rid":"FYadEgI1zgjS","ranking":"15","rn":"\uc7a5\uc4f0\ub3d9 ","area":"\ubb38\uc815\ub3d9"},
			{"rid":"5ZQsrEnVTWVH","ranking":"16","rn":"\uc9c4\uc591\ud638 \ud69f\uc9d1 ","area":"\uad11\uc548\ub9ac"},
			{"rid":"lBqf6ens6F9c","ranking":"17","rn":"\uc624\ud5a5\uac00 ","area":"\uac00\ub77d\ub3d9"},
			{"rid":"74Eot4yl2sgq","ranking":"18","rn":"\uacbd\ubbf8\ub124\uc9d1 ","area":"\uc131\uc0b0\uc77c\ucd9c\ubd09"},
			{"rid":"9vL0qhngP1pG","ranking":"19","rn":"\ubc30\uac00\ub124 \uba78\uce58\uc308\ubc25 ","area":"\ub0a8\ud574"},
			{"rid":"6kSgKfUMc0Rt","ranking":"20","rn":"\uc0bc\uac01\uc9c0\uc655\uc871\ubc1c ","area":""},
			{"rid":"an6dq7P30O57","ranking":"21","rn":"\uce74\ud398\ub4dc\ub77c\ud398 ","area":"\uc11d\ucd0c\ud638\uc218"},
			{"rid":"aQp9WKfzM6PV","ranking":"22","rn":"\ud50c\ub77c\uc789\ubcfc\uc775\uc2a4\ud504\ub808\uc2a4 ","area":"\ub86f\ub370\uc6d4\ub4dc"},
			{"rid":"0EQZVPSM4WWx","ranking":"23","rn":"\uc5b4\ubc18\ub098\ud3f4\ub9ac ","area":"\uc218\uc131\uad6c"},
			{"rid":"2IO4EKBtwJtH","ranking":"24","rn":"\ud1a0\ub9c8\ud2f8\ub85c ","area":"\uc7a0\uc2e4"},
			{"rid":"0yL67zYLioPG","ranking":"25","rn":"\ube0c\ub808\ub4dc05 ","area":"\uc2e0\uae38\ub3d9"},
			{"rid":"9KBLfqeFfJFN","ranking":"26","rn":"\ud074\ub77c\uc6b0\ub4dc \ube44\uc5b4 \uc2a4\ud14c\uc774\uc158 ","area":"\uc7a0\uc2e4"},
			{"rid":"aoQyblbiVs9J","ranking":"27","rn":"\uace0\ub798\ubd88 ","area":"\uc5ed\uc0bc\ub3d9"},
			{"rid":"7Mk4Ye1RbYMH","ranking":"28","rn":"\uc1a1\ud0c4\ubd80\ub300\ucc0c\uac1c ","area":"\uac15\ub0a8\uc5ed"},
			{"rid":"A8ZcFzD3Yfey","ranking":"29","rn":"\uc870\uc740\ub0a0\ud55c\uc815\uc2dd ","area":"\uc0c1\ubb34\uc9c0\uad6c"},
			{"rid":"47AL8wMNvE33","ranking":"30","rn":"\uc655\ub300\ubc15\uc655\uc18c\uae08\uad6c\uc774 ","area":"\uc81c\uc8fc\uc2dc\uccad"}];	
		realtime_position();	
		make_keyword_list(keyword_list);	
		make_report_list(report_list);
		</script>
		</div>
		</div>
		<div id="menu_div">
		<div id="menu_nav"> 
		<ul id="menu_nav_list"> 
		<li><a href="intro.php">다이닝코드소개</a></li> 
		<li><a href="https://box.diningcode.com">다코박스</a></li> 
		<li><a href="notice.php">다코뉴스</a></li> 
		<li><a href="event.php">이벤트</a></li> 
		<li><a href="faq.php">FAQ</a></li> 
		<li><a href="magazine.php">매거진</a></li> 
		</ul> 
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/user_menu.js?2017082501"></script>
		<link href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/user_menu.css?2017082501" rel="stylesheet">
		<script> var w_server = "http://www.diningcode.com/"; var dicons = "https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/";</script>
		<div class="main-top-user box-row pull-right m-top7" > 
		<div class="dropdown dropdown-green po-relative" id="sessionIn">
		
		<!-- ng-show="!sessionIn" --> 
		<button id="userLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
		<span class="label-name top-user-name color-ff" id="user_name"></span> 
		<span class="label-name top-user-name color-ff" id="user_intro"></span> 
		<div class="top-user-prof"> 
				<div class='pic-loading-wrap'>
				<div class='pic-loader'>
			</div>
		</div> 
		<img id="user_img" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/login/ic_login_setting_user.png"/> </div> 
		</button> 
		<ul class="dropdown-menu" role="menu" aria-labelledby="userLabel" id="my_menu_list"> 
		<li> <a href="#" onClick="document.location.href='http://www.diningcode.com/bucketlist.php'">나의 맛집</a> </li> 
		<li> <a href="#" onClick="location.href='/user/?mode=info';">프로필 수정</a> </li> 
		<li> <a href="#" onClick="location.href='/user/?mode=logout';" >로그아웃</a> </li> 
		</ul> 
		</div> 
		<div class="dropdown dropdown-green po-relative" id="sessionOut"> 
		<!-- ng-show="!sessionOut" -->
		<div onClick="location.href='/user/?mode=login';" style="cursor:pointer;">
		<button type="button"><span class="label-name top-user-name color-ff">로그인</span>
		</button>
		<div class="top-user-prof">
		<img id="user_img"/>
		</div>
		</div> 
		</div>
		</div>
		<!--// 오른쪽 메뉴 -->
		<!-- <div class="main-top-user box-row pull-right m-top7" >
		<div id="logged_out" class="dropdown dropdown-green po-relative" >
		<button id="userLabel" type="button" data-toggle="modal" data-target="#loginModal">
		<span class="label-name top-user-name color-ff" id="user_name">회원가입</span></button>
		<button id="userLabel" type="button" data-toggle="modal" data-target="#loginModal">
		<img class="top-user-img" src="../img/i_user.png"/></button></div></div> -->
		<!--// 오른쪽 메뉴-->
		</div>
		</div> 
		<div id="mint_div" style="background-color:rgba(9, 210, 229, 0.9); height:50px; z-index:2; cursor:pointer;" onClick="location.href='https://box.diningcode.com';">
		<div style="margin:0 auto; padding:5px 0; width:760px;">
		<div style="padding-top:12px; color:#ffffff; font-weight:bold; font-size:16px; float:left;">빅데이터가 반한 맛집을 다코박스로 주문하세요!</div>
		<!--<div class="dc-app-store-link" style="border:#cdcece solid 1px; background-color:#ffffff; font-size:15px; float:right; z-index:2; cursor:pointer;" onClick="location.href='https://box.diningcode.com';">다코박스로 가기</div>-->
		<div style="padding-top:12px; padding-right:10px; color:#FFFFFF; font-weight:bold; font-size:16px; float:right; cursor:pointer;">다코박스로 가기 &gt;</div>
		<div style="clear:both;"></div></div> <div id="report_new_rest_button" style="display:none;">맛집 등록 신청하기</div> 
		</div> 
		</div> 
		<div id="ext_div" style="background-color:#ffffff;"> 
		<div id="dc-ext-left"></div> 
		<div id="dc-ext-center"> 
		<div id="dc-stat" style="color:#4a4a4a;"> 더 이상 낚이지 마세요. 빅데이터가 진짜 맛집을<br> 추천해 드립니다! 다이닝코드는 방대한 양의 맛집 정보를 보기 쉽게 정리하였습니다. </div> 
		<div id="dc-app-store"> 
		<a class="dc-app-store-link" style="border:#cdcece solid 1px;" href="https://itunes.apple.com/us/app/dainingkodeu-bigdeiteo-masjibgeomsaeg/id1042893804?l=ko&ls=1&mt=8" target="_blank"> 
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/main_install_iOS.png"/> 
		<span>iOS</span> 
		</a> 
		<a class="dc-app-store-link" style="border:#cdcece solid 1px;" href="https://play.google.com/store/apps/details?id=com.diningcode" target="_blank"> 
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/main_install_android.png"/> 
		<span>Android</span> 
		</a> 
		</div> 
		</div> 
		<div id="dc-ext-right"> 
		<div id="dc-social"> 
		<a class="dc-social-link" href="http://www.facebook.com/diningcode" target="_blank">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/main_sns_facebook.png"/></a> 
		<a class="dc-social-link" href="http://www.twitter.com/diningcode" target="_blank">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/main_sns_twitter.png"/></a> 
		<a class="dc-social-link" href="https://instagram.com/diningcode/" target="_blank">
		<img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/main/main_sns_insta.png"/></a> 
		</div> 
		</div> 
		</div> 
		<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/footer.css?2017082501" />
		<div id="footer_div" style="background-color:#f6f6f6;"> 
		<div id="footer_text"> © 2017 Diningcode · 
		<a href="intro.php">다이닝코드 소개</a> · 
		<a href="policy.service.php">이용약관</a> · 
		<a href="policy.privacy.php">개인정보취급방침</a> · 
		<a href="mailto:contact@diningcode.com">문의</a> 
		</div>
		</div> 
		</div> 
		</body>
		</html>