<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/kheader.jsp"%>
<%@include file="/WEB-INF/views/common/side_menu2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
String results = (String)session.getAttribute("result");

%>

	<div class="wrap">
		<div id= "spTop">
		</div>
		<div id="spMiddle" >
		
		
			<button id="nBtn">더보기</button>
		</div>
		<div id="spBottom">
		</div>
	<c:import url="${footerUrl}"/>
	</div>
</body>
<script>
var result = "<%=results%>";
$( document ).ready(function(){
	if(result!=null){
		$("#spMiddle").append(result);
	}
});

</script>
</html>