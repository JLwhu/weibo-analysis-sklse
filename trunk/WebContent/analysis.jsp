<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>微博分析结果</title>
</head>
<body>
<%

	String weiboID= new String(request.getParameter("weiboID"));
	out.print(weiboID);

%>
</body>
</html>