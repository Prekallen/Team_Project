<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="header">
      <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a id="home">HOME</a></li>
          	<li><a id="intro">소개</a></li>
            <li><a id="notice">공지사항</a></li>
            <li><a id="local">지역별</a></li>
            <li><a id="group">종류별</a></li>
            <li><a id="login">로그인</a></li>
          </ul>
          
        </div><!--/.nav-collapse -->
      </div>
      
      
      
</nav> 
<div id="footer_div" style="background-color:#f6f6f6;"> 
			<div id="footer_text"> © 2017 Feedback · 
			<a>Feedback 소개</a> · 
			<a>이용약관</a> · 
			<a>개인정보취급방침</a> · 
			<a>문의</a> 
			</div>
</div>
<script>

$("#home").click(function(){
	pageMove("main2")
});

$("#intro").click(function(){
		pageMove("menutab/intro")
});

$("#local").click(function(){
		pageMove("menutab/local")
});

$("#group").click(function(){
	pageMove("menutab/group")
});

$("#notice").click(function(){
	pageMove("menutab/notice")
});

$("#login").click(function(){
	pageMove("menutab/login")
});

</script>
<style>
	#narvbar ul {
   
    margin: 0;
    padding: 50;
}
	
	#navbar ul li a{
		font-size:25px;
		cursor:pointer;
		color : #FFFFFF;
		
		
	
	}
	#navbar ul li a:hover{
		transition:0.3s;
		color:#ff8080;		
	}
	#navbar ul li:last-child{
		position:absolute;
		right : 0;
	}
</style>
