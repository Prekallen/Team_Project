<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
$(document).ready(function(){
	document.getElementById("googleSignOut").style.display = 'none';
		$("#sessionOut").click(function(){
			alert("메인으로 이동합니다");
			location.href="${rootPath}/gOut";
		});
}) ;
</script>
<body>
<div id="center" style="text-align:center; padding-top:200px;">
	<h3 style="padding:100px;">저희 페이지를 이용해 주셔서 감사합니다.</h3>
	<button style="height:100px; width:200px;font-family: 'NanumSquareRound'; font-weight: bold; font-size:20px;" id="sessionOut">로그아웃</button>
</div>
</body>
</html>