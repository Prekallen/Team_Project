<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<Title>글 작성하기</Title>
</head>

<body>

	<div class="kwrap">
		<c:import url="${sidemenuUrl}" />


		<form name="f1">
			<ul class="nav-navbar-nav navbar-right"></ul>
			<div class="container" style="padding-top: 200px;">
				<div class="row">
					<table class="table table-striped" style="text-align: center"
						border="1px solid #dddddd">
						<thead>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">글쓴이</th>
								<td><textarea style="resize: none;" cols="150" rows="1"
										name="bName" id="bName"></textarea></td>
							</tr>
						</thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
							<td><textarea style="resize: none;" cols="150" rows="3"
									name="bTitle" id="bTitle"></textarea></td>
						</tr>

						<tr>
							<th style="background-color: #eeeeee; text-align: center;">내용</th>
							<td><textarea style="resize: none;" cols="150" rows="30"
									name="bContents" id="bContents"></textarea></td>
						</tr>

					</table>

					<a href="${rootPath}/menutab/knotice"
						class="btn btn-primary pull-right">뒤로가기</a> <input type="button"
						class="btn btn-primary" id="send" value="글쓰기">
				</div>
			</div>
		</form>

		<div class="btn btn-primary" style="cursor: pointer;"
			onclick="window.scrollTo(0,0);">TOP</div>

		<c:import url="${footerUrl}" />
	</div>
	<script>
		$("#send").click(function() {
			var bName = $("#bName").val();
			var bTitle = $("#bTitle").val();
			var bContents = $("#bContents").val();
			var credat = $("credat").val();

			if (bName == "") {
				alert("이름을 입력하세요");
				document.f1.bName.focus();
				return;
			}

			if (bTitle == "") {
				alert("제목을 입력하세요");
				document.f1.bTitle.focus();
				return;
			}

			if (bContents == "") {
				alert("내용을 입력하세요");
				document.f1.bContents.focus();
				return;
			}
			var param = "bName,bTitle,bContents";
			var au = new AjaxUtil("menutab/board_insert",param);
			au.setCallbackSuccess(callbackWrite);
			au.send();
			
			location.href = "${rootPath}/menutab/knotice";

			function callbackWrite(results) {
				if (results == 0) {
					alert(OMG);
					return;
				} else if (results == 1) {
					location.href = "${rootPath}/menutab/knotice";
					return;
				}
			}

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
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
}
</style>
