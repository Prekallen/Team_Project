<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
  <head>
    <style>
    <!--height: 280px; width: 19%; 사이드 사이즈-->
    <!--height: 400px; width: 100%; 탑 사이즈-->
      #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var rt = {lat: 37.497187, lng: 127.026859};  <!-- lat값과 lng 값을 db에서 받아와야 함 -->
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: rt
        });
        var marker = new google.maps.Marker({
          position: rt,
          map: map
        });
      }
    </script>
    <script async defer
     	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-b2wppFtbO-nVEcIjFYdY8z7ygFQ0YA0&callback=initMap">
    </script>
  </body>
</html>