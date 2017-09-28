<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>종류별 맛집</title>
</head>
<body>
<c:import url="${topmenu2Url}"/>
<div class="gTop">
	<div class="gTop_List" >
		<button id ="gtlBtn" class="gtlBtn" type="button" >한식</button>
		<button id ="gtlBtn2" class="gtlBtn" type="button" >양식</button> 
		<button id ="gtlBtn3" class="gtlBtn" type="button" >중식</button>
		<button id ="gtlBtn4" class="gtlBtn" type="button" >일식</button>
		<button id ="gtlBtn5" class="gtlBtn" type="button" >분식</button>
	
	</div>
</div>
<div class="gMiddle">
	<div style="text-align:center"><img src="${rootPath}/resources/image/seoulmap.png" usemap="#map" alt="서울시 자치구 지도" />
	</div>
		<map name="map" id="map">
						<area shape="rect" coords="283,62,317,77" 	target="_blank" title="새창으로 열립니다." alt="도봉구" />
						<area shape="rect" coords="260,92,294,108" target="_blank" title="새창으로 열립니다." alt="강북구" />
						<area shape="rect" coords="325,80,362,95"  target="_blank" title="새창으로 열립니다." alt="노원구" />
						<area shape="rect" coords="170,110,206,127" target="_blank" title="새창으로 열립니다." alt="은평구" />
						<area shape="rect" coords="260,138,298,154" target="_blank" title="새창으로 열립니다." alt="성북구" />
						<area shape="rect" coords="344,145,382,162"  target="_blank" title="새창으로 열립니다." alt="중랑구" />
						<area shape="rect" coords="171,170,220,187" target="_blank" title="새창으로 열립니다." alt="서대문구" />
						<area shape="rect" coords="226,162,262,178"  target="_blank" title="새창으로 열립니다." alt="종로구" />
						<area shape="rect" coords="298,163,342,179"  target="_blank" title="새창으로 열립니다." alt="동대문구" />
						<area shape="rect" coords="58,185,92,204" 	 target="_blank" title="새창으로 열립니다." alt="강서구" />
						<area shape="rect" coords="150,190,190,207"  target="_blank" title="새창으로 열립니다." alt="마포구" />
						<area shape="rect" coords="245,191,272,207" href="http://www.junggu.seoul.kr/content.do?cmsid=377" target="_blank" title="새창으로 열립니다." alt="중구" />
						<area shape="rect" coords="289,199,324,215" href="http://www.sd.go.kr/sd/main.do?op=mainSub&mCode=13G030020000" target="_blank" title="새창으로 열립니다." alt="성동구" />
						<area shape="rect" coords="226,226,261,242" href="http://www.yongsan.go.kr/site/kr/organization/list_prev.do?sitecdv=S0000100&amp;decorator=pmsweb&amp;menucdv=04060300&amp;sitecdv=S0000100&amp;menucdv=04060300&amp;decorator=pmsweb" target="_blank" title="새창으로 열립니다." alt="용산구" />
						<area shape="rect" coords="334,211,372,227" href="http://www.gwangjin.go.kr/jsp/kr/c2/01/intro01_11.jsp" target="_blank" title="새창으로 열립니다." alt="광진구" />
						<area shape="rect" coords="393,201,430,217" href="http://www.gangdong.go.kr/site/contents/ko/html05/html00/index1.html?t=1417500840661" target="_blank" title="새창으로 열립니다." alt="강동구" />
						<area shape="rect" coords="93,239,133,258" 	href="http://www.yangcheon.go.kr/site/yangcheon/ex/dept/org_map.do" target="_blank" title="새창으로 열립니다." alt="양천구" />
						<area shape="rect" coords="146,237,189,253" href="http://www.ydp.go.kr/main/page.do?mCode=F050020030" target="_blank" title="새창으로 열립니다." alt="영등포구" />
						<area shape="rect" coords="188,260,226,277" href="http://www.dongjak.go.kr/portal/main/contents.do?menuNo=200655" target="_blank" title="새창으로 열립니다." alt="동작구" />
						<area shape="rect" coords="250,281,290,298" href="http://www.seocho.go.kr/site/seocho/05/10503010100002015062601.jsp" target="_blank" title="새창으로 열립니다." alt="서초구" />
						<area shape="rect" coords="299,264,336,281" href="http://www.gangnam.go.kr/contents/organization/1/view.do?mid=FM040601" target="_blank" title="새창으로 열립니다." alt="강남구" />
						<area shape="rect" coords="356,251,393,269" href="http://www.songpa.go.kr/user.kdf?a=songpa.menu.MenuApp&amp;c=1001&amp;cate_id=AG0103001000_2_" target="_blank" title="새창으로 열립니다." alt="송파구" />
						<area shape="rect" coords="85,272,122,290"   href="http://www.guro.go.kr/www/intro/guguide/organization.jsp" target="_blank" title="새창으로 열립니다." alt="구로구" />
						<area shape="rect" coords="137,298,175,315" href="http://www.geumcheon.go.kr/program/wooriGC/staffOffice.jsp?menuID=001004003001001" target="_blank" title="새창으로 열립니다." alt="금천구" />
						<area shape="rect" coords="190,306,226,323" href="http://www.gwanak.go.kr/site/gwanak/11/11103010000002016051207.jsp" target="_blank" title="새창으로 열립니다." alt="관악구" />
	</map>					
</div>


<div class="gBottom">

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
	
	.gtlBtn{
	background-color : #ff8080;
	font-size : 30px;
	width : 100px;
	height : 50px;
	cursor : pointer;
	}
	
	.gTop_List button{
	margin-right : 50px;
	color : #ffffff;
	}
	
	.gTop{
	padding-top : 50px;
	text-align : center;
	}
	
	

</style>