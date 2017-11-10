<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="Generator" content="Notepad++" />
<meta name="Author" content="(TEAM)Feedback" />
<meta name="keywords" content="Feedback" />
<meta name="Description" content="Feedback 메인 페이지에 오신 것을 환영합니다" />
<link rel="shortcut icon" href="resources/favicon/mememi_favi.png">
<!-- 파비콘 -->
<link rel="apple-touch-icon-precomposed" href="apple-icon.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="apple-icon-114x114.png">
<title>맛집 검색 웹 Feedback</title>
<link rel="stylesheet" type="text/css" href="resources/css/base.css"	media="all" />
<link rel="stylesheet" type="text/css" href="resources/css/main.css"	media="all" />
<link rel="stylesheet" type="text/css" href="resources/css/common.css"	media="all" />
<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
<!-- 제이쿼리 라이브러리 연동 -->

<script type="text/javascript"	src="resources/js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="resources/js/swipe.js"></script>
<!-- 터치 슬라이드 플러그인 연동 -->
<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
<!-- bxSlider 플러그인 연동 -->
<script type="text/javascript"	src="resources/js/jquery-ui-1.10.4.custom.min.js"></script>
<!-- UI 플러그인 연동 -->
<script type="text/javascript" src="resources/js/jquery.cookie.js"></script>
<!-- 쿠키 플러그인 연동 -->
<script type="text/javascript" src="resources/js/common.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script src="resources/js/DB_springMove_fn.js"></script>
<!-- 구글맵 연동 -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script src="resources/js/map.js"></script>
<script src="resources/js/map2.js"></script>
<script src="resources/js/map3.js"></script>
<style>
body{
font-family: 'NanumSquareRound';
}
#map-canvas, #map-canvas2, #map-canvas3 {
	width: 353px;
	height: 222.45px;
	background-color: #ffffff;
	border: 1px solid #e0e0e0;
}
</style>
</head>
<%
	String query = (String)request.getParameter("query");
%>

<body>
<script>
var user = "${user}";
var userId = "${user.userId}";
var gUser = "${user.gUser}";
$(document).ready(function(){
	if(userId!=""&&userId!=null){

		document.getElementById("googleSignOut").style.display = 'none';
		$("#logOut").html("로그아웃");
		$("#logOut").click(function(){
			alert("로그아웃됩니다.");
			location.href="${rootPath}/user/logout";
		});
		
	}else{

		document.getElementById("googleSignOut").style.display = 'block';
		$("#logOut").html("로그인");
	}
}) ;

$(document).ready(function(){
	if(gUser!=""&&gUser!=null){

		document.getElementById("googleSignOut").style.display = 'block';

		document.getElementById("logOut").style.display = 'none';
		document.getElementById("logOut2").style.display = 'none';
		$("#googleSignOut").click(function(){
			alert("구글로그아웃 페이지로 이동합니다")
			document.location.href = "https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://localhost/web/user/googleLogout";
		});
	}else{
		document.getElementById("logOut").style.display = 'block';
		document.getElementById("logOut2").style.display = 'block';

		document.getElementById("googleSignOut").style.display = 'none';
	}
}) ;

</script>
	<div class="header_content">
		<div class="hd_logo">
			<a href="#"> <img src="resources/image/fdLogo.png" alt=""
				style="padding-top: 100px;" />
			</a>
		</div>
	</div>
	
	<div id="wrap">
		<div id="header">
			<dl id="util_menu" style="padding-left: 15px; padding-top:30px;">
				<dt class="hide">유틸메뉴</dt>
			
				<dd class="util_first">
				<button id="googleSignOut"style="width: auto; background-color: #ffffff; color: #000000; font-weight: bold; font-size:20px;">Sign out</button>
					<button
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto; background-color: #ffffff; color: #000000; font-weight: bold; font-size:15px;" id="logOut"></button>
					<div id="id01" class="modal">
						<form class="modal-content animate"
							action="${roodPath}/test/test2">
							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="close" title="Close Modal" style="padding-top: 20px;">&times;</span>
							<div id="user_util_menu" style="padding-top: 25px;">
								<div class="container" id="login_form"
									style="padding-top: 30px;">
									<label><b>아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label> <input
										type="text" id="userId" style="width: 299px;" placeholder="ID"
										name="id" required value="${userId}"> <br>
									<input type="checkbox" checked="checked"> 아이디 기억하기 <br> <label><b>비밀번호&nbsp;</b></label>
									<input type="password" placeholder="Password" name="pwd"
										id="userPwd" style="width: 300px;" required> <br>
									<br>
									<button  id="logBtn" type="button" style="width: 370px; height: 40px;"
										>로그인</button>
									<br>
								</div>
								<br>
							</div>
						</form>
					</div>
					<!-- modal id01 -->

					<script>
						// Get the modal
						var modal = document.getElementById('id01');

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function(event) {
							if (event.target == modal) {
								modal.style.display = "none";
							}
						}
					</script>


