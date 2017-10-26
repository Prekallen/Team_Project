<!DOCTYPE html>
<html>
  <head>
    <style>
      #map {
        height: 280px;
        width: 19%;
       }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      function initMap() {
        var rt = {lat: 37.497187, lng: 127.026859};
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
     	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU6e2ZAsap4YbkOgBPR2r_f7Yu5VIGens&callback=initMap">
    </script>
  </body>
</html>