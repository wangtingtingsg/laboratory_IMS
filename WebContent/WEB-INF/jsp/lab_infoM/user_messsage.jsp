
<%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息</title>
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/staffmessage.css">
<link rel="stylesheet" type="text/css" href="css/cg.css">
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js">
</script>
<script type="text/javascript">
function password(){
	 //alert("我点击按钮了:");
	  var password = prompt("请输入新密码：","");
	 document.cookie='password'+'='+password;
	 document.cookie='flag'+'=1';
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
		<a href="${pageContext.request.contextPath }/message" class="top-photo"></a> 
		<a href="${pageContext.request.contextPath }/" class="choice top-leave">退出</a>
		<a href="javascript:password();" class="choice top-pass">改密</a>
	</div>
	<div class="left-background">
		<ul>
			<li>
				<a href="${pageContext.request.contextPath }/labListP" class="menu words-white choice left-0"
					style="top: 0%" id="set1">实验室信息管理</a> 
				<a href="${pageContext.request.contextPath }/userListP" class="menu words-white choice left-0"
				style="top: 5%" id="set2">用户信息管理</a>
			</li>
		</ul>
	</div>
	<script type="text/javascript">
		menu('set1', '#one');
	</script>
	<div class="page-head">个人信息</div>
	<div class="other-head">欢迎您，${user_id}</div>
	 <div style="position: absolute; top:40%;left:25%;height:20%;">用户名：${user.user_id}</div>
	 <div style="position: absolute; top:40%;left:45%;height:20%;">姓名：${user.user_name}</div>
	 <div style="position: absolute; top:40%;left:65%;height:20%;">角色：${user.role}</div>
	 <div style="position: absolute; top:50%;left:25%;height:20%;">学院：${user.school}</div>
	 <div style="position: absolute; top:50%;left:45%;height:20%;">年级：${user.grade}</div>
	 <div style="position: absolute; top:50%;left:65%;height:20%;">班级：${user.uclass}</div>
	 <div style="position: absolute; top:60%;left:25%;height:20%;">联系方式：${user.contact}</div>
</body>
</html>
