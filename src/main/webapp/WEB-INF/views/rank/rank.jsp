<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="ranking">2132132132132132
</div>

<script>

$(document).ready(
					function callbackApi(results) {
						if (!results) {
							alert(OMG);
							return;
						}
						var keyWordList = results["keyWordList"];
						var htmlStr = "";
						for (var idx in keyWordList) {
							var ranking = keyWordList[idx];
							var keyword = result.name;
							token = result.next_page_token;
 							htmlStr+= keyword;
						}
						$(".ranking").html(htmlStr);
					});
</script>

</body>
</html>