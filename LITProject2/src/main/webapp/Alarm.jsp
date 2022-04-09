<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
		LocalTime now = LocalTime.now();

		

		System.out.println(now);
		
		String sysTime = now.toString().substring(0, 5);
		
		

%>


	<form action = "timerService" method = "post">
		<input name = "setTime" type = "time">
		
		<input type = "submit" value = "제출">
		<input type = "hidden" name = "sysTime" value = "<%= sysTime %>">

	</form>

</body>
</html>