<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="pVar" value="1.3.7"/>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<script src="<c:url value="/resources/js/jquery-3.2.1.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.fileupload.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.iframe-transport.js?version=${pVar}"/>"></script>
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
	
    var query = $("#searchBox").val();
    query=query.replace(/(\s*)/g,"")
    if(query==null||query==""){
    	alert("입력 좀...");
    }else{
	var au = new AjaxUtil("/test/apitest");
	var param = {};
	param["query"] = query;
	au.param = JSON.stringify(param);
	au.setCallbackSuccess(callbackApi);
	au.send();
	}        
	function callbackApi(results){
		if(!results){
			alert(OMG);
			return;
		}
		
    	$("#ajax").remove();
        var html = '';
        var mapInfoList = results["mapInfoList"];
		for(var idx in mapInfoList){
			var result = mapInfoList[idx];
			var name = result.name;
			var formatted_address = result.formatted_address;
			var rating = result.rating;
            html += '<form class="form-signin" action="" id="ajax">';
            html += '이름<input type="text" class="form-control"  name="name" value="'+name+'">';
            html += '주소<input type="text" class="form-control" name="formatted_address" value="'+formatted_address+'">';
            html += '레이팅<input type="text" class="form-control"  name="rating" value="'+rating+'">';
            html += '</form>';
		}
        $("#container").append(html);
	}
});


//Ajax//
var AjaxUtil = function (url, params, type, dataType){
	if(!url){
		alert("url정보가 없습니다.");
		return null;
	}
	this.url = "${rootPath}/" + url;
	
	var generateJSON = function(params){
		if(!params) return "";
		var paramArr = params.split(",");
		var data = {};
		for(var i=0,max=paramArr.length;i<max;i++){
			var key = paramArr[i]
			if($("#" + key).length>1){
				throw new JSException("동일 ID값이 존재함.");
			}else if($("#" + key).length==0){
				throw new JSException(key+"에 해당하는 ID가 존재하지 않음.");
			}
			data[key] = $("#" + key).val();
		}
		return  JSON.stringify(data);
	}
	this.type = type?type:"POST";
	this.dataType = dataType?dataType:"json";
	this.param = generateJSON(params);
	this.callbackSuccess = function(json){
    	var url = json.url;
    	var msg = json.msg;
    	if(msg){
    		alert(msg);
    	}
    	if(url){
        	pageMove(url);
    	}
	}
	this.setCallbackSuccess = function(callback){
		this.callbackSuccess = callback;
	}
	
	this.send = function(){
		$.ajax({ 
	        type     : this.type
	    ,   url      : this.url
	    ,   dataType : this.dataType 
	    ,   beforeSend: function(xhr) {
	        xhr.setRequestHeader("Accept", "application/json");
	        xhr.setRequestHeader("Content-Type", "application/json");
	    }
	    ,   data     : this.param
	    ,   success : this.callbackSuccess
	    ,   error : function(xhr, status, e) {
		    	alert("에러 : "+e);
		},
		complete : function(e) {
		}
		});
	}
}
</script>
</html>