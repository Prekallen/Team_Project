<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="header" >
      <div class="hcontainer" >
       
          <ul class="nav navbar-nav" style="background-color: #ff8080; width:100%;">
          	<li><a id="mainmemi">HOME</a></li> 
          	<li><a id="kintro">소개</a></li>
            <li><a id="knotice">공지사항</a></li>
            <li><a id="kgroup">종류별</a></li>
            <li><a id="klocal">지역별</a></li>
            
            <li style="padding-left:300px; padding-top:10px;">
            
            <input type="text" id="searchBox" name="query" autocomplete="off" value=""  style=" width:250px; height:30px; "/>
            
            <button type="submit" id="btn" style="width: 30px; height:30px; background-color: #ff8080; border:#ff8080;" >
            <img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" style="width: 30px; height:30px; background-color: #ff8080; "></button></li> 
			 
            <li><a id="klogin">로그인</a></li>
          </ul>
          
      </div>
      </div>
      
<script>
var token = "";

$("#btn").click(function(){
	
    var query = $("#searchBox").val();
    query=query.replace(/(\s*)/g,"")
    if(query==null||query==""){
    	alert("입력 좀...");
    }else{
	var au = new AjaxUtil("/test/apitest");
	var param = {};
	param["query"] = query;
	
	param["token"] = null;
	
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
			token = result.next_page_token; 
            html += '<form class="form-signin" action="" id="ajax">';
            html += '이름<input type="text" class="form-control"  name="name" value="'+name+'">';
            html += '주소<input type="text" class="form-control" name="formatted_address" value="'+formatted_address+'">';
            html += '레이팅<input type="text" class="form-control"  name="rating" value="'+rating+'">';
            html += '</form>';
		}
        $("#spMiddle").append(html);
	}
});

$("#nBtn").click(function(){
	
	
	var au = new AjaxUtil("/test/searchPage");
	var param = {};
	param["token"] = token;
	au.param = JSON.stringify(param);
	au.setCallbackSuccess(callbackApi);
	au.send();
    
	function callbackApi(results){
		
    	
        var html = '';
        var mapInfoList = results["mapInfoList"];
		for(var idx in mapInfoList){
			var result = mapInfoList[idx];
			var name = result.name;
			var formatted_address = result.formatted_address;
			var rating = result.rating;
			token = result.next_page_token; 
            html += '<form class="form-signin" action="" id="ajax">';
            html += '이름<input type="text" class="form-control"  name="name" value="'+name+'">';
            html += '주소<input type="text" class="form-control" name="formatted_address" value="'+formatted_address+'">';
            html += '레이팅<input type="text" class="form-control"  name="rating" value="'+rating+'">';
            html += '</form>';
		}
        $("#spMiddle").append(html);
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

$("#mainmemi").click(function(){
		pageMove("mainmemi")
});
$("#klogin").click(function(){
	pageMove("menutab/klogin")
});
$("#kintro").click(function(){
	pageMove("menutab/kintro")
});
$("#kgroup").click(function(){
	pageMove("menutab/kgroup")
});
$("#klocal").click(function(){
	pageMove("menutab/klocal")
});
$("#knotice").click(function(){
	pageMove("menutab/knotice")
});


</script>
<style>
	
	.hcontainer ul li a{
		font-size:25px;
		cursor:pointer;
		color : #FFFFFF;
		
		
	}
	.hcontainer ul li a:hover{ 
		transition:0.3s;
		color : #ff8080;
		background-color : #FFFFFF;
	}
	.hcontainer ul li:last-child{
		position:absolute;
		right:0;
		background-color: #ff8080;
	}
	
	
	
</style>
