<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/kheader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css?version=${pVar}"/>"/>
<style>
</style>
</head>
<body>


<div id="wrap2">
	<div id="header2">
				<div id="search">
					<ul>
				  		<li><a href="${rootPath}/mainmemi"><input type="image" src="${rootPath}/resources/image/fdLogo.png" style="width: 35px; height:35px; padding-right:5px;"></a></li>
						<li><input type="text" id="searchBox" name="query" autocomplete="on" value=""  style="width:250px; height:30px; "/></li>
				        <li><input type="image" src="https://dcicons.s3.amazonaws.com/dicons/img/main/ms_button.png" id="btn" style=" width: 29px; height: 28px;"></li>
				     </ul>
			     </div>
     
	<div id="mySidenav" class="sidenav"> 
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="${rootPath}/mainmemi">메인</a>
  <a href="${rootPath}/menutab/kintro">Feedback소개</a>
  <a href="${rootPath}/menutab/knotice">공지사항</a>
  <a>맛집 찾기</a>

  <div class="dropdown"id="dropgroup1">
    <button class="dropbtn">
    <a href="${rootPath}/menutab/kgroup">- 종류별</a>
    </button> 
    <div class="dropdown-content" id="dropgroup1"style="text-align:right">
      <a href="#">한식</a>
      <a href="#">양식</a>
      <a href="#">중식</a>
      <a href="#">일식</a>
      <a href="#">분식</a>
      <a href="#">기타</a>
    </div> 
    </div>
<br> 
	<div class="dropdown" id="dropgroup2">
     <button class="dropbtn">
     <a href="${rootPath}/menutab/klocal">- 지역별</a>
     </button>
    <div class="dropdown-content" style="text-align:right">
     					<a href="#">도봉구</a>
						<a href="#">강북구</a>
						<a href="#">노원구</a>
						<a href="#">은평구</a>
						<a href="#">성북구</a>
						<a href="#">중랑구</a>
						<a href="#">서대문구</a>
						<a href="#">종로구</a>
						<a href="#">동대문구</a>
						<a href="#">강서구</a>
						<a href="#">마포구</a>
						<a href="#">중구</a>
						<a href="#">성동구</a>
						<a href="#">용산구</a>
						<a href="#">광진구</a>
						<a href="#">강동구</a>
						<a href="#">양천구</a>
						<a href="#">영등포구</a>
						<a href="#">동작구</a>
						<a href="#">서초구</a>
						<a href="#">강남구</a>
						<a href="#">송파구</a>
						<a href="#">구로구</a>
						<a href="#">금천구</a> 	
						<a href="#">관악구</a>
    	</div> 
		</div>
   </div>

   


<div id="main">

	<li class="logo"><span style= "font-size:30px; cursor:pointer" onclick="openNav()" >&#9776; </span></li>

	<dd class="clickme fl DB_etc10_1" style="width: 128px;"><img src="${rootPath}/resources/img/login_click.png"/></dd>
	<dl id="util_menu">
			<dt class="hide">유틸메뉴</dt>
			<dd class="util_first">
				<ul>
					<li class="login_wrap logtxt" >
						<a href="${rootPath}/menutab/klogin" id="status">LOGIN</a>
						
					</li>
					<li class="logtxt">
					<a href="${rootPath}/menutab/kjoin">|&nbsp;&nbsp;&nbsp;JOIN</a>
					</li>
					<!-- <li><a href="#">|&nbsp;&nbsp;&nbsp;고객센터</a></li> -->
				</ul>				
			</dd>
		<dd>									
			<div id="google_translate_element"></div>
			<script type="text/javascript">
			function googleTranslateElementInit() {
			  new google.translate.TranslateElement({pageLanguage: 'ko', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
			}
			</script>
			<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>		
		</dd>

	</dl><!-- id="util_menu" -->
			</div><!-- id="main" -->
			</div><!-- id="header2" -->
	</div><!-- id="wrap2" -->
	
	<hr />


<script>
var token = "";
var html = "";
$("#btn").click(function(){
	
    var query = $("#searchBox").val();
    query=query.replace(/(\s*)/g,"")
    if(query==null||query==""){
    	alert("입력 좀...");
    }else{
	var au = new AjaxUtil("/searchPage");
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
	
	
	var au = new AjaxUtil("/searchPage");
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
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
</script>
     
</body>
</html> 
