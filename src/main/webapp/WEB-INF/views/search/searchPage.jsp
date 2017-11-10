<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="footerUrl" value="/WEB-INF/views/common/footer.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
String results = (String)session.getAttribute("result");
%>

	<div class="wrap3" style="background-color: #f5f5ef ;">

		<div id="spTop">
			<h9>
			"<%=result %>"(으)로 검색한 결과
			</h9><br>			
		</div>
		<div id="seceondMiddle">
			<ul id="ulList" style="    width: 100% auto; margin: auto;"></ul>	
			<c:import url="${infomationUrl}" />
		</div>
		<div id="spBottom" style="padding-bottom:30px;">
		<button type="button" id="nBtn">더 보기</button>
		</div>
	</div>

		
	<c:import url="${footerUrl}"/>

</body>
<script>

var token = "";
var html = "";
$(document).ready(function(){
					var query = "<%=results%>";
					query = query.replace(/(\s*)/g, "")
					if (query == null || query == "") {
						alert("입력 좀...");
						history.go(-1);
					} else {
						var au = new AjaxUtil("/search/searchPage");
						var param = {};
						param["query"] = query;

						param["token"] = null;

						au.param = JSON.stringify(param);
						au.setCallbackSuccess(callbackApi);
						au.send();
					

					function callbackApi(results) {
						if (!results) {
							alert(OMG);
							return;
						}
						var mapInfoList = results["mapInfoList"];
						var htmlStr = "";
						for (var idx in mapInfoList) {
							var result = mapInfoList[idx];
							var name = result.name;
							var formatted_address = result.formatted_address;
							var rating = result.rating;
							var place_id = result.place_id;
							var photo_reference = result.photo_reference;
							var lat = result.lat;
							var lng = result.lng;
							token = result.next_page_token;
							htmlStr +='<dc-restaurant>';		
							htmlStr +='<div id="rt_form">';
							htmlStr +='<div id="rt_info" style="width:200px;">';
							if(photo_reference!=="없음"){
								htmlStr += '<img src="https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&key=AIzaSyDhaT80ZtktlPWKNSklWxzIVcCx6OfgtJA&photoreference=' + photo_reference + '" style="width: 200px;height: 100px;">';                       
								}else{
								htmlStr += '<p style="margin: auto; text-align:center; padding-top:40px;">none image</p>';
								}
							htmlStr +='</div>';
							htmlStr +='<div id="rt_info" style="width:250px;">';
							htmlStr +='<div id="infomation_btn"> <a onclick="googleMap('+lat+','+lng+')">';
							htmlStr +=name +'</a></div></div>';
							htmlStr +='<div id="rt_info">';
							htmlStr +='주소 : ' + formatted_address+ '</br>';
							htmlStr +='별점 : ' +rating + '<br><p hidden>placeid : '+place_id+'</hidden></div></div>';
							htmlStr +='</dc-restaurant>';
						}
						$("#ulList").html(htmlStr);
					}
					//document.getElementById(\'id03\').style.display=\'block\' == a tag
				}
});

$("#nBtn").click(function() {

			var au = new AjaxUtil("/search/searchPage");
			var param = {};
			param["token"] = token;
			au.param = JSON.stringify(param);
			au.setCallbackSuccess(callbackApi);
			au.send();

			function callbackApi(results) {

				var html = '';
				var mapInfoList = results["mapInfoList"];
				var htmlStr ="";
				for ( var idx in mapInfoList) {
					var result = mapInfoList[idx];
					var name = result.name;
					var formatted_address = result.formatted_address;
					var rating = result.rating;
					var place_id = result.place_id;
					var photo_reference = result.photo_reference;
					var lat = result.lat;
					var lng = result.lng;
					token = result.next_page_token;
					htmlStr +='<dc-restaurant>';		
					htmlStr +='<div id="rt_form">';
					htmlStr +='<div id="rt_info" style="width:200px;">';
					if(photo_reference!=="없음"){
						htmlStr += '<img src="https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&key=AIzaSyDhaT80ZtktlPWKNSklWxzIVcCx6OfgtJA&photoreference=' + photo_reference + '" style="width: 200px;height: 100px;">';                       
						}else{
						htmlStr += '<p style="margin: auto; text-align:center; padding-top:40px;">none image</p>';
						}
					htmlStr +='</div>';
					htmlStr +='<div id="rt_info" style="width:250px;">';
					htmlStr +='<div id="infomation_btn" style="text-align:center; cursor:pointer;"> <a onclick="googleMap('+lat+','+lng+')">';
					htmlStr +=name +'</a></div></div>';
					htmlStr +='<div id="rt_info">';
					htmlStr +='주소 : ' + formatted_address+ '</br>';
					htmlStr +='별점 : ' +rating + '<br><p hidden>placeid : '+place_id+'</hidden></div></div>';
					htmlStr +='</dc-restaurant>';
				}
				$("#ulList").html(htmlStr);
				}
			});
			//document.getElementById(\'id03\').style.display=\'block\' == a tag


function googleMap(lat,lng){
	window.location.href="${rootPath}/search/onMap?lat="+lat+"&lng="+lng;
<%
	
%>
}
</script>
</html>