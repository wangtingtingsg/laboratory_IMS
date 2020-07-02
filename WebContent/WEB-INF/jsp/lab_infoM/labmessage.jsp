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
</head>
<body>
<form action="${pageContext.request.contextPath }/updateLab" method="post">
<div align="center"><h3>实验室信息</h3></div> 

 <div style="position: absolute; top:10%;left:5%;height:20%;">实验室编号：<input type="text" style="width:60%;height:20%;color:gray;" name="lab_id" value="${lab.lab_id}" readOnly="false"/></div>
 <div style="position: absolute; top:10%;left:35%;height:20%;">实验室名称：<input type="text" style="width:60%;height:20%;" name="lab_name" value="${lab.lab_name}"></div>
 <div style="position: absolute; top:10%;left:65%;height:20%;">地点：<input type="text" style="width:60%;height:20%;" name="site" value="${lab.site}" readOnly="false"></div>
 <div style="position: absolute; top:20%;left:5%;height:20%;">状态：<input type="text" style="width:60%;height:20%;color:gray;" name="state" value="${lab.state}" readOnly="false"></div>
 <div style="position: absolute; top:20%;left:35%;height:20%;">负责人：<input type="text" style="width:60%;height:20%;" name="leader" value="${lab.leader}"></div>
 <div style="position: absolute; top:20%;left:65%;height:20%;">备注：<input type="text" style="width:60%;height:20%;" name="remark" value="${lab.remark}"></div>
 
 
<div style="position: absolute;top:80%;left:47%;height:20%;"><input type ="submit"  value="确定"/></div>
</form>
</body>
</html>