<button onclick="document.getElementById('id02').style.display='block'"	style="width: auto; background-color: #ffffff; color: #000000; 
																			font-weight: bold; font-size: 15px;" id="logOut2"">회원가입</button>

					<div id="id02" class="modal">

						<form class="modal-content animate">
							<div class="container" style="padding-left: 10px;">
								<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal" style="padding-top: 20px;">×</span>
								
								<br><label>
									<b>아이디</b>
								</label><br>
								<input type="text" id="signUserId" data-id="userId" placeholder="Enter ID" name="id" required style="width: 300px;">
								
								<button type="submit" onclick="registerCheckFunction();" style="width: 66px; height: 40px; margin-top: 8px; padding-left: 6px; padding-right: 6px;">중복체크</button>
								
								<br> <label>
									<b>비밀번호</b>
								</label><br>
								<input type="password" id="signUserPwd" data-id="userPwd" placeholder="Enter Password" name="psw" required style="width: 370px;">
								 
								<br> <label>
									<b>비밀번호 확인</b>
								</label><br> 
								<input type="password" id="signUserPwdRepeat" placeholder="Repeat Password" name="psw-repeat" required style="width: 370px;">
								 
								<br> <label>
									<b>Email</b>
								</label><br>
								<input type="text" id="signEmail" data-id="email" placeholder="Enter Email" name="email" style="width: 370px;" required> <br>
								
								<div class="clearfix">
									<button type="button" class="signupbtn" id="signBtn" style="width: 370px; height: 40px;">가입하기</button>
								</div>
							</div>
						</form>
					</div>
					<script>
						// Get the modal
						var modal2 = document.getElementById('id02');

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function(event) {
							if (event.target == modal2) {
								modal2.style.display = "none";
							}
						}
					</script>
				</dd>
			</dl>
			<!-- id="util_menu" -->
			<h2 class="hide">메인메뉴</h2>
			<div id="search" style="padding-top: 27px;">
				<form action ="${rootPath}/search/searchPage" method="get">
				<input type="text" id="search_input" name="query" autocomplete="on"
					value="" style="width: 250px; height: 30px; padding-left: 0px; font-size: 1em; font-weight: bold;"
					placeholder="ex)강남, 맛집, 이태원" value="<%=query%>"/>
				<input type="image"
					src="https://dcicons.s3.amazonaws.com/dicons/img/main/ms_button.png" id="searchBtn"
					style="width: 30px; height: 30px; background-color: #26d4d4;">
				</form>
			</div>
			<div id="gnb_wrap">
				<ul id="gnb"
					style="height: 47px; width: 450px; margin-right: 55px; margin-left: 66px;">
					<li class="fir"><a href="${rootPath}/intro">Feedback</a>
						<ul class="sub1">
							<li><a href="${rootPath}/intro">소개</a></li>
							<li><a href="${rootPath}/notice/board_list">공지사항</a></li>

						</ul></li>
					</ul>
				<!-- id="gnb" -->
			</div>
			<!-- id="gnb_wrap"> -->
		</div>
		<!-- id="header" -->
		<hr/>

<div id="divine_middle" style="height:500px;">
		<div id="visual">
			<div id="mySwipe" class="swipe">
				<ul class="touch_banner swipe-wrap">
					<li class="mi01"><a href="#"></a></li>
					<li class="mi02"><a href="#"></a></li>
					<li class="mi03"><a href="#"></a></li>
				</ul>
			</div>
				<p class="touch_left_btn">
					<a href="#"><img src="resources/img/slide-left-button.png" alt="이전 배너" /></a>
				</p>
				<p class="touch_right_btn">
					<a href="#"><img src="resources/img/slide-right-button.png"	alt="다음 배너" /></a>			
				</p>
		</div>
		<!-- id="visual" -->


		<div id="fix_bn" style="height:500px;">
		<h5 style="font-size:24px; margin-left:300px;padding-top:30px; padding-bottom:30px;color:#26d4d4;font-weight:bold;">실시간 검색 순위</h5>
		<div class="slideshow-container">
				<div class="mySlides fade"><img src="">							
						<c:forEach items="${keyWordList}" var="kw" begin="0" end="9">
				              <li style="padding-bottom:5px;">
			              		<a href="${rootPath}/search/searchPage?query=${kw.keyword}">
					              	<c:out value="${kw. ranking}"/>.&nbsp;<c:out value="${kw.keyword}"/>
					             </a> 
					           </li>	       
						</c:forEach>
					</div>
					<div class="mySlides fade"><img src="">
						<c:forEach items="${keyWordList}" var="kw" begin="10" end="19">
				              <li style="padding-bottom:5px;">
				              	<a href="${rootPath}/search/searchPage?query=${kw.keyword}">
					              	<c:out value="${kw. ranking}"/>.&nbsp;<c:out value="${kw.keyword}"/>
					             </a>
					           </li>	       
						</c:forEach>
					</div>
					<div class="mySlides fade"><img src="">
						<c:forEach items="${keyWordList}" var="kw" begin="20" end="29">
				              <li style="padding-bottom:5px;">
				              	<a href="${rootPath}/search/searchPage?query=${kw.keyword}">
					              	<c:out value="${kw. ranking}"/>.&nbsp;<c:out value="${kw.keyword}"/>
					             </a>
					           </li>	       
						</c:forEach>
					</div>
					<div style="text-align:center">
						  <span class="dot"></span><span class="dot"></span><span class="dot"></span>   

					</div>
