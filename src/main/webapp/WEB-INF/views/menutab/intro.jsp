<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>Feedback 소개</title>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA6F5A79UmPzOyZeQcNBFsBiplc1xGxbfk"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(37.497187, 127.026859),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
<c:import url="${topmenu2Url}"/>


<div id="googleMap" style="width:100%;height:400px;"></div>






</body>
</html>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body{
	font-family: 'Hanna', serif;
	background-color : #BDBDBD;
	}
	
	

</style>