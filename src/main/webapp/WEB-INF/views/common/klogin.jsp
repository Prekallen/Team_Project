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
<!-- 페이스북 -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '1908237802828633',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v2.10'
    });
    FB.AppEvents.logPageView();
  };
   FB.getLoginStatus(function(response) {
	  if (response.status === 'connected') {
	    console.log('Logged in.');
	  }
	  else {
	    FB.login();
	  }
	}); 
</script>

<div id="id01" class="modal">
						<form class="modal-content animate" action="/action_page.php" >
								<span onclick="document.getElementById('id01').style.display='none'"	class="close" title="Close Modal" style="padding-top: 20px;">&times;</span> 
												
								<div class="container" id="login_form">
								<h7 style="font-family: 'NanumSquareRound'; font-weight: bold; padding-top:10px;">로그인 하기</h7></br></br></br>
									<label><b>아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label> </br>
									<input type="text"  style="width: 369px;" placeholder="ID" name="ID" required> 
										</br>
										<label><b>비밀번호&nbsp;</b></label>
									<input type="password" placeholder="Password" name="psw" style="width: 370px;"	required>
										</br></br>
										<input type="checkbox" checked="checked"> 아이디 기억하기
									<button type="submit" style="width: 370px ;height:40px;">로그인</button></br>																	
								</div>
								<!-- 페이스북으로 로그인 -->
								<!-- <fb:login-button   scope="public_profile,email"  onlogin="checkLoginState();"></fb:login-button> -->
								<div id="fb-root"></div>
								<script>(function(d, s, id) {
									var js, fjs = d.getElementsByTagName(s)[0];
									if (d.getElementById(id)) return;
									js = d.createElement(s); js.id = id;
									js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.10&appId=1908237802828633';
									fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));								
								</script>
								<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" 
								data-auto-logout-link="false" data-use-continue-as="false" id="fblogin"></div>
								</br>	
  
							<!-- 구글 로그인 -->
							    <div id="my-signin2" style="padding-left:130px;" ></div>
									  <script>
									    function onSuccess(googleUser) {
									      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
									    }
									    function onFailure(error) {
									      console.log(error);
									    }
									    function renderButton() {
									      gapi.signin2.render('my-signin2', {
									        'scope': 'profile email',
									        'width': 250,
									        'height': 40,
									        'longtitle': true,
									        'theme': 'light',
									        'onsuccess': onSuccess,
									        'onfailure': onFailure									        
									      });
									    }
									  </script>						
									  <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
				
						</form>											
</div><!-- modal id01 -->
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
</body>