</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 4000); // Change image every 2 seconds
}
</script>


</div>
</div>


		<hr/>
		<div id="divide_line">
			<div class="dv_img"></div>
			<div class="bk_line"></div>
			<div class="dv_text">
				<p>
					맛집 검색은?<br>맛zip !! from Feedback
				</p>

				<span> 맛zip은 음심점 어디든 검색 할 수 있는 웹입니다.<br />
				</span>
			</div>
		</div>


	<hr/>
	<div id="footer_wrap" style="margin-top:50px;">
		<div class="footer_cover"></div>
		<div id="inner_footer">
			<h3 class="footer_logo">
				<a href="#"><img src="resources/image/fdLogo.png"
					alt="footer logo" style="width: 100px; height: 100px;" /></a>
			</h3>

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
						</select> <input type="image" src="resources/img/rel_site_btn.gif" alt="관련 사이트 이동" />
					</fieldset>
				</form>
			</div>
			<!-- id="relSite_wrap" -->
			<address>
				<div class="ellipsis">(주)Feedback &nbsp;&nbsp; /
					&nbsp;&nbsp;Add 서울&nbsp; / &nbsp;Tel : 02-1234-5678</div>
				<!-- <br /> -->
				<div class="ellipsis">E-mail : Feedback@feedback.kr &nbsp; / &nbsp;사업자등록번호 &nbsp;</div>
				<!-- <br /> -->
				<div class="ellipsis">팀원 : 김상철, 김홍근, 신영하, 송우재</div>
				<!-- <br /> -->
			</address>
		</div>
		<!-- id="inner_footer" -->
		<dl id="bottom_menu">
			<dt class="hide">하단메뉴</dt>
			<dd>
				<a href="#">Feedback소개</a>
			</dd>
			<dd>
				<a href="#">개인정보취급방침</a>
			</dd>
			<dd>
				<a href="#">이용약관</a>
			</dd>
			<dd>
				<a href="#">고객센터</a>
			</dd>
		</dl>
	</div>
	<!-- id="footer_wrap" -->
	</div>
	<!-- id="wrap" -->

	<script>
		$('.DB_etc10_1').DB_springMove({
			key : 'e24102', //라이센스키
			dir : 'x', //방향축('x','y')
			mirror : 1, //반대방향이동(1,-1)
			radius : 10, //반경
			motionSpeed : 0.1
		//속도(0~1)
		});
		$(".mainjoin").click(function() {
			pageMove("menutab/kjoin")

		});
		$("#logBtn").click(function(){
			var paramIds = "userId,userPwd";
			var au = new AjaxUtil("/user/login",paramIds); 
			au.send();
		});
		$("#signBtn").click(function(){
			var signUserId = $("#signUserId").val();
			var signUserPwd = $("#signUserPwd").val();
			var signUserPwdRepeat = $("#signUserPwdRepeat").val();
			var signEmail = $("#signEmail").val();
			var param = "signUserId,signUserPwd,signEmail";
			if(signUserPwd!==signUserPwdRepeat){
				alert("비밀번호 확인이 일치하지않습니다");
				return;
			}
			var au = new AjaxUtil("/user/signup",param); 
			au.send();

		});
	</script>
</body>
</html>

<style>

#btn btn-primary {
	position: relative;
	top: 100px
}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 300px;
  position: relative;
  margin: auto;
	font-family: 'NanumSquareRound'; 
	font-weight:bold;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;

  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2.5s;
  animation-name: fade;
  animation-duration: 5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 0}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}


</style>