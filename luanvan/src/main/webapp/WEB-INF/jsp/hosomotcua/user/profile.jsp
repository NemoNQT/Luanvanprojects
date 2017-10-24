<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<!-- bootstrap -->
<link type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- alpaca -->
<link type="text/css" href="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.js"></script>
<!-- ------------------- -->
<title> Trang thông tin cá nhân</title>
<link href="<c:url value="/resources/header/css/menu.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
	<form:form class="form-horizontal" method="POST"
	modelAttribute="account" action="/luanvan/hosomotcua/profile">
	<form:hidden path="id"/>
	<form:hidden path="username"/>
	
	<table>
	<tr>
	<td> Họ Tên</td>
		<td> 
		<form:input path="Hoten"/>
	</td>
	</tr>
	</tr>
	<tr>
	<td> password</td>
		<td> 
		<form:password  name="password" path="password"/>
	</td>
	</tr>
	</tr>
	
		<form:hidden path="Ngaysinh"/>
	<tr>
	<td> Số điện thoại</td>
		<td> 
		<form:input path="Sodt"/>
	</td>
	</tr>
	<tr>
		<td> Địa Chỉ Thường Trú</td>
		<td> <form:input path="DiachiHT"/></td>
	</tr>
	<tr>
	<td> Địa chỉ Tạm Trú</td>
		<td> 
		<form:input path="DiachiTT"/>
	</td>
	</tr>
	
	<tr>
	<td> SoCMND</td>
		<td> <form:input path="SoCMND"/>
	</td>
	</tr>
		<tr>
	<td> Nơi cấp CMND</td>
		<td> 
			<form:input path="NoicapCMND"/>
		</td>
	</tr>
	
	<tr>
	<td> Ngày cấp CMND</td>
	<td><form:input path="NgaycapCMND" class="date-picker"/></td>
	
	</tr>
	
	<tr>
	<td> Email</td>
		<td> 
		<form:input path="Email"/>
	</td>
	</tr>
	<tr>
	<td> Dân Tộc</td>
		<td> 
		<form:input path="Dantoc"/>
	</td>
	</tr>
	<tr>
	<td> Quốc Tịch</td>
		<td>
		<form:input path="Quoctich"/>
	</td>
	</tr>
	<tr>
	<td> Gioitinh</td>
		<td> 
		<form:input path="Gioitinh"/>
	</td>
	</tr>
	<tr>
	<td> &nbsp;</td>
	<td> 
	<input type="submit" value="save" />
	</td>
	</tr>
	</table>
	</form:form>
</body>
</html>