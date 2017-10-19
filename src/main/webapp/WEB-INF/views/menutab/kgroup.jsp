<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>종류별 맛집</title>
</head>
<body>
<div class="kwrap">
	<c:import url="${ktopmenuUrl}" />
	
	<div class="gContainer">
		<div class="gTop">
			<div class="gTop_List">
				<button id="gtlBtn1" class="gtlBtn" type="button">한식</button>
				<button id="gtlBtn2" class="gtlBtn" type="button">양식</button>
				<button id="gtlBtn3" class="gtlBtn" type="button">중식</button>
				<button id="gtlBtn4" class="gtlBtn" type="button">일식</button>
				<button id="gtlBtn5" class="gtlBtn" type="button">분식</button>
 
			</div>
		</div>
		
			<div class="gMiddle" id="gMiddle"></div>
		
		
			<div class="gBottom" id="gBottom"></div>

		
	</div>

<c:import url="${footerUrl}"/>
</div>
</body>

<script>
</script>
</html>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body {	
	font-family: 'Hanna', serif;
	height : 100%;
	width : 100%;
	}
	html{
	height:100%;
	}
	
	.gtlBtn {
	font-size: 30px;
	width: 100px;
	height: 50px;
	cursor: pointer;
	background-color: #ffffff;
	}
	
	.gTop_List button {
	margin-right: 50px; 
	}
	
	.gContainer{
	height : 100%;
	width : 100%;
	display: inline;
	}
	.gTop {
	padding-top: 150px;
	padding-bottom: 150px;
	text-align : center; 
	}
	.kwrap {
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
	}
		



</style>