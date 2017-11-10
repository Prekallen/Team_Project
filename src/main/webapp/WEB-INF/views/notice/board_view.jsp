<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<Title>글 상세보기</Title>
</head>

<body>

	<div class="kwrap">
	<div class="notice-wrap" style="background-color:#f5f5ef; padding-top: 70px;">
		<div class="notice-container" style="padding-top: 7%; padding-bottom:50px;
		width:50%; min-height:1000px; margin:0 auto;">
						<h6 style="font-size:30px; background-color: #f5f5ef; font-color: #26d4d4; font-weight:bold; padding-bottom:30px;">피드백 소식</h6>
			<div class="notice-row">
			<notice  style="font-family:NanumSquareRound;">
						
						<div class="btitle" style="text-align:left; font-size:20px; background-color: #f5f5ef; font-weight:bold;">${bi.bTitle }</div>
						<div class="bname" style=" #ffffff; margin-bottom:20px;">${bi.bName }</div>
						<div class="bcontents" style="margin-top:10%; margin-bottom:10px; height:100px; border-bottom:solid #ffffff;">${bi.bContents }</div>
			</notice>
						<div class="bbtn" align="" style="width:23%; float:right;">
						<button type="button" id="btnDelete" class="btn btn-info pull-right" style="width:25%; ">삭제</button>
						<button type="button" id="btnUpdate" class="btn btn-info pull-right" style="width:25%;">수정</button>
						<button type="button" id="btnList" class="btn btn-info pull-right" style="width:25%;">목록</button>
						</div>
						</div>
						</div>
						</div>
			</div>

	<script>
	
		$("#btnList").click(function(){
			location.href = "${rootPath}/notice/board_list";
		});
		
			
			//var bNum = $("#bNum").val();
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
			location.href = "${rootPath}/notice/board_update?bNum=${bi.bNum}";
		});
		
		</script>
		<c:import url="${footerUrl}" />
</body>
</html>
