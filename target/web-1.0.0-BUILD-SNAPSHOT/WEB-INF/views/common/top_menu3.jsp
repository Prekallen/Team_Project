<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="header" >
      <div class="container" >
       
          <ul class="nav navbar-nav" style="background-color: #ff8080; width:100%;">
          	<li><a id="mainmemi2">HOME</a></li> 
          	<li><a id="intro">소개</a></li>
            <li><a id="notice">공지사항</a></li>
            <li><a id="group">종류별</a></li>
            <li><a id="local">지역별</a></li>
            <li style="padding-left:300px; padding-top:10px;"><input type="text" id="s_input" name="query" autocomplete="off" value=""  style=" width:250px; height:30px; "/>
            <img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" id="searchBtn" style="width: 30px; height:30px; "></li> 
			 
            <li><a id="login">로그인</a></li>
          </ul>
          
      </div>
      </div>
<script>

$("#mainmemi2").click(function(){
		pageMove("mainmemi2")
});
$("#login").click(function(){
	pageMove("menutab/login")
});
$("#intro").click(function(){
	pageMove("menutab/intro")
});
$("#group").click(function(){
	pageMove("menutab/group")
});
$("#local").click(function(){
	pageMove("menutab/local")
});
$("#notice").click(function(){
	pageMove("menutab/notice")
});

</script>
<style>
	
	.container ul li a{
		font-size:25px;
		cursor:pointer;
		color : #FFFFFF;
		
		
	}
	.container ul li a:hover{ 
		transition:0.3s;
		color : #ff8080;
		background-color : #FFFFFF;
	}
	.container ul li:last-child{
		position:absolute;
		right:0;
		background-color: #ff8080;
	}
	
	
	
</style>
