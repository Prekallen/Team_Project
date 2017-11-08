<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="footer_div" style="background-color:#f6f6f6;"> 
			<div id="footer_text"> © 2017 Feedback · 
			<a>Feedback 소개</a> · 
			<a>이용약관</a> · 
			<a>개인정보취급방침</a> · 
			<a>문의</a> · 
			<a id="signOut">회원탈퇴</a>
			</div>
</div>
<script>
var user = "${user}";
var userId = "${user.userId}";
$(document).ready(function(){
		
	if(userId!=""&&userId!=null){
		$("#signOut").click(function(){
				if (confirm("탈퇴하시겠습니까?") == true){    //확인
					var paramIds = userId;
					var au = new AjaxOut("/user/signout",paramIds); 
					au.send();
				}else{   //취소
				    return;
				}
		});
	}else{
		$("#signOut").click(function(){
		alert("로그인후 탈퇴가 가능합니다");
		});
	}
}) ;

var AjaxOut = function(url, params, type, dataType){
	this.url = "/web/" + url;
	var generateJSON2 = function(params){
		if(!params) return "";
		var data = {};
		data["userId"] = params;
		return  JSON.stringify(data);
	}
	
	this.param = generateJSON2(params);
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
	        type     : "POST"
	    ,   url      : this.url
	    ,   dataType : "JSON" 
	    ,   beforeSend: function(xhr) {
	        xhr.setRequestHeader("Accept", "application/json; charset=utf-8");
	        xhr.setRequestHeader("Content-Type", "application/json; charset=utf-8");
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
<style>
#footer_div {
    position:fixed;
    bottom:0;
    left:0;
    right:0;
    width:100%;
    height:30px;
    background-color: #e1e0db;
    margin-bottom : -1px;
    
}

div#footer_text {
	color: #808184;
    text-align: center;
    font-size: 14px;
    line-height: 30px;
    font-family: 'NanumSquareRound';
    font-weight: bold;
}

div#footer_text a {
    
    color: inherit;
    text-decoration: none;
}

div#footer_text a:link, div#footer_text a:visited, div#footer_text a:hover, div#footer_text a:active {
    color: inherit;
    text-decoration: none;
}
</style>