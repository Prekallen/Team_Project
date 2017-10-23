<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="kheader" >
      <div class="hcontainer" >
       
          <ul class="nav navbar-nav" style="background-color: #ff8080; width:100%;">
          	<li><a id="mainmemi">HOME</a></li> 
          	<li><a id="kintro">소개</a></li>
            <li><a id="knotice">공지사항</a></li>
            <li><a id="kgroup">종류별</a></li>
            <li><a id="klocal">지역별</a></li>
            <li style="padding-left:300px; padding-top:10px;"><input type="text" id="s_input" name="query" autocomplete="off" value=""  style=" width:250px; height:30px; "/>
            <img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" id="searchBtn" style="width: 30px; height:30px; "></li> 
			 
            <li><a id="klogin">로그인</a></li>
          </ul>
          
      </div>
      </div>
<script>

$("#mainmemi").click(function(){
		pageMove("mainmemi")
});
$("#klogin").click(function(){
	pageMove("menutab/klogin")
});
$("#kintro").click(function(){
	pageMove("menutab/kintro")
});
$("#kgroup").click(function(){
	pageMove("menutab/kgroup")
});
$("#klocal").click(function(){
	pageMove("menutab/klocal")
});
$("#knotice").click(function(){
	pageMove("menutab/knotice")
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
		color : #ff8080;
		background-color : #FFFFFF;
	}
	.hcontainer ul li:last-child{
		position:absolute;
		right:0;
		background-color: #ff8080;
	}
	
	
	
</style>
