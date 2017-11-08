<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>공지사항</title>
</head>

<body>

	<div class="notice-wrap" style="background-color:#f5f5ef; padding-top: 70px;">
		<div class="notice-container" style="padding-top: 50px; padding-bottom:50px;
		width:1100px; min-height:1000px; margin:0 auto;">
			<div class="notice-row">
			<h6 style="font-size:30px; background-color: #f5f5ef; font-weight:bold; padding-bottom:30px;">피드백 소식</h6>

				
					<ul id="boardList" style="min-height:800	px; width:1000px;">
					</ul>

<%-- 				<a href="${rootPath}/notice/board_insert"
					class="btn btn-primary pull-right">글쓰기</a> --%>
			</div>
		</div>
<!-- 		<div class="btn btn-primary" style="cursor: pointer;"
			onclick="window.scrollTo(0,0);">TOP</div> -->
		<script>
			$(document).ready(function(){
				
				var html = "";
				var param = {};
				var au = new AjaxUtil("/notice/board_list");
				
				au.param = JSON.stringify(param);
				au.setCallbackSuccess(callbackBoard);
				au.send();
				
				function callbackBoard(results) {
					if (!results) {
						alert(OMG);
						return;
					}
					
					
					var getBoardInfoList = results["getBoardInfoList"];
					var htmlStr = "";
					for ( var idx in getBoardInfoList) {
						var result = getBoardInfoList[idx];
						var bnum = result.bNum;
						var btitle = result.bTitle;
						var bname = result.bName;
						var bcontents = result.bcontents;
						var credat = result.credat;
						// style = "cursor:pointer;" onClick = "location.href="${rootPath}/menutab/board_view?num=1";
 						htmlStr += '<notice style="font-family:\'NanumSquareRound\'">';
						htmlStr += '<div id="btitle" onclick="" ';
						htmlStr += 'style="text-align:left; font-size:20px;background-color: #f5f5ef; font-weight:bold;">';
						htmlStr +=	'<a href="${rootPath}/menutab/board_view?num=1" style="color: #26d4d4;"> '+btitle+'</a></div>';
						htmlStr += '<div class="bcontents" style="margin-bottom:10px; height:100px;">'+bcontents+'</div>';
						htmlStr += '<div class="credat" style="border-bottom:solid #ffffff; margin-bottom:20px;">'+credat+'</div>';
						htmlStr += '</notice>';
						
					}
					$("#boardList").html(htmlStr);
				}
			
			});
			
			function boardPage(bnum){
				location.href="${rootPath}/notice/board_view?bnum="+bnum;
			}
			</script>
		</script>

		<c:import url="${footerUrl}" />
	</div>
</body>
</html>