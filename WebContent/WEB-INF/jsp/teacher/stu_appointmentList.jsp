
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
function measures(select1){
	document.cookie='experiment_id'+'='+select1;
	window.open("${pageContext.request.contextPath }/stu_appointList", " " ,"height=500,width=1000,top=150,left=300,scrollbars=no,location=no" ) ;
	//window.location.href="${pageContext.request.contextPath }/measures";
}
</script>
</head>
<body>
<div align="center"><h1>我的实验列表</h1></div>
<form action="${pageContext.request.contextPath }/stu_appointList" method="post">
	<input type ="submit" value="刷新" style="position: absolute; top:5%;left:90%; height:5%;">
</form>
<form action="${pageContext.request.contextPath }/stu_score" method="post">
<table border="1" class="table table-font center" id="table-stan-list"
				 style="top: 15%; left: 5%;width:90%">
			<thead>
				<tr style="height: 3%;background-color:	#B0C4DE">
					<th>学生编号</th>
				   	<th>学生姓名</th>
				   	<th>分数</th>
				   	<th>说明</th>
				</tr>
			</thead>
			 <c:if test="${labs.size()!=0}"> 
				<tbody id="tbody">
					<c:forEach items="${labs}" var="p" varStatus="status">
						<tr>
							<td>${p.student_id}</td>
							<td>${p.user_name}</td>
							<td><input type="text" style="width:100%;height:22%;background-color:transparent;border:0;" name="${p.student_id}score" value="${p.score}"></td>
							<td><input type="text" style="width:100%;height:22%;background-color:transparent;border:0;" name="${p.student_id}explan" value="${p.explan}"></td>
						</tr>
						 </c:forEach>
				</tbody>
				<script type="text/javascript">
				table_discoloration('#tbody');
				</script>
			 </c:if> 
</table>
<div style="position: absolute;top:80%;left:47%;height:20%;"><input type ="submit"  value="确定"/>
</form>
</body>
</html>