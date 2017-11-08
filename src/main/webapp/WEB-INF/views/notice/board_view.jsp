<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>${bi.bTitle }</title>
</head>

<body>
	<form name="f1" action="${rootPath }/notice/board_list">
		<div class="kwrap">
			<ul class="nav-navbar-nav navbar-right"></ul>
			<div class="container" style="padding-top: 200px;">
				<div class="row">
					<table class="table table-striped" style="text-align: center"
						border="1px solid #dddddd">
						<thead>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">번호</th>
								<th><input type="text" value="${bi.bNum }"></th>
							</tr>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">글쓴이</th>
								<th><input type="text" value="${bi.bName}"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th><input type="text" value="${bi.bTitle }"></th>
							</tr>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">내용</th>
								<th><input type="text" value="${bi.bContents }"></th>
							</tr>
						</tbody>
					</table>
					<div style="width: 650px; text-align: center;"></div>
					
					<button type="button" id="btnDelete">삭제</button>
					<button type="button" id="btnUpdate">수정</button>
					<button type="button" id="btnList">목록</button>
					
					
				</div>
			</div>
	</form>

	<div class="btn btn-primary" style="cursor: pointer;"
		onclick="window.scrollTo(0,0);">TOP</div>

	<c:import url="${footerUrl}" />
	</div>
	<script>
	
		$("#btnList").click(function(){
			location.href = "${rootPath}/notice/board_list";
		});
		
		var bNum = "${bi.bNum}";
		$(document).ready(function(){
				$("#btnDelete").click(function(){
						if (confirm("삭제하시겠습니까?") == true){    //확인
							var param = bNum;
							var ad = new AjaxDel("notice/board_delete",param); 
							ad.send();
						}else{   //취소
						    return;
						}
				});
		});
		
// 		var bName = "${bi.bName}";
// 		var bTitle = "${bi.bTitle}";
// 		var bContents = "${bi.bContents}";
		
// 		$(document).ready(function(){
// 				$("#btnUpdate").click(function(){
// 						if (confirm("등록하시겠습니까?") == true){    //확인
// 							var params = bNum,bName,bTitle,bContents;
// 							var ad = new AjaxDel("notice/board_update",params); 
// 							ad.send();
// 						}else{   //취소
// 						    return;
// 						}
// 				});
// 		});
		
		////AJAX//////
		var AjaxDel = function(url, params, type, dataType){
			this.url = "/web/" + url;
			var generateJSON2 = function(params){
				if(!params) return "";
				var data = {};
				data["bNum"] = params;
				data["bName"] = params;
				data["bTitle"] = params;
				data["bContents"] = params;
				
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
</body>
</html>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

body {
	font-family: 'NanumSquareRound', serif;
	font-weight: bold;
	margin: 0;
	height: 100%;
}

html {
	height: 100%;
}

.btn btn-primary {
	position: absolute;
}

.kwrap {
	width: 100%; min-height : 100%;
	position: relative;
	padding-bottom: 30px;
	min-height: 100%; /* footer height */
}
</style>
