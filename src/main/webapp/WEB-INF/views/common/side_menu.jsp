<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="footerUrl" value="/WEB-INF/views/common/footer.jsp" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"	href="<c:url value="/resources/css/common.css?version=${pVar}"/>" />
    <meta name="google-signin-scope" content="profile email">
    <meta name = "google-signin-client_id"content = "715472077883-i4716i3kbp6mvnfbehju5gkfaubamng4.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
<style>
</style>
</head>

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
	<div id="wrap2" style="z-index:20;">

		<div id="header2">
			<div id="search" style="padding-top: 20px;">
			
				<form action ="${rootPath}/search/searchPage" >
				<ul>
			 		<li>
			 			<input type="text" name="query" style="width: 250px; height: 30px; padding-left: 0px; font-size: 1em; font-family: 'NanumSquareRound'; font-weight: bold;margin-top: 0px;"/><br/>
			 		</li>
 					<li>
 						<input type="image" src="https://dcicons.s3.amazonaws.com/dicons/img/main/ms_button.png" id="btn" name="submit" value="submit" style="width: 28px; height: 28px;"/>
					</li>
				</ul>
 				</form>
 			

			</div>

			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="${rootPath}/mainmemi">메인</a> <a
					href="${rootPath}/intro">Feedback소개</a> <a
					href="${rootPath}/notice/board_list">공지사항</a>

			</div>




			<div id="main">

				<li class="logo"><span style="font-size: 30px; cursor: pointer"
					onclick="openNav()">&#9776; </span></li>

<!-- 				<dd class="clickme fl DB_etc10_1" style="width: 128px;"> -->
<!-- 					<img src="resources/img/login_click.png" /> -->
				</dd>
				
				<dl id="util_menu">
				<button id="googleSignOut"style="width: auto; background-color: #26d4d4; color: #000000; font-family: 'NanumSquareRound'; font-weight: bold; font-size:20px;">Sign out</button>
					<button
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto; background-color: #26d4d4; color: #000000; font-family: 'NanumSquareRound'; font-weight: bold; "id="logOut" ></button>
					<c:import url="${loginUrl}" />


					<button
						onclick="document.getElementById('id02').style.display='block'"
						style="width: auto; background-color: #26d4d4; color: #000000; font-family: 'NanumSquareRound'; font-weight: bold; "id="logOut2">회원가입</button>
					<c:import url="${signupUrl}" />
				</dl>
				<!-- id="util_menu" -->
			</div>
			<!-- id="main" -->
		</div>
		<!-- id="header2" -->
	</div>
	<!-- id="wrap2" -->

	<hr />
<!-- // 		String result = (String) request.getParameter("query"); -->
<!-- // 		session.setAttribute("result",result ); -->
<!-- // 		response.sendRedirect("searchPage"); -->
	<%

	String result = request.getParameter("query");                // request에서 passwd 파라미터를 가져온다.
	if(result!=("")){                                                        // 로그인 성공시
		session.setAttribute("result", result);                 // 세션에 "id" 이름으로 id 등록
// 		response.sendRedirect("searchPage");               // 로그인 성공 메인페이지 이동
	}else{
	%>                                                        // 로그인 실패
	<script>
		history.go(-1);                                    // 이전 페이지로 이동
	</script>
	<%}%>
<script>


function openNav() {
	document.getElementById("mySidenav").style.width = "250px";
	document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
	document.getElementById("mySidenav").style.width = "0";
	document.getElementById("main").style.marginLeft = "0";
}

var modal = document.getElementById('mySidenav');

// //When the user clicks anywhere outside of the modal, close it
// window.onclick = function(event) {
// 	if (event.target == sidenav) {
// 		sidenav.style.display = "none";
// 	}
// }

</script>
</body>
</html>
