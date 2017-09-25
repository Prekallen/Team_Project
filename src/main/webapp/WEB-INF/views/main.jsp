<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="pVar" value="1.3.6"/>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<c:set var="nowUrl" value="${pageContext.request.requestURI}"/>
<script src="<c:url value="/resources/js/jquery-3.2.1.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.fileupload.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.iframe-transport.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap.min.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-theme.min.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap.min.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-table.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/common.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/signin.css?version=${pVar}" />"/>
<title>Insert title here</title>
</head>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	html, body{
	font-family: 'Jeju Gothic', serif;
	width: 100%;
    height: 100%;
    position : relative;
	z-index : 1;
	}
	body:after{
	content:"";
	position: absolute;
	top:0;
	background-image:url('resources/images/food2.jpeg');
	background-size: cover;
	width: 100%;
    height: 100%;
	opacity: 0.4!important;
    filter: alpha(opacity=40);
    z-index: -1;
	}
	
	
	#navbar ul li a{
		font-size:15px;
		cursor:pointer;
	}
	#navbar ul li a:hover{
		transition:0.3s;
		color:#ff8080;		
	}
	#navbar ul li:last-child{
		position:absolute;
		right:0;
	}
	#searchBar{
	text-align : center;
	}
	searchBar.img{
	border : 200px;
	width : 200px;
	height : 200px;
	}
	#searchColumn{
	text-align : center;
	width : 500px;
	height : 50px;
	}
	#searchBtn{
	width:50px; 
	height:50px; 
	background-color:#ff8080;
	cursor : pointer;
	}
	searchBtn.img{
	width : 50px;
	height : 50px;
	}
}
	
	
</style>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
       
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
          	<li><a>소개</a></li>
            <li><a>공지사항</a></li>
            <li><a>지역별</a></li>
            <li><a>종류별</a></li>
            <li><a>로그인</a></li>
          </ul>
          
        </div><!--/.nav-collapse -->
      </div>
	</nav> 
	<div style="padding-top:100px"></div>
	<div class="container">
		<div class="searchBar" id="searchBar">
			<img src="${rootPath}/resources/image/mainlogo.png" >
			<p><br><br></p>
			<input type="text" id="searchColumn" />
			<a><img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" id="searchBtn"></a>
		</div>

	</div>
		<div id="footer_div" style="background-color:#f6f6f6;"> 
			<div id="footer_text"> © 2017 Feedback · 
			<a>Feedback 소개</a> · 
			<a>이용약관</a> · 
			<>개인정보취급방침</a> · 
			<a>문의</a> 
			</div>
		</div>
<style>
#footer_div {
    position:absolute;
    bottom:0px;
    width:100%;
    height:30px;
    background-color: #e1e0db;
}

div#footer_text {
	color: #808184;
    text-align: center;
    font-size: 14px;
    line-height: 30px;
}

div#footer_text a {
    
    color: inherit;
    text-decoration: none;
}

div#footer_text a:link, div#footer_text a:visited, div#footer_text a:hover, div#footer_text a:active {
    color: inherit;
    text-decoration: none;
}}
</style>

</body>
</html>
