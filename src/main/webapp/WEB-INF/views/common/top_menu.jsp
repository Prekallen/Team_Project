<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <nav class="header">
      <div class="hcontainer">
       
          <ul class="nav navbar-nav">
          	<li><a id="intro">소개</a></li>
            <li><a>공지사항</a></li>
            <li><a>지역별</a></li>
            <li><a>종류별</a></li>
            <li><a id="login">로그인</a></li>
          </ul>
          
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

$("#intro").click(function(){
		pageMove("menutab/intro")
});
$("#login").click(function(){
	pageMove("menutab/login")
});


</script>
<style>

	
	.hcontainer ul li a{
		font-size:25px;
		cursor:pointer;
		color : #FFFFFF;
		
		
	}
	.hcontainer ul li a:hover{
		transition:0.3s;
		color:#ff8080;		
	}
	.hcontainer ul li:last-child{
		position:absolute;
		right:0;
	}
	
	
</style>
