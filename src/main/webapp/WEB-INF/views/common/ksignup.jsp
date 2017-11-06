<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<title>회원가입</title>
</head>
<body>

<div id="id02" class="modal">
					  <form class="modal-content animate" action="/action_page2.php">
  					
					    <div class="container" id="sign_form">
					    <h7 style="font-family: 'NanumSquareRound'; font-weight: bold; padding-top:10px;">간편 회원가입</h7></br>
					      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal" style="padding-top:20px;">×</span>
					      </br>
					      <label><b>아이디</b></label></br>
					      <input type="text" placeholder="Enter ID" name="id" required style="width: 300px;">
					      <button type="submit" onclick="registerCheckFunction();" style="width: 66px;height:40px;margin-top: 0px;padding-left: 6px;padding-right: 6px;"
					      class="btn btn-facebook-white">중복체크</button>
							</br>
					      <label><b>비밀번호</b></label></br>
					      <input type="password" placeholder="Enter Password" name="psw" required style="width: 370px;">
							</br>
					      <label><b>비밀번호 확인</b></label></br>
					      <input type="password" placeholder="Repeat Password" name="psw-repeat" required style="width: 370px;">
					      	</br>
					      <label><b>Email</b></label></br>
					      <input type="text" placeholder="Enter Email" name="email" style="width: 370px ;" required>				
					 		</br>
					      <div class="clearfix">
					        <button type="submit" style="width: 370px ;height:40px;" class="btn btn-facebook-white">가입하기</button>
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
					
</body>
					