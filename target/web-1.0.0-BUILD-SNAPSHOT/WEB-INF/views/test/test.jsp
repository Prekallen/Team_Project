<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
<c:set var="pVar" value="1.3.9"/>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<script src="<c:url value="/resources/js/jquery-3.2.1.js?version=${pVar}"/>"></script>
<script> 
$(document).ready(function() { 
	var url = "https://maps.googleapis.com/maps/api/place/textsearch/json?key=AIzaSyDhaT80ZtktlPWKNSklWxzIVcCx6OfgtJA&query=강동구중식";
	$.getJSON(url , function(data) { 
		
		var html = []; 
		
		$.each(data, function(i, item) { 
			
			
			html.push('<div >'); 
			html.push('<h3 >' + item.formatted_address + '</h3>'); 
			html.push('<div >' + item.name + '</div>'); 
			html.push('<div >' + item.rating + '</div>'); 
			html.push('<div >' + item.icon + '</div>'); 
			html.push('<div >' + item.id + '</div>'); 
			html.push('</div>');
			html.push('</div>'); 
			
			//html.push('<li id="' + key + '">' + val + '</li>');
			
		}); 
		
		console.log(html); 
		
		$('#target').html(html.join(''));
		
		});
	});
</script>

</head>
   



 
<style>
       #map {
        height: 400px;
        width: 700px;
       }
    </style>
  </head>
  <body>
    
    <div id="map"></div>
    <script>
      function initMap() {
        var spot = {lat: 37.497262 , lng: 127.027401};
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
    
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdsvy9GEYpWuorLEVeObhzzx7h3VUJ57k&callback=initMap" >
    </script>
</body>


</html>