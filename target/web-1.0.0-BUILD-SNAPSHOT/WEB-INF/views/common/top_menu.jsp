<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <nav class="header">
      <div class="hcontainer">
       
          <ul class="nav navbar-nav">
          	<li><a id="khome">HOME</a></li>
          	<li><a id="kintro">소개</a></li>
            <li><a>공지사항</a></li>
            <li><a>지역별</a></li>
            <li><a>종류별</a></li>
            <li><a id="klogin">로그인</a></li>
          </ul>
          
      </div>
      </nav>
<script>

$("#khome").click(function(){
		pageMove("main")
});
$("#klogin").click(function(){
	pageMove("menutab/klogin")
});
$("#kintro").click(function(){
	pageMove("menutab/kintro")
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
