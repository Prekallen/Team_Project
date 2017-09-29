<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 	<title>빅데이터 맛집추천 맛.zip</title>

</head>
<body>
<c:import url="${topmenu2Url}"/>



<div class="cycle-slideshow"
	cycle-slideshow data-cycle-loader="wait";
	data-cycle-timeout="2000";>
	
	<img src="resources/images/food2.jpeg" width="100%" height="100%">
	<img src="resources/images/food3.jpg" width="100%" height="100%">
	<img src="resources/images/food5.jpg" width="100%" height="100%">
	<img src="resources/images/food6.jpg" width="100%" height="100%">
	<img src="resources/images/food7.jpg" width="100%" height="100%">
	<img src="resources/images/food8.jpg" width="100%" height="100%">
	<img src="resources/images/food9.jpg" width="100%" height="100%">
	<img src="resources/images/food10.png" width="100%" height="100%">
	</div>
	


  <div class="searchBar" id="searchBar">
	<div id="div_new" style="position:absolute; top:100px; left:50%; width:552px; margin-left:-276px; z-index:1;">
		<a href=main2><img src="${rootPath}/resources/image/mainlogo.png" align="center" ></a>
		
		
		
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/search.js?2017082501"></script>
		<div id="search_area">
		<form id="search_form" action="isearch.php"> 
		<div class="hide" id="hidden_wrapper"> 
		<input type="hidden" id="title_onoff" name="rn" value="0"> 
		<input type="hidden" id="page" name="page"> 
		<input type="hidden" id="chunk" name="chunk"> 
		<input type="hidden" id="lat" name="lat"> 
		<input type="hidden" id="lng" name="lng"> 
		</div> 
		
		<div class="container-fluid" id="search_wrapper"> 
		<div class="container-fluid" id="search_input_wrapper">
		<input type="text" id="s_input" name="query" autocomplete="off" value="" placeholder="예: 신분당선 강남역" style="width:500px; height:50px;" />
		<a><img src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/img/ic-search-input.png" id="searchBtn"></a>
		
		<script>
		$("#searchBtn").click(function(){
			location.href = "http://www.naver.com";
		})
		
		</script>
	
		<div id="ms_ext_area" class="clear board" style="width:549px; margin-top:19px;"> 
		<div id="list_area" class="list_area" style="width:549px;">
		</div> 
		</div> 
		</div>
		</div>
		</form>
		</div>
		
		<br/>
		<br/>
		


		<div id="pop_sub_area" align="center">
		<div id="pop_sub_div"> 
		<div class="realtime_keyword" align="center"> 
		<div class="realtime_header" dc-realtime-keyword-modal keyword-list = "[{"ranking":1,"keyword":"\ub86f\ub370\uc6d4\ub4dc \uc810\uc2ec"},
			{"ranking":2,"keyword":"\uc810\uc2ec"},
			{"ranking":3,"keyword":"\uac15\ub989 \ud55c\uc815\uc2dd"},
			{"ranking":4,"keyword":"\ud2f0"},
			{"ranking":5,"keyword":"\uac15\ub0a8 \ud30c\uc2a4\ud0c0"},
			{"ranking":6,"keyword":"\uc815\uc790\uc5ed"},
			{"ranking":7,"keyword":"\uac15\ub0a8\uc5ed \ub9db\uc9d1"},
			{"ranking":8,"keyword":"\ub300\ud559\ub85c \ubcf4\uc308"},
			{"ranking":9,"keyword":"\ub300\uad6c"},
			{"ranking":10,"keyword":"\ub86f\ub370\uc6d4\ub4dc \ud55c\uc2dd"},
			{"ranking":11,"keyword":"\uc0ac\ub2f9\uc5ed \uace0\uae30\uc9d1"},
			{"ranking":12,"keyword":"\uc11c\uc6b8\uc5ed"},
			{"ranking":13,"keyword":"\uc774\ud0dc\uc6d0 \uce74\ud398"},
			{"ranking":14,"keyword":"\ucd08\ubc25"},
			{"ranking":15,"keyword":"\uc7a0\uc2e4\uc5ed \uc810\uc2ec"},
			{"ranking":16,"keyword":"\ud574\uc7a5\uad6d"},
			{"ranking":17,"keyword":"\uac15\ub0a8"},
			{"ranking":18,"keyword":"\uac15\ub0a8\uc5ed \ubdd4\ud398"},
			{"ranking":19,"keyword":"\uac15\ub0a8\uc5ed \uc18c\uac1c\ud305\uc7a5\uc18c"},
			{"ranking":20,"keyword":"\uac74\ub300\uc785\uad6c"},
			{"ranking":21,"keyword":"\ubd80\uc0b0\ub300"},
			{"ranking":22,"keyword":"\uc5ec\uc218 \uac08\uce58\uc870\ub9bc"},
			{"ranking":23,"keyword":"\uc0bc\uccad\ub3d9"},
			{"ranking":24,"keyword":"\uc774\ud0dc\uc6d0 \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":25,"keyword":"\uc11c\uc6b8\ub300\uc785\uad6c"},
			{"ranking":26,"keyword":"\uc885\ub85c \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":27,"keyword":"\uc6a9\uc0b0\uc544\uc774\ud30c\ud06c\ubab0"},
			{"ranking":28,"keyword":"\ud61c\ud654 \uce74\ud398"},
			{"ranking":29,"keyword":"\uc0e4\ub85c\uc218\uae38 \uce74\ud398"},
			{"ranking":30,"keyword":"\uc5ed\uc0bc"}]" title="모두보기"> 
			
			
		<a>실시간 인기 검색어<i class="fa fa-chevron-right"></i></a> 
		
		</div> 
		<div class="realtime_content"> 
		<span id="klist_up" onclick="k_list_up();">
		<i class="fa fa-chevron-up"></i>
		</span> 
		<div id="keyword_table"></div> 
		<span id="klist_down" onclick="k_list_down();">
		<i class="fa fa-chevron-down"></i>
		</span> 
		</div> 
		</div> 
		<div class="realtime_report"> 
		<a href="pop_list.php"> 
		<div class="realtime_header">오늘의 인기 맛집<i class="fa fa-chevron-right"></i>
		</div> 
		</a> 
		<div class="realtime_content"> 
		<span id="rlist_up" onclick="r_list_up();">
		<i class="fa fa-chevron-up"></i>
		</span> 
		<div id="report_table"></div> 
		<span id="rlist_down" onclick="r_list_down();">
		<i class="fa fa-chevron-down"></i>
		</span> 
		</div> 
		</div>
		</div>
		<script>var keyword_list = [{"ranking":1,"keyword":"\ub86f\ub370\uc6d4\ub4dc \uc810\uc2ec"},
			{"ranking":2,"keyword":"\uc810\uc2ec"},
			{"ranking":3,"keyword":"\uac15\ub989 \ud55c\uc815\uc2dd"},
			{"ranking":4,"keyword":"\ud2f0"},{"ranking":5,"keyword":"\uac15\ub0a8 \ud30c\uc2a4\ud0c0"},
			{"ranking":6,"keyword":"\uc815\uc790\uc5ed"},
			{"ranking":7,"keyword":"\uac15\ub0a8\uc5ed \ub9db\uc9d1"},
			{"ranking":8,"keyword":"\ub300\ud559\ub85c \ubcf4\uc308"},
			{"ranking":9,"keyword":"\ub300\uad6c"},
			{"ranking":10,"keyword":"\ub86f\ub370\uc6d4\ub4dc \ud55c\uc2dd"},
			{"ranking":11,"keyword":"\uc0ac\ub2f9\uc5ed \uace0\uae30\uc9d1"},
			{"ranking":12,"keyword":"\uc11c\uc6b8\uc5ed"},
			{"ranking":13,"keyword":"\uc774\ud0dc\uc6d0 \uce74\ud398"},
			{"ranking":14,"keyword":"\ucd08\ubc25"},
			{"ranking":15,"keyword":"\uc7a0\uc2e4\uc5ed \uc810\uc2ec"},
			{"ranking":16,"keyword":"\ud574\uc7a5\uad6d"},
			{"ranking":17,"keyword":"\uac15\ub0a8"},
			{"ranking":18,"keyword":"\uac15\ub0a8\uc5ed \ubdd4\ud398"},
			{"ranking":19,"keyword":"\uac15\ub0a8\uc5ed \uc18c\uac1c\ud305\uc7a5\uc18c"},
			{"ranking":20,"keyword":"\uac74\ub300\uc785\uad6c"},
			{"ranking":21,"keyword":"\ubd80\uc0b0\ub300"},
			{"ranking":22,"keyword":"\uc5ec\uc218 \uac08\uce58\uc870\ub9bc"},
			{"ranking":23,"keyword":"\uc0bc\uccad\ub3d9"},
			{"ranking":24,"keyword":"\uc774\ud0dc\uc6d0 \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":25,"keyword":"\uc11c\uc6b8\ub300\uc785\uad6c"},
			{"ranking":26,"keyword":"\uc885\ub85c \uc218\uc694\ubbf8\uc2dd\ud68c"},
			{"ranking":27,"keyword":"\uc6a9\uc0b0\uc544\uc774\ud30c\ud06c\ubab0"},
			{"ranking":28,"keyword":"\ud61c\ud654 \uce74\ud398"},
			{"ranking":29,"keyword":"\uc0e4\ub85c\uc218\uae38 \uce74\ud398"},
			{"ranking":30,"keyword":"\uc5ed\uc0bc"}];	
		var report_list = [{"rid":"jUfk7PcmWnoq","ranking":"1","rn":"\ud14c\uc774\uc2a4\ud305\ub8f8 ","area":"\uc7a0\uc2e4"},
			{"rid":"i44BaFBDQ8CS","ranking":"2","rn":"\ub85c\uc6b4 ","area":"\uc7a0\uc2e4"},
			{"rid":"aJTk70A8NZD8","ranking":"3","rn":"\ud53c\uc5d0\ud504\ucc3d ","area":"\ub86f\ub370\uc6d4\ub4dc\ubab0"},
			{"rid":"16B50Ua5wfwe","ranking":"4","rn":"\ud574\ub0a8\uc0dd\uc120\uad6c\uc774\uc870\ub9bc ","area":"\uc815\uc790\ub3d9"},
			{"rid":"h3Xp7akHYc0g","ranking":"5","rn":"\uc911\ud3c9\ub5a1\ubcf6\uc774 \ubcf8\uc810","area":"\uc778\uacc4\ub3d9"},
			{"rid":"pXGUJzuH1pQV","ranking":"6","rn":"\uc138\uc601\ub300\uad6c\ud0d5 ","area":"\uc11c\uba74"},
			{"rid":"5GqrgzlpovUh","ranking":"7","rn":"\uc5e0\ud22c ","area":"\uc218\uc6d0\uc5ed"},
			{"rid":"dVp4GRiqmUdt","ranking":"8","rn":"\ud638\uc2dc ","area":"\uc11c\ud604\uc5ed"},
			{"rid":"E9xdhoIQ06nP","ranking":"9","rn":"\uc624\ub385\uc2dd\ub2f9 ","area":"\ub86f\ub370\uc6d4\ub4dc\ubab0"},
			{"rid":"rdFYiqOkpwbH","ranking":"10","rn":"\uc544\ud53c\uc544 ","area":"\uc774\ud0dc\uc6d0"},
			{"rid":"5i4wazMM1I9T","ranking":"11","rn":"\uc2a4\ud14c\ud0a4 ","area":"\uacbd\ub9ac\ub2e8\uae38"},
			{"rid":"oKlOO93NZtmh","ranking":"12","rn":"\uc544\uadf8\ub77c ","area":"\uc7a0\uc2e4"},
			{"rid":"3zCW5Xuib1YW","ranking":"13","rn":"\ud55c\uc77c\uc2dd\ub2f9 ","area":"\uc885\ub85c3\uac00"},
			{"rid":"nUryiJ2LqgLO","ranking":"14","rn":"\ub300\uc7a5\uae08 ","area":"\ub86f\ub370\uc6d4\ub4dc\ubab0"},
			{"rid":"FYadEgI1zgjS","ranking":"15","rn":"\uc7a5\uc4f0\ub3d9 ","area":"\ubb38\uc815\ub3d9"},
			{"rid":"5ZQsrEnVTWVH","ranking":"16","rn":"\uc9c4\uc591\ud638 \ud69f\uc9d1 ","area":"\uad11\uc548\ub9ac"},
			{"rid":"lBqf6ens6F9c","ranking":"17","rn":"\uc624\ud5a5\uac00 ","area":"\uac00\ub77d\ub3d9"},
			{"rid":"74Eot4yl2sgq","ranking":"18","rn":"\uacbd\ubbf8\ub124\uc9d1 ","area":"\uc131\uc0b0\uc77c\ucd9c\ubd09"},
			{"rid":"9vL0qhngP1pG","ranking":"19","rn":"\ubc30\uac00\ub124 \uba78\uce58\uc308\ubc25 ","area":"\ub0a8\ud574"},
			{"rid":"6kSgKfUMc0Rt","ranking":"20","rn":"\uc0bc\uac01\uc9c0\uc655\uc871\ubc1c ","area":""},
			{"rid":"an6dq7P30O57","ranking":"21","rn":"\uce74\ud398\ub4dc\ub77c\ud398 ","area":"\uc11d\ucd0c\ud638\uc218"},
			{"rid":"aQp9WKfzM6PV","ranking":"22","rn":"\ud50c\ub77c\uc789\ubcfc\uc775\uc2a4\ud504\ub808\uc2a4 ","area":"\ub86f\ub370\uc6d4\ub4dc"},
			{"rid":"0EQZVPSM4WWx","ranking":"23","rn":"\uc5b4\ubc18\ub098\ud3f4\ub9ac ","area":"\uc218\uc131\uad6c"},
			{"rid":"2IO4EKBtwJtH","ranking":"24","rn":"\ud1a0\ub9c8\ud2f8\ub85c ","area":"\uc7a0\uc2e4"},
			{"rid":"0yL67zYLioPG","ranking":"25","rn":"\ube0c\ub808\ub4dc05 ","area":"\uc2e0\uae38\ub3d9"},
			{"rid":"9KBLfqeFfJFN","ranking":"26","rn":"\ud074\ub77c\uc6b0\ub4dc \ube44\uc5b4 \uc2a4\ud14c\uc774\uc158 ","area":"\uc7a0\uc2e4"},
			{"rid":"aoQyblbiVs9J","ranking":"27","rn":"\uace0\ub798\ubd88 ","area":"\uc5ed\uc0bc\ub3d9"},
			{"rid":"7Mk4Ye1RbYMH","ranking":"28","rn":"\uc1a1\ud0c4\ubd80\ub300\ucc0c\uac1c ","area":"\uac15\ub0a8\uc5ed"},
			{"rid":"A8ZcFzD3Yfey","ranking":"29","rn":"\uc870\uc740\ub0a0\ud55c\uc815\uc2dd ","area":"\uc0c1\ubb34\uc9c0\uad6c"},
			{"rid":"47AL8wMNvE33","ranking":"30","rn":"\uc655\ub300\ubc15\uc655\uc18c\uae08\uad6c\uc774 ","area":"\uc81c\uc8fc\uc2dc\uccad"}];	
		realtime_position();	
		make_keyword_list(keyword_list);	
		make_report_list(report_list);
		</script>
		</div>
		</div>
		</div>
</body>
</html>
<style>	
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	html, body{
	font-family: 'Hanna', serif;
	width: 100%;
    height: 100%;
    position : relative;
	z-index : 1;
	}
	
	body .cycle-slideshow{
	
	content:"";
	position: absolute;
	top:0;
	background-size: 100%;
	width: 100%;
    height: 100%;
	opacity: 0.6!important;
    filter: alpha(opacity=40);
    z-index: -1;
	}
	
	
	#searchBar{
	text-align : center;
	}
	searchBar.img{
	border : 200px;
	width : 200px;
	height : 200px;
	}
	#searchColumn{
	text-align : center;
	width : 500px;
	height : 50px;
	}
	#searchBtn{
	width:50px; 
	height:50px; 
	background-color:#ff8080;
	cursor : pointer;
	}
	
	

}

	</style>