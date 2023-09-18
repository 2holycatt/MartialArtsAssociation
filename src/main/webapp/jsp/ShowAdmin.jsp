<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>ข้อมูลลูกค้า</h2>
<table border="1">
	<tr>
	<th>รหัส</th>
	<th>ชอืe </th>
	<th>นามสกุล</th>
	</tr>
	<c:forEach items="${adminList}" var="admin">
	<tr>
	<td>${admin.id_administrator}</td>
	<td>${admin.password}</td>
	<td>${admin.username}</td>
	</tr>
	</c:forEach>
	
	
</table>

</body>
</html>