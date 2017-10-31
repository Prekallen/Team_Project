<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/kheader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>공지사항</title>
</head>

<body>
<div class="kwrap">
<c:import url="${sidemenuUrl}"/>


<ul class="nav-navbar-nav navbar-right"></ul>
<div class="container" style="padding-top:200px;">
	<div class="row">
		<table class="table table-striped" style="text-align:center"; border="1px solid #dddddd">
		
			<thead>
			
				<tr>
					<th style="background-color:#eeeeee; text-align:center;">번호</th>
					<th style="background-color:#eeeeee; text-align:center;">제목</th> 
					<th style="background-color:#eeeeee; text-align:center;">작성자</th> 
					<th style="background-color:#eeeeee; text-align:center;">작성일</th> 
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				<tr>
					<td>noticeNum</td>
					<td>noticeTitle</td>
					<td>noticeName</td>
					<td>noticeTime</td>
				</tr>
				
			</tbody>		
		</table>
			<a href="${rootPath}/menutab/write" class="btn btn-primary pull-right">글쓰기</a>
	</div>
</div>
<div class="btn btn-primary" style="cursor:pointer; " onclick="window.scrollTo(0,0);">TOP</div>


<c:import url="${footerUrl}"/>
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