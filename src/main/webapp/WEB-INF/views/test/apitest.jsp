<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
	<div id="box">
		<input type="text" id="searchBox"><button id="btn">나와라</button>
	</div>
	<div id="container"></div>
</div>
</body>

<script>
$("#btn").click(function(){
	var name ;
	var formatted_address ;
	var rating ;
    var query = $("#searchBox").val();
    if(query=null||query==""){
    	alert("입력 좀...");
    	return;
    }else if(query){
	var au = new AjaxUtil("/test/apitest");
	var param = {};
	param["query"] = query;
	au.param = JSON.stringify(param);
	au.setCallbackSuccess(callbackApi);
	au.send();
	}        
	function callbackApi(result){
		name = result.name;
		formatted_address = result.formatted_address;
		rating = result.rating
		if(!result){
			alert(OMG);
			return;
		}
        if(result){
        	$("#ajax").remove();
            var html = '';
            html += '<form class="form-signin" action="" id="ajax">';
            html += '이름<input type="text" class="form-control"  name="name" value="'+name+'">';
            html += '주소<input type="text" class="form-control" name="formatted_address" value="'+formatted_address+'">';
            html += '레이팅<input type="text" class="form-control"  name="rating" value="'+rating+'">';
            html += '</form>';
            $("#container").append(html);
            return;
        }
	}
});

</script>
</html>