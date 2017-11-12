<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<title>회원가입</title>
</head>
<body>

<div id="id02" class="modal">
					  <form class="modal-content animate" >
  					
					    <div class="container" id="sign_form">
					    <h7 style="font-family: 'NanumSquareRound'; font-weight: bold; padding-top:10px;">간편 회원가입</h7></br>
					      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal" style="padding-top:20px;">×</span>
					      </br>
					      <label><b>아이디</b></label></br>
					      <input type="text" placeholder="Enter ID" id="signUserId" name="signUserId" required style="width: 300px;" data-id="userId">
					      <button type="submit" onclick="registerCheckFunction();" style="width: 66px;height:40px;margin-top: 0px;padding-left: 6px;padding-right: 6px;"
					      class="btn btn-facebook-white">중복체크</button>
							</br>
					      <label><b>비밀번호</b></label></br>
					      <input type="password" placeholder="Enter Password" id="signUserPwd" name="signUserPwd" required style="width: 370px;" data-id="userPwd">
							</br>
					      <label><b>비밀번호 확인</b></label></br>
					      <input type="password" placeholder="Repeat Password" id="signUserPwdRepeat" name="signUserPwdRepeat" required style="width: 370px;">
					      	</br>
					      <label><b>Email</b></label></br>
					      <input type="text" placeholder="Enter Email" id="signEmail" name="signEmail" style="width: 370px ;" required  data-id="email">				
					 		</br>
					      <div class="clearfix">
					        <button type="button" id="signBtn" style="width: 370px ;height:40px;" class="btn btn-facebook-white">가입하기</button>
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
					