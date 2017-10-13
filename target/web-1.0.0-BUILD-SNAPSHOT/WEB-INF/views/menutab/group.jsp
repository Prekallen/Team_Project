<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>종류별 맛집</title>
</head>
<body>
	<c:import url="${topmenu3Url}" />
	
	<div class="gContainer">
		<div class="gTop">
			<div class="gTop_List">
				<button id="gtlBtn1" class="gtlBtn" type="button">한식</button>
				<button id="gtlBtn2" class="gtlBtn" type="button">양식</button><p></p>
				<button id="gtlBtn3" class="gtlBtn" type="button">중식</button>
				<button id="gtlBtn4" class="gtlBtn" type="button">일식</button><p></p>
				<button id="gtlBtn5" class="gtlBtn" type="button">분식</button>
				<button id="gtlBtn2" class="gtlBtn" type="button">양식</button><p></p>
				<button id="gtlBtn3" class="gtlBtn" type="button">중식</button>
				<button id="gtlBtn4" class="gtlBtn" type="button">일식</button><p></p>
				<button id="gtlBtn5" class="gtlBtn" type="button">분식</button>
				<button id="gtlBtn2" class="gtlBtn" type="button">양식</button><p></p>
				<button id="gtlBtn3" class="gtlBtn" type="button">중식</button>
				<button id="gtlBtn4" class="gtlBtn" type="button">일식</button><p></p>
				<button id="gtlBtn1" class="gtlBtn" type="button">한식</button>
				<button id="gtlBtn2" class="gtlBtn" type="button">양식</button><p></p>
				<button id="gtlBtn3" class="gtlBtn" type="button">중식</button>
				<button id="gtlBtn4" class="gtlBtn" type="button">일식</button><p></p>
				<button id="gtlBtn5" class="gtlBtn" type="button">분식</button>
				<button id="gtlBtn2" class="gtlBtn" type="button">양식</button><p></p>
				<button id="gtlBtn3" class="gtlBtn" type="button">중식</button>
				<button id="gtlBtn4" class="gtlBtn" type="button">일식</button><p></p>
				<button id="gtlBtn5" class="gtlBtn" type="button">분식</button>
				<button id="gtlBtn2" class="gtlBtn" type="button">양식</button><p></p>
				<button id="gtlBtn3" class="gtlBtn" type="button">중식</button>
				<button id="gtlBtn4" class="gtlBtn" type="button">일식</button><p></p>
			</div>
		</div>
		
		<div class="gMidBot">
			<div class="gMiddle" id="gMiddle"></div>
		
		
			<div class="gBottom"></div>
		</div>
		
	</div>


</body>

<script>
$(document).ready(function(){
	$(".gtlBtn").click(function(){
		var gMiddle = 	"<div style='text-align:center; padding-top:50px;'><img src='${rootPath}/resources/image/seoulmap.png' usemap='#map' alt='서울시 자치구 지도' />";
					gMiddle += "</div>";
					gMiddle += "<map name='map' id='map'>";
					gMiddle += "<area shape='rect' coords='283,62,317,77' 	target='_blank' alt='도봉구' />";
					gMiddle += "<area shape='rect' coords='260,92,294,108' target='_blank'  alt='강북구' />";
					gMiddle += "<area shape='rect' coords='325,80,362,95'  target='_blank'  alt='노원구' />";
					gMiddle += "<area shape='rect' coords='170,110,206,127' target='_blank' alt='은평구' />";
					gMiddle += "<area shape='rect' coords='260,138,298,154' target='_blank' alt='성북구' />";
					gMiddle += "<area shape='rect' coords='344,145,382,162'  target='_blank'   alt='중랑구' />";
					gMiddle += "<area shape='rect' coords='171,170,220,187' target='_blank'   alt='서대문구' />";
					gMiddle += "<area shape='rect' coords='226,162,262,178'  target='_blank'   alt='종로구' />";
					gMiddle += "<area shape='rect' coords='298,163,342,179'  target='_blank'   alt='동대문구' />";
					gMiddle += "<area shape='rect' coords='58,185,92,204' 	 target='_blank'   alt='강서구' />";
					gMiddle += "<area shape='rect' coords='150,190,190,207'  target='_blank'   alt='마포구' />";
					gMiddle += "<area shape='rect' coords='245,191,272,207' target='_blank'   alt='중구' />";
					gMiddle += "<area shape='rect' coords='289,199,324,215'  target='_blank'   alt='성동구' />";
					gMiddle += "<area shape='rect' coords='226,226,261,242'  target='_blank'   alt='용산구' />";
					gMiddle += "<area shape='rect' coords='334,211,372,227' target='_blank'   alt='광진구' />";
					gMiddle += "<area shape='rect' coords='393,201,430,217'target='_blank'   alt='강동구' />";
					gMiddle += "<area shape='rect' coords='93,239,133,258' target='_blank'   alt='양천구' />";
					gMiddle += "<area shape='rect' coords='146,237,189,253' target='_blank'   alt='영등포구' />";
					gMiddle += "<area shape='rect' coords='188,260,226,277'  target='_blank'   alt='동작구' />";
					gMiddle += "<area shape='rect' coords='250,281,290,298' target='_blank'   alt='서초구' />";
					gMiddle += "<area shape='rect' coords='299,264,336,281'  target='_blank'   alt='강남구' />";
					gMiddle += "<area shape='rect' coords='356,251,393,269' target='_blank'   alt='송파구' />";
					gMiddle += "<area shape='rect' coords='85,272,122,290'   target='_blank'   alt='구로구' />";
					gMiddle += "<area shape='rect' coords='137,298,175,315'  target='_blank'   alt='금천구' />";
					gMiddle += "<area shape='rect' coords='190,306,226,323' target='_blank'   alt='관악구' />";
					gMiddle += "</map>";
					gMiddle += "<style>.gMiddle{"
					gMiddle +=	"width : 100%;"
					gMiddle +=	"border-bottom : 1px solid white;"
					gMiddle +="}</style>"
	
		$("#gMiddle").html(gMiddle); 
	});
}); 
</script>
</html>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

body {
	font-family: 'Hanna', serif;
	background: url('../resources/images/background2.jpg') no-repeat;
	background-size: 100%;
	height : 100%;
	width : 100%;
	
}

.gtlBtn {
	background-color: #ff8080;
	font-size: 30px;
	width: 100px;
	height: 50px;
	cursor: pointer;
}

.gTop_List button {
	margin-right: 50px;
	color: #ffffff;
}

.gContainer{
	height : 100%;
	width : 100%;
	display: inline;
}
.gTop {
	padding-top: 50px;
	padding-left : 100px;
	width : 450px;
	height : 100%;
	float : left;
	border-right : 1px solid white;
}
.gMidTop{
	height : 100%;
	width : 100%;
	float : left;
}

#searchBtn{
	width:50px; 
	height:50px; 
	background-color:#ff8080;
	cursor : pointer;
	}



</style>