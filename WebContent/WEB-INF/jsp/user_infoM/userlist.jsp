
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
	window.location.href="${pageContext.request.contextPath }/addUser1";
}
function measures(select1){
	//alert("我点击按钮了:"+select+select1);
	document.cookie='user_id'+'='+select1;
	window.open("${pageContext.request.contextPath }/user_message", " " ,"height=500,width=1000,top=150,left=300,scrollbars=no,location=no" ) ;
	//window.location.href="${pageContext.request.contextPath }/measures";
}
function initialize(select){
	if(confirm("确定要初始化密码吗？")==true){
		//alert("我点击按钮了:"+select+select1);
		document.cookie='lab_id'+'='+select;
		window.location.href="${pageContext.request.contextPath }/initialize";
	}
}

</script>
</head>
<body>
<div align="center"><h1>用户列表</h1></div>
<form action="${pageContext.request.contextPath }/userList" method="post">
	<input type ="submit" value="刷新" style="position: absolute; top:5%;left:90%; height:5%;">
</form>
<input type ="submit" value="添加用户" style="position: absolute; top:5%;left:5%;height:5%;" onclick="javasript:selcetE()">

<table border="1" class="table table-font center" id="table-stan-list"
				 style="top: 15%; left: 5%;width:90%">
			<thead>
				<tr style="height: 3%;background-color:	#B0C4DE">
					<th>用户名</th>
					<th>姓名</th>
				   	<th>角色</th>
				   	<th>学院</th>
				   	<th>年级</th>
				   	<th>班级</th>
				   	<th>联系方式</th>
				   	<th>操作</th>
				</tr>
			</thead>
			 <c:if test="${labs.size()!=0}"> 
				<tbody id="tbody">
					<c:forEach items="${labs}" var="p" varStatus="status">
						<tr>
							<td>${p.user_id}</td>
							<td>${p.user_name}</td>
							<td>${p.role}</td>
							<td>${p.school}</td>
							<td>${p.grade}</td>
							<td>${p.uclass}</td>
							<td>${p.contact}</td>
							<td><input type ="submit" value="管理" onclick="javasript:measures('${p.user_id}')"/>
								<input type ="submit" value="密码初始化" onclick="javasript:initialize('${p.user_id}')"/>
							</td>
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