<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<title>맛집 검색웹 Feedback</title>
</head>

<body>
<c:import url="${topmenuUrl}"/>
	
	<div style="padding-top:100px"></div>
	<div class="container">
		<div class="searchBar" id="searchBar">
			<img src="${rootPath}/resources/image/mainlogo.png" >
			<p><br><br></p>
			<input type="text" id="searchColumn" />
			<a><img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" id="searchBtn"></a>
		</div>

	</div>
		

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
</body>
</html>
