<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
=======
<script src="<c:url value="/resources/js/jquery-2.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.fileupload.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.iframe-transport.js"/>"></script>
>>>>>>> branch 'master' of https://github.com/Prekallen/Team_Project.git
<html>
<head>
	<title>Home</title>
</head>
<script>

</script>
<body>
<form action="http://foo.com" method="get">
  <input name="say" value="Hi">
  <input name="to" value="Mom">
  <button>Send my greetings</button>
</form>
	<input type="text" id = "searchText"required value="${searchText}" autofocus/>
	<input type ="button" id = "searchBtn" value="가자 맛집"/>
<div id= "searchResults"></div>
<P>  The time on the server is ${serverTime}. </P>
</body>
<script>
	$("#searchBtn").click(function(){
		var query = "searchText";
		if(query){
		<"https://maps.googleapis.com/maps/api/place/textsearch/json?key=AIzaSyDF_3LNTyiq3aKCc8kDx4QdXFuVH7DB3S8",query)
		
	})
</script>
</html>
