
<%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户界面</title>
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/staffmessage.css">
<link rel="stylesheet" type="text/css" href="css/cg.css">
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js"></script>
<script type="text/javascript">
function out(){
	//alert("我点击按钮了:"+select+select1);
	window.location.href="${pageContext.request.contextPath }/";
}
function password(){
	 //alert("我点击按钮了:");
	  var password = prompt("请输入新密码：","");
	 document.cookie='password'+'='+password;
	 document.cookie='flag'+'=2';
	 window.location.href="${pageContext.request.contextPath }/password"; 
}
</script>
</head>
<body>
<style type="text/css">
.top-logo { /*椤堕儴logo*/
	position: absolute;
	left: 0%;
	top: 0%;
	width: 15%;
	height: 15%;
	display: flex;
	background-size: 100% 100%;
	background-image: url('img/Logo-1.png');
}

.top-photo { /*涓汉璧勬枡*/
	position: absolute;
	left: 89%;
	top: 15%;
	width: 5%;
	height: 50%;
	display: flex;
	background-size: 100% 100%;
	background-image: url('img/timg (1).jpg');
}
.left-background {/* 左边背景图*/
	position: absolute;
	width: 10%;
	height: 92%;
	left: 0%;
	top: 15%;
	background-color: #868586;
	z-index: 100;
}
.top-pass { /*改密*/
	position: absolute;
	left: 95%;
	top: 50%;
	color: #000000;
}
</style>
<script type="text/javascript" src="js/framework.js"></script>
<script type="text/javascript" src="js/charactor.js"></script>
<div class="top-logo"></div>
	<div class="top-background">
		<div class="top-words">湖工大实验室管理系统</div>
		<a href="${pageContext.request.contextPath }/tmessage" class="top-photo"></a> 
		<a href="${pageContext.request.contextPath }/" class="choice top-leave">退出</a>
		<a href="javascript:password();" class="choice top-pass">改密</a>
	</div>
	<div class="left-background">
		<ul>
			<li>
				<a href="${pageContext.request.contextPath }/elabListP" class="menu words-white choice left-0"
					style="top: 0%" id="set1">实验室预约</a> 
				<a href="${pageContext.request.contextPath }/experimentListP" class="menu words-white choice left-0"
				style="top: 5%" id="set2">实验项目</a>
			</li>
		</ul>
	</div>
	<script type="text/javascript">
		menu('set1', '#one');
	</script>
	<div class="page-head">实验室信息</div>
	<div class="other-head">欢迎您，${user_id}</div>
	
		<iframe style="border: solid; position: absolute; top:21%;left:10%; width:90%;height:85%;border-width: 1px"
				src="${pageContext.request.contextPath }/elabList" id="i11">
	    </iframe>
</body>
</html>
