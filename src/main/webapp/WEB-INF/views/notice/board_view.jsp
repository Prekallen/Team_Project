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
			<div class="container" style="padding-top: 200px; width=:100%;">
				<div class="row">
					<table class="table table-striped" style="text-align: center"
						border="1px solid #dddddd">
						<thead>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">번호</th>
								<th><input type="text" id="bNum" value="${bi.bNum }"></th>
							</tr>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">글쓴이</th>
								<th><input type="text" id="bName" value="${bi.bName}"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th><input type="text" id="bTitle" value="${bi.bTitle }"></th>
							</tr>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">내용</th>
								<th><input type="text" id="bContents" value="${bi.bContents }"></th>
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
		
		$(document).ready(function(){
		var bNum = "${bi.bNum}";	
				$("#btnDelete").click(function(){
					
						if (confirm("삭제하시겠습니까?") == true){    //확인
							var params = "bNum";
							var au = new AjaxUtil("notice/board_delete",params); 
							au.send();
						}else{   //취소
						    return;
							}
				});

				$("#btnUpdate").click(function(){
					bNum = $("#bNum").val();
					var bName = $("#bName").val();
					var bTitle = $("#bTitle").val();
					var bContents = $("#bContents").val();
					
						if (confirm("수정하시겠습니까?") == true){    //확인
							var params = "bNum,bName,bTitle,bContents";
							var au = new AjaxUtil("notice/board_update",params); 
							au.send();
						}else{   //취소
						    return;
						}
				
						
				});
		});
		

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
