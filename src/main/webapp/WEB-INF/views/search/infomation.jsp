<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>식당정보</title>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css?version=${pVar}"/>"/>
</head>
<style>
	#map {
		height: 90%;
		width: 90%;
	}
</style>
<body>
<!-- 로그인 -->
	<div id="id03" class="modal" >
		<form class="modal-content animate" action="/action_page.php" style="padding-top: 20px; padding-left: 20px; width:50%; heght:50%;">
		<h7 style="font-family: 'NanumSquareRound'; font-weight: bold; padding-top:30px;">맛집 정보</h7>		
		<span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal" style="padding-top: 20px;">&times;</span> 							
		<p>
		<div id="map"></div>		
	</form>	

		<script>
	      function initMap() {
	        // Create a map object and specify the DOM element for display.
	        var map = new google.maps.Map(document.getElementById('map'), {
	          center: {lat: -34.397, lng: 150.644},
	          zoom: 16
	        });
	      }
	
	    </script>
	    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdsvy9GEYpWuorLEVeObhzzx7h3VUJ57k&callback=initMap"
	    async defer></script>										
	</div><!-- modal id03 -->
    
    
<script>
						// Get the modal
						var modal = document.getElementById('id03');

						// When the user clicks anywhere outside of the modal, close it
						window.onclick = function(event) {
							if (event.target == modal) {
								modal.style.display = "none";
							}
						}
</script>
					

</body>
