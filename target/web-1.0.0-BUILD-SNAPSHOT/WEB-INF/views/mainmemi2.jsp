<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="google-translate-customization" content="6f1073ba568f1202-9c8990a4b3025b3e-ga74e3ea243d3f01d-14"></meta> <!-- 세계 언어 선택 메타 태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="Generator" content="Notepad++"/>
<meta name="Author" content="박애정"/>
<meta name="keywords" content="Cafe MeMeMi" />
<meta name="Description" content="Cafe MeMeMi 메인 페이지에 오신 것을 환영합니다"/>
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
</head>


<body>
<div class="header_content">
	<div class="hd_logo">
		<a href="#">
			<img src="resources/image/fdLogo.png" alt="" style="padding-top:100px;"/> 
		</a>
	</div>
</div>
<div id="wrap">
	<div id="header">
		<!-- <h1><a href="#"><img src="resources/img/neon_logo.png" alt="미미미" /></a></h1> --> 
		<dl id="util_menu">
			<dt class="hide">유틸메뉴</dt>
			<dd class="clickme fl DB_etc10_1" style="width: 128px;"><img src="resources/img/login_click.png"/></dd>
			<dd class="util_first">
				<ul>
					<li class="login_wrap logtxt"><a href="#">LOGIN</a>
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
									<a href="/web/menutab/kjoin" >회원가입</a>
									<a href="#" class="sch_id_btn">아이디/비밀번호찾기</a>
								</p>
								<p class="login_close_btn">
									<a href="#"><img src="resources/img/login_close_btn3.png" alt="닫기버튼" /></a>
								</p>
							</fieldset>
						</form>
					</li>
					<li class="logtxt"><a href="/web/menutab/kjoin">|&nbsp;&nbsp;&nbsp;JOIN</a></li>
					<!-- <li><a href="#">|&nbsp;&nbsp;&nbsp;고객센터</a></li> -->
				</ul>
			</dd>
			<dd>
				<ul id="zoom">
					<li><img src="resources/img/util_zoom_1.gif" alt="" /></li>
					<li><a href="#" class="zoom_in"><img src="resources/img/util_zoom_2.gif" alt="" /></a></li>
					<li><a href="#" class="zoom_return"><img src="resources/img/util_zoom_3.gif" alt="" /></a></li>
					<li><a href="#" class="zoom_out"><img src="resources/img/util_zoom_4.gif" alt="" /></a></li>
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
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>		
			</dd>
		</dl><!-- id="util_menu" -->
		<!-- <form action="#" method="get" name="sch_f" id="sch_f">
			<fieldset>
				<legend>검색폼</legend>
				<p>
					<input type="text" name="keyword" id="keyword" title="검색어입력" />
					<input type="image" src="resources/img/search-button.png" alt="검색" class="sch_btn"/>
				</p>
			</fieldset>
		</form> -->
		<h2 class="hide">메인메뉴</h2>
		<div id="gnb_wrap">
			<ul id="gnb">
				<li class="fir"><a href="/web/menutab/intro">Feedback</a>
					<ul class="sub1">
						<li><a href="/web/menutab/intro">소개</a></li>
						<li><a href="/web/menutab/notice">공지사항</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
				</li>
				<li><a href="/web/menutab/group">종류별</a>
					<ul class="sub2">
						<li><a href="#">한식</a></li>
						<li><a href="#">양식</a></li>
						<li><a href="#">중식</a></li>
						<li><a href="#">일식</a></li>
						<li><a href="#">분식</a></li>
						<li><a href="#">기타</a></li>
					</ul>
				</li>
				<li><a href="/web/menutab/local">지역별</a>
					<ul class="sub3">
						<li><a href="#">도봉구</a></li>
						<li><a href="#">강북구</a></li>
						<li><a href="#">노원구</a></li>
						<li><a href="#">은평구</a></li>
						<li><a href="#">성북구</a></li>
						<li><a href="#">중랑구</a></li>
						<li><a href="#">서대문구</a></li>
						<li><a href="#">종로구</a></li>
						<li><a href="#">동대문구</a></li>
						<li><a href="#">강서구</a></li>
						<li><a href="#">마포구</a></li>
						<li><a href="#">중구</a></li>
						<li><a href="#">성동구</a></li>
						<li><a href="#">용산구</a></li>
						<li><a href="#">광진구</a></li>
						<li><a href="#">강동구</a></li>
						<li><a href="#">양천구</a></li>
						<li><a href="#">영등포구</a></li>
						<li><a href="#">동작구</a></li>
						<li><a href="#">서초구</a></li>
						<li><a href="#">강남구</a></li>
						<li><a href="#">송파구</a></li>
						<li><a href="#">구로구</a></li>
						<li><a href="#">금천구</a></li>
						<li><a href="#">관악구</a></li>
					</ul>
				</li>
				
			</ul><!-- id="gnb" -->
		</div> <!-- id="gnb_wrap"> -->
		
	</div><!-- id="header" -->
	<hr />
	
	
	<div id="visual">
		<div id="mySwipe" class="swipe">
			<ul class="touch_banner swipe-wrap">
				<li class="mi01"><a href="#"></a></li>
				<li class="mi02"><a href="#"></a></li>
				<li class="mi03"><a href="#"></a></li>
			</ul>
		</div>
		<ul class="touch_bullet">
			<li><img src="resources/img/visual_bullet_on.png" class="active" alt="" /></li>
			<li><img src="resources/img/visual_bullet_off.png" alt="" /></li>
			<li><img src="resources/img/visual_bullet_off.png" alt="" /></li>
