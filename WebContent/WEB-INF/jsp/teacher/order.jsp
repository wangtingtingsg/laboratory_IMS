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
<script type="text/javascript">
function isExist(isExist){
	if(isExist==1){
		alert("编号重复！请重新添加");
	}
}
</script>
</head>
<body onload="isExist('${isExist}')">
<form action="${pageContext.request.contextPath }/addexper" method="post">
<div align="center"><h3>预约信息</h3></div>
 <div style="position: absolute; top:10%;left:5%;height:20%;">实验编号：<input type="text" style="width:60%;height:20%;color:gray;" name="experiment_id" /><font color="red">*必填</font></div>
 <div style="position: absolute; top:10%;left:35%;height:20%;">实验名称：<input type="text" style="width:60%;height:20%;" name="experiment_name" ><font color="red">*必填</font></div>
 <div style="position: absolute; top:10%;left:65%;height:20%;">具体日期：<input type="text" style="width:60%;height:20%;" name="date" ><font color="red">*必填</font></div>
 <div style="position: absolute; top:20%;left:5%;height:20%;">周数节数(示例：18周，周二，1-2节)：<input type="text" style="width:60%;height:20%;" name="exact_date"><font color="red">*必填</font></div>
 
 
<div style="position: absolute;top:80%;left:47%;height:20%;"><input type ="submit"  value="确定"/></div>
</form>
</body>
</html>