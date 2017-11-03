<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>로그인</title>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css?version=${pVar}"/>"/>
    <meta name="google-signin-scope" content="profile email">
    <meta name = "google-signin-client_id"content = " AIzaSyCp6jSFORxMzEl7ItK0lcIjhwCH72HMtwU.apps.googleusercontent.com ">
    <script src="https://apis.google.com/js/platform.js" async defer></script>

</head>

<body>
<div id="id01" class="modal">
						<form class="modal-content animate"
							action="${roodPath }/common/kheader">
							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="close" title="Close Modal" style="padding-top: 20px;">&times;</span>
							<div id="user_util_menu" style="padding-top: 25px;">
								<div class="container" id="login_form"
									style="padding-top: 30px;">
									<label><b>아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label> <input
										type="text" id="userId" style="width: 299px;" placeholder="ID"
										name="ID" required> </br>
									<input type="checkbox" checked="checked"> 아이디 기억하기 </br> <label><b>비밀번호&nbsp;</b></label>
									<input type="password" placeholder="Password" name="psw"
										id="userPwd" style="width: 300px;" required> </br>
									</br>
									<button type="submit" style="width: 370px; height: 40px;"
										id="login">로그인</button>
									</br>
								</div>
								</br>
							</div>
						</form>
					</div>
</body>
