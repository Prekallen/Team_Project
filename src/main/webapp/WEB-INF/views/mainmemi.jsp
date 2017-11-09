<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<!-- 세계 언어 선택 메타 태그 -->
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

<script src="https://maps.googleapis.com/maps/api/js"></script>
<script src="resources/js/map.js"></script>
<script src="resources/js/map2.js"></script>
<script src="resources/js/map3.js"></script>
<style>
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
$(document).ready(function(){
		
	if(userId!=""&&userId!=null){
		$("#logOut").html("로그아웃");
		$("#logOut").click(function(){
			alert("로그아웃됩니다.");
			location.href="${rootPath}/user/logout";
		});
	}else{
		$("#logOut").html("로그인");
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
			<dl id="util_menu" style="padding-left: 15px;">
				<dt class="hide">유틸메뉴</dt>
				<dd class="clickme fl DB_etc10_1" style="width: 120px;">
					<img src="../resources/img/login_click.png" />
				</dd>
				<dd class="util_first">
				
					<button
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto; background-color: #ffffff; color: #ff3baf; font-family: 'NanumSquareRound'; font-weight: bold; text-decoration: underline;" id="logOut"></button>
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
																			font-family: 'NanumSquareRound'; font-weight: bold; text-decoration: underline;">회원가입</button>

					<div id="id02" class="modal">

						<form class="modal-content animate" action="/action_page2.php">
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
					value="" style="width: 250px; height: 30px; padding-left: 0px; font-size: 1em; font-family: 'NanumSquareRound'; font-weight: bold;"
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
					<li><a href="${rootPath}/menutab/kgroup">종류별</a>
						<ul class="sub2">
							<li><a href="#">한식</a></li><li><a href="#">양식</a></li>
							<li><a href="#">중식</a></li><li><a href="#">일식</a></li>
							<li><a href="#">분식</a></li><li><a href="#">기타</a></li>
						</ul></li>
					<li><a href="${rootPath}/menutab/klocal" class="active">지역별</a>
						<ul class="sub3">
							<li><a href="#">도봉구</a></li>	<li><a href="#">강북구</a></li>
							<li><a href="#">노원구</a></li>	<li><a href="#">은평구</a></li>
							<li><a href="#">성북구</a></li>	<li><a href="#">중랑구</a></li>
							<li><a href="#">서대문구</a></li><li><a href="#">종로구</a></li>
							<li><a href="#">동대문구</a></li><li><a href="#">강서구</a></li>
							<li><a href="#">마포구</a></li>	<li><a href="#">중구</a></li>
							<li><a href="#">성동구</a></li>	<li><a href="#">용산구</a></li>
							<li><a href="#">광진구</a></li>	<li><a href="#">강동구</a></li>
							<li><a href="#">양천구</a></li>	<li><a href="#">영등포구</a></li>
							<li><a href="#">동작구</a></li>	<li><a href="#">서초구</a></li>
							<li><a href="#">강남구</a></li>	<li><a href="#">송파구</a></li>
							<li><a href="#">구로구</a></li>	<li><a href="#">금천구</a></li>
							<li><a href="#">관악구</a></li>
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

</script>
		<div id="fix_bn" style="height:500px;">
		<marquee behavior="scroll" direction="up" scrollamount="10" scrolldelay="1">
				<ul id="scrollDiv" style="padding-top:100px; padding-bottom:200px;padding-left:300px;padding-right:300px;height:500px; overflow:hidden">										
					<c:forEach items="${keyWordList}" var="kw"> 
			              <li style="font-family:NanumSquareRound; padding-bottom:5px;">
			              <marquee behavior="scroll" direction="up" scrollamount="1" scrolldelay="10">	
			              	<a href="${rootPath}/search/searchPage?query=${kw.keyword}">
				              	&nbsp;<c:out value="${kw.ranking}"/>.&nbsp;<c:out value="${kw.keyword}"/>
				             </a>
				             </marquee>
				           </li>
		       
				    </c:forEach>				    		    
				</ul>
					</marquee>	
	




		<hr/>
		<div id="divide_line">
			<div class="dv_img"></div>
			<div class="bk_line"></div>
			<div class="dv_text">
				<p>
					서울지역 맛집 검색은?<br>맛zip !! from Feedback
				</p>
				<!-- <div class="uline_w"></div> -->
				<span> 맛zip은 서울 지역 맛집을 검색 할 수 있는 웹입니다.<br /> 당신의 원하는 음식을
					지역별, 종류별로 검색해 보세요.
				</span>
			</div>
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
				<div class="ellipsis">(주)Feedback 바지사장 : 김홍근&nbsp;&nbsp; /
					&nbsp;&nbsp;Add 서울&nbsp; / &nbsp;Tel : 02-119</div>
				<!-- <br /> -->
				<div class="ellipsis">E-mail : 동의? ㅇ보감~&nbsp; / &nbsp;사업자등록번호
					: 112&nbsp;</div>
				<!-- <br /> -->
				<div class="ellipsis">바지사장 외 무급으로 일한 팀원들: 신영하, 송우재 [탈주자 : 김상철]</div>
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
		/*
		 if(${userId}==""||${userId}==null){
		 $("#status").val("LOGIN");
		 }else{
		 $("#status").val(${userId});
		 }
		 */
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
</style>