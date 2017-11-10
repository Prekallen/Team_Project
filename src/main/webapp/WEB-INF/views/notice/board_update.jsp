<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>${bi.bTitle }</title>
</head>

<body>
	
		<div class="kwrap">
			<ul class="nav-navbar-nav navbar-right"></ul>
			<div class="container" style="padding-top: 7%;  margin:0 auto; width:50%;">
				<div class="row" style="">
				<h6 style="font-size:30px; font-weight:bold; padding-bottom:30px;">글 수정하기</h6>
					<table class="table table-striped" style="text-align: center; font-family:NanumSquareRound;" border="1px solid #dddddd"  >
						<thead>						
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">번호</th>
								<th><input type="text" id="bNum" value="${bi.bNum}"></th>
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
								<th><textarea style="resize: none;" cols="150" rows="30"
									name="bContents" id="bContents">${bi.bContents }</textarea></th>
							</tr>
						</tbody>
					</table>
					<div class="bbtn" style="width:23%; float:right; text-align:center" >
						<button type="button" id="btnDelete" class="btn btn-info pull-right" style="width:28%; ">삭제</button>
						<button type="button" id="btnUpdate" class="btn btn-info pull-right" style="width:28%;">수정</button>
						<button type="button" id="btnList" class="btn btn-info pull-right" style="width:28%;">목록</button>
						<button type="button" id="btnCancle" class="btn btn-info pull-right" style="width:28%;">취소</button>
			</div>
			</div>
			</div>
			</div>
	<c:import url="${footerUrl}" />
	
	<script>
	
		$("#btnList").click(function(){
			location.href = "${rootPath}/notice/board_list";
		});
		
		$("#btnCancle").click(function(){
			location.href = "${rootPath}/notice/board_list?bNum=${bi.bNum}";
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
