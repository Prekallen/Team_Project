<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>로그인</title>
</head>

<body>
<div class="kwrap">
<c:import url="${ktopmenuUrl}"/>
	<div class="i-container" style="height:200px; align:middle; padding:100px;"> 
			<form class="form-signin">
				<h2 class="form-signin-heading">로그인 </h2>
				<label for="inputEmail" class="sr-only">ID</label> <input type="text"
					id="userId" name="id" class="form-control" placeholder="ID" required value="${userId}"
					autofocus> <label for="inputPassword" class="sr-only">Password</label>
				<input type="password" name="pwd" id="userPwd" class="form-control"
					placeholder="Password" required> 
				<div class="checkbox">
					<label> <input type="checkbox" value="1" id="saveId">
						비밀번호 저장
					</label>
				</div>
				<button id="btn2" class="btn btn-lg btn-primary btn-block"
					type="button" style="background-color: #ff8080;">Login</button>
					
					<button id="btn3" class="btn btn-lg btn-primary btn-block"
					type="button" style="background-color: #ff8080;">회원가입</button>
					<p></p>
					<div class="fb-login-button" data-width="1" data-max-rows="1" 
										data-size="large" data-button-type="continue_with" 
										data-show-faces="true" data-auto-logout-link="true" 
										data-use-continue-as="true" data-scope="public_profile"
										align="middle"></div>
			</form>
			<script>

  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);

    if (response.status === 'connected') {
      testAPI();
    } else {
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    }
  }

  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '{your-app-id}',
    cookie     : true,                         
    xfbml      : true,  
    version    : 'v2.10'
  });

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
  };
  </script>
  <div id="fb-root"></div>
  <script >
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.10&appId=1908237802828633';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
			<p></p><br/><p></p>
			<div class="divide_login" style="width:100%; background-color:#ff8080;">
				<h2 style="text-align:center;">맛zip에서는 굳이 로그인 하지않아도 서비스를 이용하실수 있어요 ! ^^ㅗ</h2>
	
			</div>
	</div>
	

<c:import url="${footerUrl}"/>
</div>

</body>
<script>

$("#btn2").click(function(){
	var paramIds = "userId,userPwd";
	var au = new AjaxUtil("menutab/klogin",paramIds); 
	au.send();
});

$("#btn3").click(function(){ 
	pageMove("menutab/kjoin")
});

</script>

</html>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body {
	font-family: 'Hanna', serif;
	margin: 0;
	height: 100%;
	}
	html {
	height: 100%;
	}
	.kwrap {
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
	}
</style>