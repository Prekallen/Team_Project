<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
	<div id="box">
		<input type="text" id="searchBox"><button id="btn">나와라</button>
	</div>
	<div id="container"></div>
</div>
</body>

<script>
$("#btn").bind("click",function(){
    $.ajax({
        url : "/apitest",
        type: "POST",
        data : { "query" : $("#searchBox").val() },
        success : function(data){
            $("#ajax").remove();
            alert(data);
            if(!data){
                alert("입력해");
                return false;
            }
            var html = '';
            html += '<form class="form-signin" action="" id="ajax">';
            html += '이름<input type="text" class="form-control"  name="name" value="'+data.name+'">';
            html += '주소<input type="text" class="form-control" name="formatted_address" value="'+data.formatted_address+'">';
            html += '레이팅<input type="text" class="form-control"  name="rating" value="'+data.rating+'">';
            html += '</form>';
            $("#container").after(html);
        }
    });

});

</script>
</html>