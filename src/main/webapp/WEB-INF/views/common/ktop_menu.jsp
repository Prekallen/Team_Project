<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="kheader" >
      <div class="hcontainer" >
       
          <ul class="nav navbar-nav" style="background-color: #ff8080; width:100%;">
          	<li><a id="khome">HOME</a></li> 
          	<li><a id="kintro">소개</a></li>
            <li><a>공지사항</a></li>
            <li><a>지역별</a></li>
            <li><a>종류별</a></li>
            <li>                      </li>
            <li ><input type="text" id="s_input" name="query" autocomplete="off" value="" placeholder="예: 신분당선 강남역" style=" width:250px; height:50px; " /></li>
			<li><img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" id="searchBtn" style="width: 50px; height:50px"></li>
			
            <li><a id="klogin">로그인</a></li>
          </ul>
          
      </div>
      </div>
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
		color : #ff8080;
		background-color : #FFFFFF;
	}
	.hcontainer ul li:last-child{
		position:absolute;
		right:0;
		background-color: #ff8080;
	}
	
	
	
</style>
