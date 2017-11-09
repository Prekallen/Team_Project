<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>Feedback 소개</title>
</head>
<body>


	<%-- <div id="googleMap" style="width:100%;height:400px;"></div> --%>

<div class="kwrap" style="background-color: #f5f5ef;">
	<%--소개글 --%>
	<div class="dc-area" id="introArea1" style="padding-top:100px; padding-left:100px;  ">
		<div class="dc-wrapper">
			<div class="row1">
				<div class="intro-col1">
					빅데이터 맛집검색,<br>맛.zip
				</div>
				<div class="intro-col2">
					낯선 곳에서도 실패 없이 맛집을 찾아주는 맛.zip <br /> <br /> 
				</div>
			</div>
		</div>
	</div>
<c:import url="${footerUrl}"/>
</div>
</body>
</html>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

body {
	font-family: 'NanumSquareRound', serif;
	font-weight: bold;
	margin: 0;
	height: 100%;
	font-size : 15px;
}
html {
height: 100%;
}
/* footer고정을 위한 */
.kwrap {
min-height: 100%;
position: relative;
padding-bottom: 30px; /* footer height */
}
.btn btn-primary {
	float : right;
}
</style>