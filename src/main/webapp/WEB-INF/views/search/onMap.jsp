<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	#map {
		height: 800px;
		width: 1800px;
	}
</style>
<body>
<% 
Double lat = Double.parseDouble(request.getParameter("lat"));
Double lng = Double.parseDouble(request.getParameter("lng"));
%>

	<h2 style="text-align:center;"> 선택한 곳의 위치</h2>

	<div id="map" style="overflow:block;"></div>

	<div id="btnCenter" style="text-align:center; padding:20px;"> 
		<input type="button"  id="backBtn" value="뒤로가기" onclick="backtopage()"/>
	</div>
</body>
<script>
	function initMap() {
	  var spot = {lat: <%=lat%> , lng: <%=lng%>};
	  var map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 17,
	    center: spot
	  });
	  var marker = new google.maps.Marker({
	    position: spot,
	    map: map
	  });
	}
	function backtopage(){
		history.go(-1);  
	}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAPsbPLnLDqAHiypEfoS2xtRJ1Oz1hzhYo&callback=initMap"
async defer></script>
</html>