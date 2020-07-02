<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.hxt.bean.*"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>实验室信息</title>
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/staffmessage.css">
<link rel="stylesheet" type="text/css" href="css/cg.css">
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript">
</script>
<script type="text/javascript">
function isExist(isExist){
	if(isExist==1){
		alert("账号重复！请重新添加");
	}
}
</script>
</head>
<body onload="isExist('${isExist}')">
<form action="${pageContext.request.contextPath }/addUser" method="post">
<div align="center"><h3>添加用户</h3></div> 

<div style="position: absolute; top:10%;left:5%;height:20%;">账号：<input type="text" style="width:133px;height:20%;" name="user_id" /><font color="red">*必填</font></div>
 <div style="position: absolute; top:10%;left:35%;height:20%;">姓名：<input type="text" style="width:133px;height:20%;" name="user_name"><font color="red">*必填</font></div>
 <div style="position: absolute; top:10%;left:65%;height:20%;">角色：
 <select name="role" style="width:133px;height:25px;">
	<option value="教师">教师</option>
	<option value="学生" >学生</option>
</select>
<font color="red">*必填</font>
</div>
 <div style="position: absolute; top:20%;left:5%;height:20%;">学院：<input type="text" style="width:133px;height:20%;" name="school" ></div>
 <div style="position: absolute; top:20%;left:35%;height:20%;">年级：<input type="text" style="width:133px;height:20%;" name="grade"></div>
 <div style="position: absolute; top:20%;left:65%;height:20%;">班级：<input type="text" style="width:133px;height:20%;" name="uclass" ></div>
 <div style="position: absolute; top:30%;left:5%;height:20%;">联系方式：<input type="text" style="width:133px;height:20%;" name="contact" ></div>
 
<div style="position: absolute;top:60%;left:47%;height:20%;"><input type ="submit"  value="确定"/></div>
</form>
</body>
</html>