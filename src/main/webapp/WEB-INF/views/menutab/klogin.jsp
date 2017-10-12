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
		</form>

	</div>

<c:import url="${footerUrl}"/>
</div>

</body>
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