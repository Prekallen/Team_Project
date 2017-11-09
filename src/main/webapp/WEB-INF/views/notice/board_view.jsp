<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>${bi.bTitle }</title>
</head>

<body>

		<div class="notice_view" style="background-color:#f5f5ef; padding-top: 70px; min-height:1000px;">
			<div class="nv_container" style="padding-top: 100px; max-width:1000px;; margin-left:400px;margin-right:400px;">
				<div class="row" style="max-width:100%;min-height:600px;">
					<h6 style="font-size:30px; background-color: #f5f5ef; font-weight:bold; padding-bottom:30px;">피드백 소식</h6>
						<notice style="font-family:'NanumSquareRound'; max-width:1000px;">
						
							<div id="btitle" style="text-align:left; font-size:20px; background-color: #f5f5ef; font-weight:bold;"> ${bi.bTitle }</div>
							<div class="bname" style=" #ffffff; margin-bottom:20px;">${bi.bName}</div>
							<div class="bcontents" style="margin-bottom:10px; height:100px; border-bottom:solid #ffffff;">${bi.bContents }</div>
							
							
						</notice>

				
				</div>				
			</div>
		
					<div id="btn_wh"style="width:200px;margin-left:850px; font-family:'NanumSquareRound' ">
						<button type="button" class="btn btn-primary"id="btnDelete" style="width:50px;">삭제</button>
						<button type="button" class="btn btn-primary"id="btnUpdate" style="width:50px;">수정</button>
						<button type="button" class="btn btn-primary"id="btnList" style="width:50px;">목록</button>
					</div>

					
	<c:import url="${footerUrl}" />
</div>
	<script>
	$("#btnList").click(function(){
		location.href = "${rootPath}/notice/board_list";
	});
	$("#btnUpdate").click(function(){
		location.href = "${rootPath}/notice/board_update?bNum=${bi.bNum}";
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
