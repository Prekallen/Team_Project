<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>MAIN</title>
<body>
</body>
<script>
<%
session.invalidate();
String  req = request.getHeader("REFERER");
response.sendRedirect(req);
%>
</script>