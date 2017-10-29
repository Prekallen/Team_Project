<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<script src="<c:url value="/resources/js/jquery-2.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.fileupload.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.iframe-transport.js"/>"></script>
<html>
<head>
	<title>Home</title>
</head>
<script>

</script>
<body>

	<input type="text" id = "searchText"required value="${searchText}" autofocus/>
	<input type ="button" id = "btn1" value="검색"/>
<div id= "searchResults"></div>

</body>

<script>
	$("#btn1").click(function(){
			var web = 	"https://maps.googleapis.com/maps/api/place/textsearch/json?query=강동구중식&key=AIzaSyDhaT80ZtktlPWKNSklWxzIVcCx6OfgtJA";
			$("#searchResults").html(web); 
		});	

</script>
</html>
