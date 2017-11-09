<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>로그인</title>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css?version=${pVar}"/>"/>
    <meta name="google-signin-scope" content="profile email">
    <meta name = "google-signin-client_id"content = "715472077883-i4716i3kbp6mvnfbehju5gkfaubamng4.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>

</head>

<body>


<div id="id01" class="modal">
						<form class="modal-content animate" >
								<span onclick="document.getElementById('id01').style.display='none'"	class="close" title="Close Modal" style="padding-top: 20px;">&times;</span> 
												
								<div class="container" id="login_form">
								<h7 style="font-family: 'NanumSquareRound'; font-weight: bold; padding-top:10px;">로그인</h7></br></br></br>
									<label><b>아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label> </br>
									<input type="text"  style="width: 369px;" id="userId" placeholder="ID" name="id" required value="${userId}"> 
										</br>
										<label><b>비밀번호&nbsp;</b></label>
									<input type="password" placeholder="Password" name="pwd" id="userPwd" style="width: 370px;"	required>
										</br></br>
										<input type="checkbox" checked="checked" id="saveId"> 아이디기억하기
									<button id="logBtn" type="button" style="width: 370px ;height:40px;">로그인</button></br>																	
								</div>
							
  
							<!-- 구글로그인-->
							    <div id="my-signin2" style="padding-left:130px;" ></div>
									  <script>
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
									    function onSuccess(googleUser) {
									    	var userId = "${user.userId}";
									    	if(!userId){
										    	var profile = googleUser.getBasicProfile(); // 유저의 정보를 가진 변수를 선언
										    	var param = {};
									    	    param["userId"] = profile.getId();
									    	    param["loginCheck"] = true; 
									    	    GoogleLoginAjax(param,"user/googleLogin", loginCallback);
									    	}
									    }
									    
									    function onFailure(error) {
									    }
									    
									    function loginCallback(result) {
									    	var url = result.url;
									    	var msg = result.msg;
									    	if(msg){
									    		alert(msg);
									    	}
									    	if(url){
									    		pageMove(url);
									    	}
									    }
									    function GoogleLoginAjax(pParams, pUrl, pCallBackFunc, pMethod){
									    	this.pUrl = "/web/" + pUrl;
											var params = JSON.stringify(pParams);
											$.ajax({ 
										    		type     : pMethod ? pMethod:"POST"
											    ,   url      : this.pUrl
											    ,   dataType : "JSON" 
											    ,   beforeSend: function(xhr) {
											        xhr.setRequestHeader("Accept", "application/json");
											        xhr.setRequestHeader("Content-Type", "application/json");
											    }
											    ,   data     : params
											    ,   success : pCallBackFunc
											    ,   error : function(xhr, status, e) {
												    	alert("에러야 : "+e);
												},
												complete  : function() {
												}
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
						
						$("#logBtn").click(function(){
							var paramIds = "userId,userPwd";
							var au = new AjaxUtil("/user/login",paramIds); 
							au.send();
							
						});
						
						
					</script>
</body>
