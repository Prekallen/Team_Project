<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title></title>
</head>

<body>
				<div class="container" style="margin-left:22%;">
					 <table class="table table-striped" style="text-align: center; margin-top:70px;" border="1px solid #dddddd">
						<thead>
							
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
								<th><textarea style="resize: none;" cols="150" rows="30"
									id="bContents" id="bContents">${bi.bContents }</textarea>
<%-- 								<th><input type="text" id="bContents" value="${bi.bContents }"></th> --%>
							</tr>
						</tbody>
					</table> 							
					<div id="btn_wh"style="width:200px;margin-bottom:30px; margin-left:50%; font-family:'NanumSquareRound' ">
						<button type="button" class="btn btn-primary"id="btnDelete" style="width:50px;">삭제</button>
						<button type="button" class="btn btn-primary"id="btnUpdate" style="width:50px;">수정</button>
						<button type="button" class="btn btn-primary"id="btnList" style="width:50px;">목록</button>
					</div>
				</div>				
			
		

						<!-- 	<div class="btn btn-primary" style="cursor: pointer;"
								onclick="window.scrollTo(0,0);">TOP</div> -->
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
