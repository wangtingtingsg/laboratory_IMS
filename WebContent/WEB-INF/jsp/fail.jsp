<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/staffmessage.css">
<link rel="stylesheet" type="text/css" href="css/cg.css">
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js">

</script>
<style type="text/css">
.top-login-frame { /*登录框*/
	position: absolute;
	left: 30%;
	top: 25%;
	width: 45%;
	height: 50%;
	background-color: white;
	z-index: -1;
}

.top-login-background { /*登录背景*/
	position: absolute;
	width:100%; 
	height:100%; 
	top: 15%;
	z-index:-2;
	background-image: url('img/login_backgro.jpg');
	background-size: 100% 100%;
}
.login-words { /*顶部字体*/
	font-family: 'Arial Negreta', 'Arial Normal', 'Arial';
	font-weight: 700;
	position: absolute;
	font-size: 28px;
	text-align: left;
	left: 45%;
	top: 15%;
}
.top-words { /*顶部字体*/
	font-family: 'Arial Negreta', 'Arial Normal', 'Arial';
	font-weight: 700;
	position: absolute;
	font-size: 32px;
	text-align: left;
	left: 45%;
	top: 20%;
}
.top-logo { /*椤堕儴logo*/
	position: absolute;
	left: 0%;
	top: 0%;
	width: 15%;
	height: 15%;
	display: flex;
	background-size: 100% 100%;
	background-image: url('img/Logo-1.png');
	z-index:1;
}
.top-background { /*顶部背景图*/
	position: absolute;
	left: 0%;
	top: 0%;
	width: 100%;
	height: 15%;
	background-color: rgba(215, 215, 215, 1);
	z-index: -1;
}
</style>
</head>

<body>
	<div align="center"><h1>用户名或密码错误！</h1></div>
	<form action="${pageContext.request.contextPath}/" method="post">
	 <div align="center"><input  type ="submit" value="返回"></div>
	</form>
</body>
</html>