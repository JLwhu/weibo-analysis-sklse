<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>微搜一下，你就知晓</title>
<style>
html {
	height: 100%;
	overflow-y: auto
}

body {
	font: 12px arial;
	text-align:;
	background: #fff;
	margin: 0;
	padding: 0;
	list-style: none;
	position: relative
}

#wrapper {
	position: relative;
	_position:;
	min-height: 100%
}

#content {
	padding-bottom: 100px;
	text-align: center
}


#m {
	width: 720px;
	margin: 0 auto
}

#fm {
	list-style: none;
	padding-left: 110px;
	text-align: left;
	z-index: 1
}

input {
	border: 0;
	padding: 0
}

.s_ipt_wr {
	width: 418px;
	height: 30px;
	display: inline-block;
	margin-right: 5px;
	background-position: 0 -288px;
	border: 1px solid #b6b6b6;
	border-color: #9a9a9a #cdcdcd #cdcdcd #9a9a9a;
	vertical-align: top
}

.s_ipt {
	width: 405px;
	height: 22px;
	font: 16px/22px arial;
	margin: 5px 0 0 7px;
	background: #fff;
	outline: 0;
	-webkit-appearance: none
}

.s_btn {
	width: 95px;
	height: 32px;
	padding-top: 2px\9;
	font-size: 14px;
	background-color: #ddd;
	background-position: 0 -240px;
	cursor: pointer
}

.s_btn_wr {
	width: 97px;
	height: 34px;
	display: inline-block;
	background-position: -120px -240px;
	*position: relative;
	z-index: 0;
	vertical-align: top
}
}
</style>
</head>
<body>
	<div id="wrapper">
		<div id="content">
			<div id="m">
				<p id="lg">
					<img src="./bdlogo.gif" width="270" height="129">
				</p>
				<div id="fm">
					<form name="f" action="http://localhost:8080/WeiboAnalysis/search.jsp">
						<span class="s_ipt_wr">
							<input type="text" name="keywords" class="s_ipt">
						</span>
						<span class="s_btn_wr">
							<input type="submit" value="微搜一下" class="s_btn">
						</span>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>