
<%@page import="com.hxt.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户列表</title>
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/staffmessage.css">
<link rel="stylesheet" type="text/css" href="css/cg.css">
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/framework.js"></script>
<script type="text/javascript">
function selcetE(){
	//添加
	window.location.href="${pageContext.request.contextPath }/order1";
}
</script>
</head>
<body>
<div align="center"><h1>实验列表</h1></div>
<form action="${pageContext.request.contextPath }/experlist" method="post">
	<input type ="submit" value="刷新" style="position: absolute; top:5%;left:90%; height:5%;">
</form>
<input type ="submit" value="预约实验" style="position: absolute; top:5%;left:5%;height:5%;" onclick="javasript:selcetE()">

<table border="1" class="table table-font center" id="table-stan-list"
				 style="top: 15%; left: 5%;width:90%">
			<thead>
				<tr style="height: 3%;background-color:	#B0C4DE">
					<th>实验编号</th>
					<th>实验名称</th>
				   	<th>实验地点</th>
				   	<th>指导老师</th>
				   	<th>具体日期</th>
				   	<th>周数节数</th>
				</tr>
			</thead>
			 <c:if test="${exps.size()!=0}"> 
				<tbody id="tbody">
					<c:forEach items="${exps}" var="p" varStatus="status">
						<tr>
							<td>${p.experiment_id}</td>
							<td>${p.experiment_name}</td>
							<td>${p.lab_id}</td>
							<td>${p.teacher}</td>
							<td>${p.date}</td>
							<td>${p.exact_date}</td>
						</tr>
						 </c:forEach>
				</tbody>
				<script type="text/javascript">
				table_discoloration('#tbody');
				</script>
			 </c:if> 
</table>
</body>
</html>