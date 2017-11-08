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
<style>
</style>
</head>

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
					href="${rootPath}/notice/board_list">공지사항</a> <a>맛집 찾기</a>

				<div class="dropdown" id="dropgroup1">
					<button class="dropbtn">
						<a href="${rootPath}/menutab/kgroup">- 종류별</a>
					</button>
					<div class="dropdown-content" id="dropgroup1"
						style="text-align: right">
						<a href="#">한식</a> <a href="#">양식</a> <a href="#">중식</a> <a
							href="#">일식</a> <a href="#">분식</a> <a href="#">기타</a>
					</div>
				</div>
				<br>
				<div class="dropdown" id="dropgroup2">
					<button class="dropbtn">
						<a href="${rootPath}/menutab/klocal">- 지역별</a>
					</button>
					<div class="dropdown-content" style="text-align: right">
						<a href="#">도봉구</a> <a href="#">강북구</a> <a href="#">노원구</a> <a
							href="#">은평구</a> <a href="#">성북구</a> <a href="#">중랑구</a> <a
							href="#">서대문구</a> <a href="#">종로구</a> <a href="#">동대문구</a> <a
							href="#">강서구</a> <a href="#">마포구</a> <a href="#">중구</a> <a
							href="#">성동구</a> <a href="#">용산구</a> <a href="#">광진구</a> <a
							href="#">강동구</a> <a href="#">양천구</a> <a href="#">영등포구</a> <a
							href="#">동작구</a> <a href="#">서초구</a> <a href="#">강남구</a> <a
							href="#">송파구</a> <a href="#">구로구</a> <a href="#">금천구</a> <a
							href="#">관악구</a>
					</div>
				</div>
			</div>




			<div id="main">

				<li class="logo"><span style="font-size: 30px; cursor: pointer"
					onclick="openNav()">&#9776; </span></li>

<!-- 				<dd class="clickme fl DB_etc10_1" style="width: 128px;"> -->
<!-- 					<img src="resources/img/login_click.png" /> -->
				</dd>
				<dl id="util_menu">
					<p>${user.userId} 님 환영합니다.</p>
					<button
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto; background-color: #26d4d4; color: #ff3baf; font-family: 'NanumSquareRound'; font-weight: bold; text-decoration: underline;"id="logOut" ></button>
					<c:import url="${loginUrl}" />


					<button
						onclick="document.getElementById('id02').style.display='block'"
						style="width: auto; background-color: #26d4d4; color: #000000; font-family: 'NanumSquareRound'; font-weight: bold; text-decoration: underline;">회원가입</button>
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
