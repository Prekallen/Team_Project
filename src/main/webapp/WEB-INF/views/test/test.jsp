<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/common/header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
$("#searchBtn").click(function(){
	var query = $("#searchText").val();
	var au = new AjaxUtil("test/test");
	var param = {};
	param["query"] = query;
	au.param = JSON.stringify(param);
	au.setCallbackSuccess(callbackQuery);
	au.send();
})
function callbackQuery(result){
	var results= result;
	$("searchResult").append(results);
}
</script>
<body>
<div id="search" style="padding-left:100px">
	<input type="text" id="searchText"/>
	<input type="button" id="serchBtn" value="검색"/>
</div>
<div id="searchResults"style="padding-left:100px"></div>
<script type="text/javascript" src=""></script>
</body>
</html>