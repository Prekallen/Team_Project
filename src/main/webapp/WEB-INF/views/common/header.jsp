<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="topmenuUrl" value="/WEB-INF/views/common/top_menu.jsp" />
<c:set var="topmenu2Url" value="/WEB-INF/views/common/top_menu2.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="pVar" value="1.3.7"/>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<c:set var="nowUrl" value="${pageContext.request.requestURI}"/>
<script src="<c:url value="/resources/js/jquery-3.2.1.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.fileupload.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.iframe-transport.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap.min.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>

<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-theme.min.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap.min.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-table.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/common.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/signin.css?version=${pVar}" />"/>

<link rel="stylesheet" href="<c:url value="/resources/footercss/footer.css?version=${pVar}" />"/>


<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular.min.js?2017082501"></script>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular-animate.min.js?2017082501"></script>
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/bootstrap/ui-bootstrap-tpls-0.13.0.min.js?2017082501"></script>
<%-- 실시간 검색어 --%> 
<link rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/autocomplete.css?2017082501" type="text/css" />
<script src='https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/autocomplete.js'></script>
<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/search_main.css?2017082501" />
<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/pop_sub.js?2017082501"></script>
<script src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angular-app/realtime-keyword/realtime-keyword.modal.js?2017082501"></script>
﻿<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/pop_sub.css?2017082501" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">  
<script>

var pageMove = function(page){
	location.href = "${rootPath}/" + page;
}
//---------------Ajax---------------//
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