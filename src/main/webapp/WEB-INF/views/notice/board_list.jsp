<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>공지사항</title>
</head>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
</style>
<body>

	<div class="notice-wrap" style="background-color:#f5f5ef; padding-top: 70px;">
		<div class="notice-container" style="padding-top: 50px; padding-bottom:50px;
		width:1100px; min-height:1000px; margin:0 auto;">
			<div class="notice-row">
			<h6 style="font-size:30px; background-color: #f5f5ef; font-weight:bold; padding-bottom:30px;">피드백 소식</h6>
			
				
				<button class="btn btn-primary pull-right" style="width:10%; font-family:NanumSquareRound;"
				onClick="location.href='${rootPath}/notice/board_insert'" id="writer">글쓰기</button>
			
					<ul id="boardList" style="min-height:800px; width:1000px;">
					</ul>
			</div>
		</div>
< 		<div class="btn btn-primary" style="cursor: pointer;"
			onclick="window.scrollTo(0,0);">TOP</div> 
		<script>
	
			$(document).ready(function(){
				
				var html = "";
				var param = {};
				var au = new AjaxUtil("/notice/board_list");
				
				au.param = JSON.stringify(param);
				au.setCallbackSuccess(callbackBoard);
				au.send();
				
				function callbackBoard(results) {
					console.log(results);
					if (!results) {
						alert(OMG);
						return;
					}
					
					
					var getBoardInfoList = results["getBoardInfoList"];
					var htmlStr = "";
					for ( var idx in getBoardInfoList) {
						var result = getBoardInfoList[idx];
						var bnum = 	result.bNum;
						console.log(bnum);
						var btitle = result.bTitle; 
						console.log(btitle);
						var bname = result.bName;
						var bcontents = result.bContents;
						var credat = result.credat;
						// style = "cursor:pointer;" onClick = "location.href="${rootPath}/menutab/board_view?num=1";
 						htmlStr += '<notice style="font-family:\'NanumSquareRound\'">';
						htmlStr += '<div id="btitle" style="text-align:left; font-size:20px; background-color: #f5f5ef; font-weight:bold;">';
						htmlStr += '<a href="${rootPath}/notice/board_view?bNum='+bnum+'"> '+btitle+'</a></div>';
						htmlStr += '<div class="bname" style=" #ffffff; margin-bottom:20px;">'+bname+'</div>';
						htmlStr += '<div class="bcontents" style="margin-bottom:10px; height:100px;">'+bcontents+'</div>';
						htmlStr += '<div class="credat" style="border-bottom:solid #ffffff; margin-bottom:20px;">'+credat+'</div>';
						htmlStr += '</notice>';
						
					}
					$("#boardList").html(htmlStr);
				}
				
				
			
			});
			
		
			</script>
		

		<c:import url="${footerUrl}" />
	</div>
</body>
</html>