<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>지역별 맛집</title>
</head>
<body>
<div class="kwrap">
<%-- 	<c:import url="${ktopmenuUrl}" /> --%>
	<c:import url="${sidemenuUrl}"/>
	<div class="loContainer">
		<div class="loTop">
		<div style='text-align:center;'><img src='${rootPath}/resources/image/seoulmap.png' usemap='#map' alt='서울시 자치구 지도' /></div>
			<map name="map" id="map">
                  <area shape="rect" coords="283,62,317,77"    target="_blank" title="새창으로 열립니다." alt="도봉구" />
                  <area shape="rect" coords="260,92,294,108" target="_blank" title="새창으로 열립니다." alt="강북구" />
                  <area shape="rect" coords="325,80,362,95"  target="_blank" title="새창으로 열립니다." alt="노원구" />
                  <area shape="rect" coords="170,110,206,127" target="_blank" title="새창으로 열립니다." alt="은평구" />
                  <area shape="rect" coords="260,138,298,154"  target="_blank" title="새창으로 열립니다." alt="성북구" />
                  <area shape="rect" coords="344,145,382,162"  target="_blank" title="새창으로 열립니다." alt="중랑구" />
                  <area shape="rect" coords="171,170,220,187"  target="_blank" title="새창으로 열립니다." alt="서대문구" />
                  <area shape="rect" coords="226,162,262,178"  target="_blank" title="새창으로 열립니다." alt="종로구" />
                  <area shape="rect" coords="298,163,342,179"  title="새창으로 열립니다." alt="동대문구" />
                  <area shape="rect" coords="58,185,92,204"    target="_blank" title="새창으로 열립니다." alt="강서구" />
                  <area shape="rect" coords="150,190,190,207"  target="_blank" title="새창으로 열립니다." alt="마포구" />
                  <area shape="rect" coords="245,191,272,207"  target="_blank" title="새창으로 열립니다." alt="중구" />
                  <area shape="rect" coords="289,199,324,215"  target="_blank" title="새창으로 열립니다." alt="성동구" />
                  <area shape="rect" coords="226,226,261,242"  target="_blank" title="새창으로 열립니다." alt="용산구" />
                  <area shape="rect" coords="334,211,372,227"  title="새창으로 열립니다." alt="광진구" />
                  <area shape="rect" coords="393,201,430,217"  target="_blank" title="새창으로 열립니다." alt="강동구" />
                  <area shape="rect" coords="93,239,133,258"     target="_blank" title="새창으로 열립니다." alt="양천구" />
                  <area shape="rect" coords="146,237,189,253"  target="_blank" title="새창으로 열립니다." alt="영등포구" />
                  <area shape="rect" coords="188,260,226,277"  target="_blank" title="새창으로 열립니다." alt="동작구" />
                  <area shape="rect" coords="250,281,290,298" target="_blank" title="새창으로 열립니다." alt="서초구" />
                  <area shape="rect" coords="299,264,336,281"  target="_blank" title="새창으로 열립니다." alt="강남구" />
                  <area shape="rect" coords="356,251,393,269"  target="_blank" title="새창으로 열립니다." alt="송파구" />
                  <area shape="rect" coords="85,272,122,290"    target="_blank" title="새창으로 열립니다." alt="구로구" />
                  <area shape="rect" coords="137,298,175,315"  target="_blank" title="새창으로 열립니다." alt="금천구" />
                  <area shape="rect" coords="190,306,226,323"  target="_blank" title="새창으로 열립니다." alt="관악구" />
   </map> 
		</div>
		
			<div class="loMiddle" id="loMiddle"></div>
		 
				<div id="section" class="cf">
					<div class="culture">
						<h3>지역구 별 맛집</h3>
						<span>"지역구 이름" 검색 결과</span>
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
							<li class="list mn">
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
			<div class="loBottom" id="loBottom"></div>

	</div>
	

<c:import url="${footerUrl}"/>
</div>
	<div class="btn btn-primary" style="cursor:pointer; " onclick="window.scrollTo(0,0);">TOP</div>
</body>


</html>
<style>

	#section{padding-top: 75px;}
.culture h3{font-size: 16px; text-align: center; padding-bottom: 16px;}
.culture span{display: block; font-size: 21px; text-align: center;}
.culture ul{width: 1044px; margin: 0 auto; margin-top: 40px;}
.culture .list{float: left; margin: 0 24px 39px 0; list-style:none;}
.culture strong{display: block; margin:16px 0 10px; font-size: 15px; font-weight: normal; color: #000000;}
.culture li:hover strong{color: #1F75D6;}
.culture ul span{font-size: 13px; text-align: left; color: #666666;}
.culture li.mn{margin: 0;}
	
		



</style>