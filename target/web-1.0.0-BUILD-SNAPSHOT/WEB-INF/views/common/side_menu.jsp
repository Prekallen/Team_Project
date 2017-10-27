<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/kheader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css?version=${pVar}"/>"/>
<style>
body {
   font-family: 'Hanna', serif;
}
</style>
</head>
<body>
<div id="wrap2">
	<div id="header2">
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="${rootPath}/mainmemi">메인</a>
  <a href="${rootPath}/menutab/kintro">Feedback</a>
  <a href="${rootPath}/menutab/kintro">소개</a>
  <a href="${rootPath}/menutab/knotice">공지사항</a>
  <a>맛집 찾기</a>

  <div class="dropdown"id="dropgroup1">
    <button class="dropbtn">
    <a href="${rootPath}/menutab/kgroup">- 종류별</a>
    </button> 
    <div class="dropdown-content" id="dropgroup1"style="text-align:right">
      <a href="#">한식</a>
      <a href="#">양식</a>
      <a href="#">중식</a>
      <a href="#">일식</a>
      <a href="#">분식</a>
      <a href="#">기타</a>
    </div> 
    </div>
<br> 
	<div class="dropdown" id="dropgroup2">
     <button class="dropbtn">
     <a href="${rootPath}/menutab/klocal">- 지역별</a>
     </button>
    <div class="dropdown-content" style="text-align:right">
     					<a href="#">도봉구</a>
						<a href="#">강북구</a>
						<a href="#">노원구</a>
						<a href="#">은평구</a>
						<a href="#">성북구</a>
						<a href="#">중랑구</a>
						<a href="#">서대문구</a>
						<a href="#">종로구</a>
						<a href="#">동대문구</a>
						<a href="#">강서구</a>
						<a href="#">마포구</a>
						<a href="#">중구</a>
						<a href="#">성동구</a>
						<a href="#">용산구</a>
						<a href="#">광진구</a>
						<a href="#">강동구</a>
						<a href="#">양천구</a>
						<a href="#">영등포구</a>
						<a href="#">동작구</a>
						<a href="#">서초구</a>
						<a href="#">강남구</a>
						<a href="#">송파구</a>
						<a href="#">구로구</a>
						<a href="#">금천구</a> 	
						<a href="#">관악구</a>
    	</div> 
		</div>
   </div>

		
<div id="main">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
  <dd class="clickme fl DB_etc10_1" style="width: 128px;"><img src="../resources/img/login_click.png"/></dd>
  <dl id="util_menu">
			<dt class="hide">유틸메뉴</dt>
			<dd class="util_first">
				<ul>
			<li style="padding-left:0px; padding-top:-20px;"><input type="text" id="s_input" name="query" autocomplete="off" value=""  style=" width:250px; height:30px; "/>
            <button type="submit" id="button" style="width: 30px; height:30px; background-color: #ff8080; border:#ff8080;" >
            <img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" style="width: 30px; height:30px; background-color: #ff8080; "></button></li> 
			 
					<li class="login_wrap logtxt" ><a href="${rootPath}/menutab/klogin" id="status">로그인하러가기</a>
						
					</li>
					<li class="logtxt"><a href="${rootPath}/menutab/kjoin">|&nbsp;&nbsp;&nbsp;JOIN</a></li>
					<!-- <li><a href="#">|&nbsp;&nbsp;&nbsp;고객센터</a></li> -->
				</ul>
			</dd>
			<dd>
				<a href="#" class="print_btn"><img src="../resources/img/util_print.gif" alt="" /></a>
			</dd>
			<dd>
<div id="google_translate_element"></div>
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'ko', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>		
			</dd>
			</ul>
			</dl>
			</div>		
	</div><!-- id="header" -->
	</div>
	<hr />

<style>
	.util_first ul li{
    list-style:none;
    margin:0;
    padding:0;
}
</style>
<script>
$('#button').click(function(){
	alert("힝 속았지~~");
});

function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
</script>
     
</body>
</html> 