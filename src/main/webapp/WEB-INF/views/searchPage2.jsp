<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<c:import url="${sidemenuUrl}"/>
<%
String result = (String)session.getAttribute("result");
%>
	<div class="wrap">
		<div id= "spTop">	</div>

		<div id="spMiddle" style="padding-top: 80px;">
			<h9 style="font-size:20px; font-weight:bold; padding-left:40%; margin:0 auto;">
			"<%=result %>"(으)로 검색한 결과</h9><br>
		</div>
<!-- 		<div id="aa" style="padding-top:150px;"> -->
		<div id="seceondMiddle" style="padding-top:100px;padding-left:100px;padding-right: 100px;">

		<ul id="ulList" style="    width: 1600px;"></ul>	
		<c:import url="${infomationUrl}" />
		</div>
	</div>

	<div id="spBottom">	</div>
	<c:import url="${footerUrl}"/>

</body>
<script>

var token = "";
var html = "";
$(document).ready(function(){
					var query = "<%=result%>";
					query = query.replace(/(\s*)/g, "")
					if (query == null || query == "") {
						alert("입력 좀...");
					} else {
						var au = new AjaxUtil("/searchPage");
						var param = {};
						param["query"] = query;
						
						param["token"] = null;

						au.param = JSON.stringify(param);
						au.setCallbackSuccess(callbackApi);
						au.send();
					}

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
							var place_id= result.place_id;
							token = result.next_page_token;
 							/* html += '<form class="form-signin" action="" id="ajax" style="padding-top:40px; padding-bottom:40px;">';
							html += '<td>이름 '+name+'<br>';
							html += '주소 '+formatted_address+'<br>';
							html += '별점 '+rating+'</td></br>';
							html += '</form>'; */
							htmlStr +='<dc-restaurant>';
							htmlStr +='<div id="btn_style">';
							htmlStr +='<button id="infomation_btn" onclick="document.getElementById(\'id03\').style.display=\'block\'">';
							htmlStr +=name +'</button>';
							htmlStr +='<div id=rt_info>';
							htmlStr +='주소 : ' + formatted_address+ '</br>';
							htmlStr +='별점 : ' +rating + '<br>placeid : '+place_id+'</div></div>';
							htmlStr +='</dc-restaurant>';
						}
						$("#ulList").html(htmlStr);
					}
});
$("#nBtn").click(function() {

			var au = new AjaxUtil("/searchPage");
			var param = {};
			param["token"] = token;
			au.param = JSON.stringify(param);
			au.setCallbackSuccess(callbackApi);
			au.send();

			function callbackApi(results) {

				var html = '';
				var mapInfoList = results["mapInfoList"];
				for ( var idx in mapInfoList) {
					var result = mapInfoList[idx];
					var name = result.name;
					var formatted_address = result.formatted_address;
					var rating = result.rating;
					var place_id = result.place_id;
					token = result.next_page_token;
					/* html += '<form class="form-signin" action="" id="ajax">';
					html += '이름<input type="text" class="form-control"  name="name" value="'+name+'">';
					html += '주소<input type="text" class="form-control" name="formatted_address" value="'+formatted_address+'">';
					html += '레이팅<input type="text" class="form-control"  name="rating" value="'+rating+'">';
					html += '</form>'; */
				}
				$("#spMiddle").append(html);
			}
		});


//Ajax//
var AjaxUtil = function(url, params, type, dataType) {
	if (!url) {
		alert("url정보가 없습니다.");
		return null;
	}
	this.url = "${rootPath}/" + url;

	var generateJSON = function(params) {
		if (!params)
			return "";
		var paramArr = params.split(",");
		var data = {};
		for (var i = 0, max = paramArr.length; i < max; i++) {
			var key = paramArr[i]
			if ($("#" + key).length > 1) {
				throw new JSException("동일 ID값이 존재함.");
			} else if ($("#" + key).length == 0) {
				throw new JSException(key + "에 해당하는 ID가 존재하지 않음.");
			}
			data[key] = $("#" + key).val();
		}
		return JSON.stringify(data);
	}
	this.type = type ? type : "POST";
	this.dataType = dataType ? dataType : "json";
	this.param = generateJSON(params);
	this.callbackSuccess = function(json) {
		var url = json.url;
		var msg = json.msg;
		if (msg) {
			alert(msg);
		}
		if (url) {
			pageMove(url);
		}
	}
	this.setCallbackSuccess = function(callback) {
		this.callbackSuccess = callback;
	}

	this.send = function() {
		$.ajax({
			type : this.type,
			url : this.url,
			dataType : this.dataType,
			beforeSend : function(xhr) {
				xhr.setRequestHeader("Accept", "application/json");
				xhr.setRequestHeader("Content-Type",
								"application/json");
			},
			data : this.param,
			success : this.callbackSuccess,
			error : function(xhr, status, e) {
				alert("에러ㅇ : " + e);
			},
			complete : function(e) {
			}
		});
	}
}




</script>
</html>