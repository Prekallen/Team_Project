<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>공지사항</title>
</head>

<body>
<div class="wrap">
<c:import url="${topmenu3Url}"/>

<br/>
<br/>

<h3 align="center">맛.zip 공지사항</h3>

<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/js/jquery.twbsPagination.min.js?2017082501"></script>

<link type="text/css" rel="stylesheet" href="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/menu/css/board.list.css?2017082501" />

<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/menu/js/board.list.js?2017082501"></script>

<div id="listArea" ng-app="listApp" ng-controller="listCtrl">
        <ul id="articleList">
    <li class="article">
        <div class="article-text">
            <div class="article-title text-ellipsis"><a href="notice.php?id=0vw6BCfNiHjk">맛.zip 개인정보 취급방침 변경 2017.09.28</a></div>
            <div class="article-content">안녕하세요 맛.zip 입니다.
            프로젝트 힘드렁 집에보내죠~.~...</div>
        </div>
        <div class="article-photo"><a href="notice.php?id=0vw6BCfNiHjk">
        </a></div>
        <div class="article-date">2017-08-23</div>
        <div class="article-stat">
            <div class="article-fvr"><div></div><span>0</span></div>
            <div class="article-comment"><div></div><span>1</span></div>
        </div>
    </li>
    
    <li class="article">
        <div class="article-text">
            <div class="article-title text-ellipsis"><a href="notice.php?id=qase8YSQNqN1">맛.zip 개인정보 취급방침 변경</a></div>
            <div class="article-content">안녕하세요. 맛.zip입니다.
회원 여러분들께 보다 정확하고 신뢰도 높은 맛집정보를 제공해드리기 위해
아래와 같이 개인정보 취급방침이 6월 16일부로 일부 개정되었습니다. 
이에 이용약관 개정에 대한 주요 내용을 안...</div>
        </div>
        <div class="article-photo"><a href="notice.php?id=qase8YSQNqN1">
        </a></div>
        <div class="article-date">2017-06-23</div>
        <div class="article-stat">
            <div class="article-fvr"><div></div><span>0</span></div>
            <div class="article-comment"><div></div><span>0</span></div>
        </div>
    </li>
    
    <li class="article">
        <div class="article-text">
            <div class="article-title text-ellipsis"><a href="notice.php?id=gcU615lsel8J">맛.zip 점수체계 변경</a></div>
            <div class="article-content">안녕하세요. 맛.zip입니다.
회원 여러분께서 다이닝코드를 보다 편리하고 유용하게 이용하실 수 있도록
아래와 같이 다이닝코드 점수체계를 변경하였습니다.

기존 : 200점 만점
변경 : 100점 만점 

변경된 맛.zip...</div>
        </div>
        <div class="article-photo"><a href="notice.php?id=gcU615lsel8J">
        </a></div>
        <div class="article-date">2017-05-25</div>
        <div class="article-stat">
            <div class="article-fvr"><div></div><span>1</span></div>
            <div class="article-comment"><div></div><span>0</span></div>
        </div>
  

      

<script type="text/javascript">

$(document).ready(function(){
    $('#pagination').twbsPagination({
        totalPages: parseInt(1),
        startPage: parseInt(1),
        visiblePages: parseInt(10),
        first:'<<',
        last:'>>',
        prev:'<',
        next:'>',
        href: '?page={{number}}',
        onPageClick: function(event, page){
            
        }
    });
});
</script>


</body>
</html>

<c:import url="${footerUrl}"/>
</div>
</body>
</html>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	body {
	font-family: 'Hanna', serif;
	margin: 0;
	height: 100%;
	}
	html {
	height: 100%;
	}
	.wrap {
	min-height: 100%;
	position: relative;
	padding-bottom: 30px; /* footer height */
	}
		

</style>