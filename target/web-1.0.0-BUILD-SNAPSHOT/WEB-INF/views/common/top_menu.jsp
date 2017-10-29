<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/kheader.jsp"%>
 <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="google-translate-customization" content="6f1073ba568f1202-9c8990a4b3025b3e-ga74e3ea243d3f01d-14"></meta> <!-- 세계 언어 선택 메타 태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="Generator" content="Notepad++"/>
<meta name="Author" content="(TEAM)Feedback"/>
<meta name="keywords" content="Feedback" />
<meta name="Description" content="Feedback 메인 페이지에 오신 것을 환영합니다"/>
<link rel="shortcut icon" href="resources/favicon/mememi_favi.png"> <!-- 파비콘 -->
<link rel="apple-touch-icon-precomposed" href="apple-icon.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-icon-114x114.png">
<title>맛집 검색 웹 Feedback</title>
<link rel="stylesheet" type="text/css" href="resources/css/base.css" media="all" />
<link rel="stylesheet" type="text/css" href="resources/css/main.css" media="all" />
<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script> <!-- 제이쿼리 라이브러리 연동 -->

<script type="text/javascript" src="resources/js/jquery.easing.1.3.min.js"></script> 
<script type="text/javascript" src="resources/js/swipe.js"></script> <!-- 터치 슬라이드 플러그인 연동 -->
<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>  <!-- bxSlider 플러그인 연동 -->
<script type="text/javascript" src="resources/js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
<script type="text/javascript" src="resources/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
<script type="text/javascript" src="resources/js/common.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script src="resources/js/DB_springMove_fn.js"></script>	

<script src="https://maps.googleapis.com/maps/api/js"></script>
<script src="resources/js/map.js"></script>
<script src="resources/js/map2.js"></script>
<script src="resources/js/map3.js"></script>
<style>
	#map-canvas, #map-canvas2, #map-canvas3{width: 353px; height: 222.45px;  background-color: #ffffff; border: 1px solid #e0e0e0;}
</style>
   <body>
</div>
   	<div id="wrap">
   		<div class="header">
			<dl id="util_menu">
						<dt class="hide">유틸메뉴</dt>
						<dd class="clickme fl DB_etc10_1" style="width: 128px;"><img src="resources/img/login_click.png"/></dd>
						<dd class="util_first">
							<ul>
								<li class="login_wrap logtxt" ><a href="#" id="status">LOGIN</a>
									<form action="#" method="post" name="log_f" id="login_f">
										<fieldset>
											<legend>로그인</legend>
											<p class="user_id">
												<label for="user_id">
													<img src="resources/img/login_title_id.gif" alt="아이디" />
												</label>
												<input type="text" name="user_id" id="user_id"/>
											</p>
											<p class="user_pw">
												<label for="user_pw">
													<img src="resources/img/login_title_pw.gif" alt="패드워드" />
												</label>
												<input type="password" name="user_pw" id="user_pw"/>
											</p>
											<p>
												<input type="checkbox" name="save_id" id="save_id"/>
												<label for="save_id">비밀번호 저장</label>
											</p>
											<p class="log_btn">
												<input type="image" src="resources/img/login_btn2.png" alt="로그인버튼" />
											</p>
											<p class="join_btn_wrap">
												<a href="${rootPath}/menutab/kjoin" >회원가입</a>
												<a href="#" class="sch_id_btn">아이디/비밀번호찾기</a>
											</p>
											<p class="login_close_btn">
												<a href="#"><img src="resources/img/login_close_btn3.png" alt="닫기버튼" /></a>
											</p>
										</fieldset>
									</form>
								</li>
								<li class="logtxt"><a href="${rootPath}/menutab/kjoin">|&nbsp;&nbsp;&nbsp;JOIN</a></li>
								<!-- <li><a href="#">|&nbsp;&nbsp;&nbsp;고객센터</a></li> -->
							</ul>
						</dd>
						<dd>
							<a href="#" class="print_btn"><img src="resources/img/util_print.gif" alt="" /></a>
						</dd>
						<dd>
			<div id="google_translate_element"></div><script type="text/javascript">
			function googleTranslateElementInit() {
			  new google.translate.TranslateElement({pageLanguage: 'ko', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
			}
			</script>
			<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>		
			</dd>
		</dl>
		</div>
	</div>
	</body>
<script>

</script>
<style>
	
	.hcontainer ul li a{
		font-size:25px;
		cursor:pointer;
		color : #FFFFFF;
		
		
	}
	.hcontainer ul li a:hover{ 
		transition:0.3s;
		color:#ff8080;		
	}
	.hcontainer ul li:last-child{
		position:absolute;
		right:0;
	}
	
	
</style>
