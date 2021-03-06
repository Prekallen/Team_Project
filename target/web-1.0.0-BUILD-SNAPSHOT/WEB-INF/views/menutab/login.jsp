<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>로그인</title>
</head>

<link rel="stylesheet" href="${rootPath}/resources/ui/signin.css" />
<body>
<c:import url="${sidemenuUrl}"/>
<div class="i-container" style="height:200px; align:middle">
		<form class="form-signin">
			<h2 class="form-signin-heading">로그인이 필요합니다</h2>
			<label for="inputEmail" class="sr-only">ID</label> <input type="text"
				id="userId" name="id" class="form-control" placeholder="ID" required value="${userId}"
				autofocus> <label for="inputPassword" class="sr-only">Password</label>
			<input type="password" name="pwd" id="userPwd" class="form-control"
				placeholder="Password" required> 
			<div class="checkbox">
				<label> <input type="checkbox" value="1" id="saveId">
					Remember me
				</label>
			</div>
			<button id="btn2" class="btn btn-lg btn-primary btn-block"
				type="button" style="background-color: #ff8080;">Login</button>
					<button id="btn3" class="btn btn-lg btn-primary btn-block"
					type="button" style="background-color: #ff8080;" >회원가입</button>
		</form>

	</div>
<script>
	$("#btn2").click(function(){
		var paramIds = "userId,userPwd";
		var au = new AjaxUtil("/menutab/login",paramIds); 
		au.send();
	});
	
	$("#btn3").click(function(){
		pageMove("menutab/kjoin")
	});
</script>
</body>
</html>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body{
	font-family: 'Hanna', serif;
	background : url('../resources/images/background2.jpg') no-repeat;
	background-size : 100%;
	}
	
	

</style>