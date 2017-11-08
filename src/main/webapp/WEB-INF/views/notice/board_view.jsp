<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/side_menu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>${bi.bTitle }</title>
</head>

<body>


	<div class="kwrap">

		<form name="f1" action="${rootPath }/notice/board_list">
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

							<tr>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th><input type="text" value="${bi.bTitle }"></th>
							</tr>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">내용</th>
								<th><input type="text" value="${bi.bContents }"></th>
							</tr>
						</thead>
					</table>

					<input type="button" value="수정" onclick="modifyBoard()" /> 
					<input type="button" value="삭제" onclick="deleteBoard()" /> 
					<input type="button" value="목록" onclick="boardList()" />
				</div>
			</div>
		</form>

		<div class="btn btn-primary" style="cursor: pointer;"
			onclick="window.scrollTo(0,0);">TOP</div>

		<c:import url="${footerUrl}" />
	</div>
	<script>
		function boardList() {
			location.href = "${rootPath}/notice/board_list";
		}
		function modifyBoard() {

			location.href = "${rootPath}/notice/board_list";
		}
		function deleteBoard() {
			location.href = "${rootPath}/notice/board_list";
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
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
}
</style>
