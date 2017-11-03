<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>식당정보</title>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css?version=${pVar}"/>"/>
    <meta name="google-signin-scope" content="profile email">
    <meta name = "google-signin-client_id"content = " AIzaSyCp6jSFORxMzEl7ItK0lcIjhwCH72HMtwU.apps.googleusercontent.com ">
    <script src="https://apis.google.com/js/platform.js" async defer></script>

</head>

<body>
<!-- 로그인 -->
<div id="id03" class="modal">
						<form class="modal-content animate" action="/action_page.php" style="    padding-top: 20px;    padding-left: 20px;">
						<h7 style="font-family: 'NanumSquareRound'; font-weight: bold; padding-top:30px;">맛집 정보</h7>		
						<span onclick="document.getElementById('id03').style.display='none'"	class="close" title="Close Modal" style="padding-top: 20px;">&times;</span> 							
								<div class="container">
								</div>
						</form>											
</div><!-- modal id03 -->
<script>
						// Get the modal
						var modal = document.getElementById('id03');

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function(event) {
							if (event.target == modal) {
								modal.style.display = "none";
							}
						}
					</script>

</body>