<!-- 			<li><img src="resources/img/visual_bullet_off.png" alt="" /></li>
			<li><img src="resources/img/visual_bullet_off.png" alt="" /></li>
			<li><img src="resources/img/visual_bullet_off.png" alt="" /></li>
			<li><img src="resources/img/visual_bullet_off.png" alt="" /></li> -->
		</ul>
		<p class="touch_left_btn">
			<a href="#"><img src="resources/img/slide-left-button.png" alt="이전 배너" /></a>
		</p>
		<p class="touch_right_btn">
			<a href="#"><img src="resources/img/slide-right-button.png" alt="다음 배너" /></a>
		</p>
	</div><!-- id="visual" -->
	<div id="fix_bn">
			<div class="fix_img"></div>
	</div>
	<hr />
	
	
	
		<div id="divide_line">
			<div class="dv_img"></div>
			<div class="bk_line"></div>
			<div class="dv_text">
				<p>서울지역 맛집 검색은?<br/>맛zip !! from Feedback</p>
				<!-- <div class="uline_w"></div> -->
				<span>
					맛zip은 서울 지역 맛집을 검색 할 수 있는 웹입니다.<br />
					당신의 원하는 음식을 지역별, 종류별로 검색해 보세요.
				</span>
			</div>
		</div>
			
	</div><!-- id="contents" -->
<hr />

<div id="footer_wrap">
<div class="footer_cover"></div>
	<div id="inner_footer">
		<h3 class="footer_logo">
			<a href="#"><img src="resources/image/fdLogo.png" alt="footer logo" style="width=100px; height:100px;"/></a>
		</h3>
		<dl id="bottom_menu">
			<dt class="hide">하단메뉴</dt>
			<dd><a href="#">Feedback소개</a></dd>
			<dd><a href="#">개인정보취급방침</a></dd>
			<dd><a href="#">이용약관</a></dd>
			<dd><a href="#">고객센터</a></dd>
		</dl>
		<div id="relSite_wrap">
			<h3>도움을 준 사이트들</h3>
			<form action="#" method="get" name='rel_f'>
				<fieldset>
					<legend>관련 사이트 이동</legend>
					<select name="rel_select">
						<option value="#">----선택----</option>
						<option value="http://www.diningcode.com/">다이닝코드</option>
						<option value="https://www.mangoplate.com/">망고플레이트</option>
						<option value="http://www.cafemememi.com/">카페 mememi</option>
					</select>
					<input type="image" src="resources/img/rel_site_btn.gif" alt="관련 사이트 이동" />
				</fieldset>
			</form>
		</div><!-- id="relSite_wrap" -->
		<address>
			<div class="ellipsis">(주)Feedback 바지사장 : 김홍근&nbsp;&nbsp; / &nbsp;&nbsp;Add 서울&nbsp; / &nbsp;Tel : 02-119</div> <!-- <br /> -->
			<div class="ellipsis">E-mail : 동의? ㅇ보감~&nbsp; / &nbsp;사업자등록번호 : 112&nbsp; </div><!-- <br /> -->
			<div class="ellipsis">바지사장 외 무급으로 일한 팀원들: 김상철, 신영하, 송우재</div> <!-- <br /> -->
		</address>
	</div><!-- id="inner_footer" -->
</div><!-- id="footer_wrap" -->
</div><!-- id="wrap" -->
	
<script> 
	$('.DB_etc10_1').DB_springMove({
		key:'e24102',                //라이센스키
		dir:'x',               //방향축('x','y')
		mirror:1,              //반대방향이동(1,-1)
		radius:10,             //반경
		motionSpeed:0.1       //속도(0~1)
	})
</script>






	
</body>
</html>









