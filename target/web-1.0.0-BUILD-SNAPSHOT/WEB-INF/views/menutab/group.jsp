<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>종류별 맛집</title>
</head>
<body>
<div class="wrap">
	<c:import url="${topmenu3Url}" />
	
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

				<div id="section" class="cf">
			<div class="culture">
				<h3>양식</h3>
				<span>현대카드이기에 가능한 독보적 문화행사</span>
				<ul>
					<li class="list">
						<a href="#">
							<img src="${rootPath}/resources/images/food.jpg" alt="concert" style="width:300px; height:200px;" />
							<strong>슈퍼콘서트 ></strong>
							<span>세계 레전드급 아티스트의 놀라운 무대</span>
						</a>
					</li>
					<li class="list">
						<a href="#">
							<img src="${rootPath}/resources/images/food10.png" alt="cultureproject"  style="width:300px; height:200px;"/>
							<strong>컬처프로젝트 ></strong>
							<span>이 시대의 컬처아이콘을 탐색&middot;선별&middot;소개하다</span>
						</a>
					</li>
					<li class="list mn">
						<a href="#">
							<img src="${rootPath}/resources/images/food3.jpg" alt="supermatch"  style="width:300px; height:200px;"/>
							<strong>슈퍼매치 ></strong>
							<span>세계 최고 선수들의 놀라운 플레이</span>
						</a>
					</li>
				</ul>
			</div>	
		
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
	.wrap {
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
	}
	
 

/* Culture */
#section{padding-top: 75px;}
.culture h3{font-size: 16px; text-align: center; padding-bottom: 16px;}
.culture span{display: block; font-size: 21px; text-align: center;}
.culture ul{width: 1044px; margin: 0 auto; margin-top: 40px;}
.culture .list{float: left; margin: 0 24px 39px 0;}
.culture strong{display: block; margin:16px 0 10px; font-size: 15px; font-weight: normal; color: #000000;}
.culture li:hover strong{color: #1F75D6;}
.culture ul span{font-size: 13px; text-align: left; color: #666666;}
.culture li.mn{margin: 0;}


</style>