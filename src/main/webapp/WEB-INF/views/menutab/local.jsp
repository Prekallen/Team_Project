<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>지역별 맛집</title>
</head>
<body>
<c:import url="${topmenu3Url}"/>


<h3 align="center">지역별 맛집</h3>


<div class="lMiddle">
   <div style="text-align:center"><img src="${rootPath}/resources/image/seoulmap.png" usemap="#map" alt="서울시 자치구 지도"/>
   </div>
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

</body>
</html>
<style>	


@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body{
	font-family: 'Hanna', serif;
	background : url('../resources/images/background2.jpg') no-repeat;
	background-size : 100%;
	}
	#searchBtn{
	width:50px; 
	height:50px; 
	background-color:#ff8080;
	cursor : pointer;
	}
	
	

</style>