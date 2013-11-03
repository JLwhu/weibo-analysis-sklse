<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.util.List" %> 
<%@ page language="java" import="weibo.*" %> 
<%@ page language="java" import="weibo4j.model.*" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索结果</title>
</head>
<body>
<%
	
	String keywords= new String(request.getParameter("keywords").getBytes("ISO8859-1"));
	System.out.println(keywords);
	
	SinaLogin weiboLogin = new SinaLogin();
	List<WeiboIDs> weiboID = weiboLogin.getWeiboIDs(keywords);
	//System.out.println(weiboID);
	//session.setAttribute("weiboID", weiboID);
	
	//String access_token = "2.00dDNtkB57L85E3c98a7914aTzxrlC";
	//Timeline tm = new Timeline();
	//tm.client.setToken(access_token);
	
	List<Status> weibo = weiboLogin.getWeibo(weiboID);
	//String id = weiboID.get(0).getId();
	//Status status = weibo.get(0);
	
	session.setAttribute("weibo", weibo);
	//session.setAttribute("temp", status);
	//System.out.println(weibo);
%>

	<table width="90%" align="center">
		<thead>
		  <tr>
		    <td>序号</td>
		    <td>用户名</td>
		    <td>微博ID</td>
		    <td>创建时间</td>
		    <td>微博内容</td>
		    <td>转发数</td>
		    <td>评论数</td>
		   </tr>
		</thead>
		<tbody>
			<c:forEach var="weibo" items="${weibo}" varStatus="status">
			<tr>
				<td>${status.index+1}</td>
				<td>${weibo.user.screenName}</td>
				<td>
				<a href="http://localhost:8080/WeiboAnalysis/analysis.jsp?weiboID=${weibo.id}">${weibo.id}</a>
				</td>
				<td>${weibo.createdAt}</td>
				<td>${weibo.text}</td>
				<td>${weibo.repostsCount}</td>
				<td>${weibo.commentsCount}</td>
		
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>