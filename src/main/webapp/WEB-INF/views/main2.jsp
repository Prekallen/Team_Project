<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="pVar" value="1.3.6"/>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<c:set var="nowUrl" value="${pageContext.request.requestURI}"/>
<script src="<c:url value="/resources/js/jquery-3.2.1.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.fileupload.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/js/jquery.iframe-transport.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap.min.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>
<script src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-theme.min.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap.min.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-table.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/common.css?version=${pVar}"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/ui/signin.css?version=${pVar}" />"/>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${rootPath}/main.jsp">맛.zip소개</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/board/board_select.jsp">공지사항</a></li>
            <li><a href="/user/user_info.jsp">지역별</a></li>
            <li><a>종류별</a></li>
            <li><a href="/user/logout">로그인</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
      </nav>
      
      <link href='https://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>

<div class="container">
  <div class="overlay" onload="JavaScript:timedRefresh(5000);">
    <h1>A blurred overlay</h1>
    <p>... mask or whatever<br>that is responsive and could be cross-browser compatible back to IE9</p>
  </div>
</div>
    <script type="text/JavaScript">
    
    	function timedRefresh(timeoutPeriod) {
    	    setTimeout("location.reload(true);",timeoutPeriod);
    	}
    </script> 

</body>
</html>
<style>	
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	*{margin:0; padding:0; border:none;}
	body
	{font-family: 'Jeju Gothic', serif;
	background-image:url('resources/images/food2.jpeg');
	background-repeat: no-repeat;
	background-size: cover;}
	
	html, body, .container {
  width: 100%;
  height: 100%;
}

.container,
.overlay:before {
  background: url(https://unsplash.it/1920/1080/?random) no-repeat fixed 0 0 / cover;
}


.container {
  align-items: center;
  display: flex;
  justify-content: center;
}

.overlay {
  max-height: 200px;
  margin: 0 auto;
  max-width: 768px;
  overflow: hidden;
  padding: 50px;
  position: relative;
  color: white;
  font-family: 'Lato';
  position: relative;
  text-align: center;
  z-index: 0;
  &:before {
    content: '';
    filter: blur(20px);
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: -1;
  }
}



	</style>