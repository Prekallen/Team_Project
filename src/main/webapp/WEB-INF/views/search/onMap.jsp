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
		height: 90%;
		width: 90%;
	}
</style>
<body>
<% 
Double lat = Double.parseDouble(request.getParameter("lat"));
Double lng = Double.parseDouble(request.getParameter("lng"));
%>
	<div id="map"></div>
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
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdsvy9GEYpWuorLEVeObhzzx7h3VUJ57k&callback=initMap"
async defer></script>
</html>