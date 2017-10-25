<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>종류별 맛집</title>
</head>
<body>
<div class="kwrap">
	<c:import url="${sidemenuUrl}" />
	
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
						<h3>종류별로 찾는 맛집</h3>
						<span>"*식" (으)로 검색한 결과</span>
						<ul>
							<li class="list">
								<a href="#">
									<img src="${rootPath}/resources/images/food.jpg" alt="concert" style="width:300px; height:200px;" />
									<strong>식당이름 ></strong>
									<span> 
									주소 : <br>
									전화번호 : <br>
									업종 : <br>
									</span>
								</a>
							</li>
							<li class="list">
								<a href="#">
									<img src="${rootPath}/resources/images/food10.png" alt="cultureproject"  style="width:300px; height:200px;"/>
									<strong>식당이름 ></strong>
									<span> 
									주소 : <br>
									전화번호 : <br>
									업종 : <br>
									</span>
								</a>
							</li>
							<li class="list">
								<a href="#">  
									<img src="${rootPath}/resources/images/food3.jpg" alt="supermatch"  style="width:300px; height:200px;"/>
									<strong>식당이름 ></strong>
									<span> 
									주소 : <br>
									전화번호 : <br>
									업종 : <br>
									</span>
								</a>
							</li>
						</ul>
					</div>	
				</div>
			<div class="gBottom" id="gBottom"></div>

		
	</div>
	<div class="btn btn-primary" style="cursor:pointer; " onclick="window.scrollTo(0,0);">TOP</div>
	

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
	
 

/* Culture */
#section{padding-top: 75px;}
.culture h3{font-size: 16px; text-align: center; padding-bottom: 16px;}
.culture span{display: block; font-size: 21px; text-align: center;}
.culture ul{width: 1044px; margin: 0 auto; margin-top: 40px;}
.culture .list{float: left; margin: 0 24px 39px 0;  list-style:none;}
.culture strong{display: block; margin:16px 0 10px; font-size: 15px; font-weight: normal; color: #000000;}
.culture li:hover strong{color: #1F75D6;}
.culture ul span{font-size: 13px; text-align: left; color: #666666;}
.culture li.mn{margin: 0;}


</style>