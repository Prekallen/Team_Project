<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/common/kheader.jsp" %>


<title>맛.zip</title>
</head>

<body>
<div class="kwrap">

	<div class="cycle-slideshow" cycle-slideshow data-cycle-loader="wait"; data-cycle-timeout="2000";>
		<img src="resources/images/food3.jpg" width="100%" height="100%"> 
		<img src="resources/images/food6.jpg" width="100%" height="100%">
		<img src="resources/images/food7.jpg" width="100%" height="100%">
		<img src="resources/images/food8.jpg" width="100%" height="100%">
		<img src="resources/images/food9.jpg" width="100%" height="100%">
		<img src="resources/images/food10.png" width="100%" height="100%">
	</div>
	
<c:import url="${topmenuUrl}"/>
	
	<div class="container" style="padding-top:100px">
		<div class="searchBar" id="searchBar">
			<img src="${rootPath}/resources/image/fdLogo.png"  style="color:#ff8080;">
			<p><br><br></p>
			<input type="text" id="searchColumn"  />
			<a><img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" id="searchBtn"></a>
		</div>

	</div>




<c:import url="${footerUrl}"/>
</div>
</body>
		

<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body{
	font-family: 'Hanna', serif;
	margin:0;
	width: 100%;
    height: 100%;
    position : relative;
	}
	html{
	height:100%;
	}
	
	body .cycle-slideshow{
	
	content:"";
	position: absolute;
	top:0;
	background-size: 100%;
	width: 100%;
    height: 100%;
	opacity: 0.6!important;
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
	.kwrap {
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
	}

</style>
</html>
