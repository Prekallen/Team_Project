<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>Feedback 소개</title>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAogwylcDGMa8b1hb_u5Fqn8lIuZBrp74w"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(37.250943, 127.028344),
    zoom:5,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
<c:import url="${topmenu2Url}"/>


<h3>응소개</h3>
<div id="googleMap" style="width:500px;height:380px;"></div>



</body>
</html>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body{
	font-family: 'Hanna', serif;
	background-color : #BDBDBD;
	
	
	}
	
	

</style>