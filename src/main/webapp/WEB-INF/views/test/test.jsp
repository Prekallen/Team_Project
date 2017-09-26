<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/place/textsearch/json?key=AIzaSyBnscvaV-XQlNiBxJF9USbQDaiFUPoQ448"></script>
<script>
function initial() = {
	var myOptions = {
		query = "강남 맛집"
	};
	var map = new google.maps.Map(document.getElementById("map_canvas"),
			myOptions);
};


</script>
<div id="map_canvas" style="width: 300px; height: 300px;"></div>

<body>

</body>
</html>