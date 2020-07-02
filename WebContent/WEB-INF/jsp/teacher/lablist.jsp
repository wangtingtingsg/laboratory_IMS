
<%@page import="com.hxt.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%><%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>实验室列表</title>
<link rel="stylesheet" type="text/css" href="css/framework.css">
<link rel="stylesheet" type="text/css" href="css/staffmessage.css">
<link rel="stylesheet" type="text/css" href="css/cg.css">
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/framework.js"></script>
<script type="text/javascript">
function order(select1){
	//alert("我点击按钮了:"+select+select1);
	document.cookie='lab_id'+'='+select1;
	window.open("${pageContext.request.contextPath }/experlist", " " ,"height=500,width=1000,top=150,left=300,scrollbars=no,location=no" ) ;
	//window.location.href="${pageContext.request.contextPath }/measures";
}
</script>
</head>
<body>
<div align="center"><h1>实验室列表</h1></div>
<form action="${pageContext.request.contextPath }/elabList" method="post">
	<input type ="submit" value="刷新" style="position: absolute; top:5%;left:90%; height:5%;">
</form>

<table border="1" class="table table-font center" id="table-stan-list"
				 style="top: 15%; left: 5%;width:90%">
			<thead>
				<tr style="height: 3%;background-color:	#B0C4DE">
					<th>实验室编号</th>
					<th>名称</th>
				   	<th>地点</th>
				   	<th>状态</th>
				   	<th>负责人</th>
				   	<th>备注</th>
				   	<th>操作</th>
				</tr>
			</thead>
			 <c:if test="${labs.size()!=0}"> 
				<tbody id="tbody">
					<c:forEach items="${labs}" var="p" varStatus="status">
					<c:if test="${p.state=='使用'}">
						<tr>
							<td>${p.lab_id}</td>
							<td>${p.lab_name}</td>
							<td>${p.site}</td>
							<td>${p.state}</td>
							<td>${p.leader}</td>
							<td>${p.remark}</td>
							<td><input type ="submit" value="预约" onclick="javasript:order('${p.lab_id}')"/>
							</td>
						</tr>
						</c:if>
						 </c:forEach>
				</tbody>
				<script type="text/javascript">
				table_discoloration('#tbody');
				</script>
			 </c:if> 
</table>
</body>
</html>