<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.hxt.bean.*"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息</title>
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/staffmessage.css">
<link rel="stylesheet" type="text/css" href="css/cg.css">
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript">
</script>
</head>
<body>
<form action="${pageContext.request.contextPath }/updateUser" method="post">
<div align="center"><h3>个人信息</h3></div> 

 <div style="position: absolute; top:10%;left:5%;height:20%;">用户名：<input type="text" style="width:60%;height:20%;color:gray;" name="user_id" value="${lab.user_id}" readOnly="false"/></div>
 <div style="position: absolute; top:10%;left:35%;height:20%;">姓名：<input type="text" style="width:60%;height:20%;" name="user_name" value="${lab.user_name}"></div>
 <div style="position: absolute; top:10%;left:65%;height:20%;">角色：<input type="text" style="width:60%;height:20%;" name="role" value="${lab.role}"></div>
 <div style="position: absolute; top:20%;left:5%;height:20%;">学院：<input type="text" style="width:60%;height:20%;" name="school" value="${lab.school}"></div>
 <div style="position: absolute; top:20%;left:35%;height:20%;">年级：<input type="text" style="width:60%;height:20%;" name="grade" value="${lab.grade}"></div>
 <div style="position: absolute; top:20%;left:65%;height:20%;">班级：<input type="text" style="width:60%;height:20%;" name="uclass" value="${lab.uclass}"></div>
 <div style="position: absolute; top:30%;left:5%;height:20%;">联系方式：<input type="text" style="width:60%;height:20%;" name="contact" value="${lab.contact}"></div>
 
 
<div style="position: absolute;top:80%;left:47%;height:20%;"><input type ="submit"  value="确定"/></div>
</form>
</body>
</html>