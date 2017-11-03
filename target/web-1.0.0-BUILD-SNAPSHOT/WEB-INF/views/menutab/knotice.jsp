<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>공지사항</title>
</head>

<body>
	<div class="kwrap">
		<c:import url="${sidemenuUrl}" />


		<ul class="nav-navbar-nav navbar-right"></ul>
		<div class="container" style="padding-top: 200px;">
			<div class="row">
				<table id="list" class="table table-striped" style="text-align: center"
					border="1px solid #dddddd">

					<thead>

						<tr>
							<th style="background-color: #eeeeee; text-align: center;">번호</th>
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
							<th style="background-color: #eeeeee; text-align: center;">작성자</th>
							<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						</tr>
					</thead>
					
				</table>
				<a href="${rootPath}/menutab/write"
					class="btn btn-primary pull-right">글쓰기</a>
			</div>
		</div>
		<div class="btn btn-primary" style="cursor: pointer;"
			onclick="window.scrollTo(0,0);">TOP</div>
		<script>
		var html = "";
			$(document).ready(function(){
				var au = new AjaxUtil("/menutab/knotice");
				var param = {};
				au.param = JSON.stringify(param);
				au.setCallbackSuccess(callbackBoard);
				au.send();
				
				function callbackBoard(results) {
					if (!results) {
						alert(OMG);
						return;
					}
					
					console.log(results);
					
					var getboardinfolist = results["getBoardInfoList"];
					for ( var idx in getBoardInfoList) {
						var result = getBoardInfoList[idx];
						var bnum = result.bNum;
						var btitle = result.bTitle;
						var bname = result.bName;
						var credat = result.credat;
						html += '<tbody>';
						html += '<tr>'
						html += '<td><input type ="text" value="'bnum'"></td>';
						html += '<td><input type ="text" value="'btitle'"></td>';
						html += '<td><input type ="text" value="'bname'"></td>';
						html += '<td><input type ="text" value="'credat'"></td>';
						html += '</tr>';
						html += '</tbody>';
					}
					$("list").append(html);
				}
			});
			
		</script>

		<c:import url="${footerUrl}" />
	</div>
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

.kwrap {
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
}
</style>