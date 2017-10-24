<%@ page import="com.luanvan.model.Loaihoso"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>
<html>
<head>
	
	 <!-- jquery -->
		<script src="<c:url value="/resources/thuvien/jquery_min.js"/>" type="text/javascript" > </script>
		<script src="<c:url value="/resources/thuvien/handlerbars_min.js"/>" type="text/javascript" > </script>
		<script src="<c:url value="/resources/thuvien/jquery_cookie.js"/>" type="text/javascript" > </script>
	<!-- bootstrap -->
		<script src="<c:url value="/resources/thuvien/bootstrap_min.js"/>" type="text/javascript" > </script>
		<link href="<c:url value="/resources/thuvien/bootstrap.min.css" />" rel="stylesheet">	
	<!-- alpaca -->
		<link href="<c:url value="/resources/thuvien/alpaca_min.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/thuvien/alpaca_min.js"/>" type="text/javascript" > </script>
	
<!-- ************* -->
	<link href="<c:url value="/resources/formbuilder.css" />" rel="stylesheet">	
	<script src="<c:url value="/resources/formbuilder.js"/>" type="text/javascript" > </script>
</head>

<body>

	<% Loaihoso loaihoso = (Loaihoso)request.getAttribute("hienthiLHS"); %>	
	<center><h3><p class="classname">Ho So <%=loaihoso.getTenLHS() %></p></h3></center>

	<h4>Ma loai ho so: <%= loaihoso.getMaLHS() %></h4>
	<h4>Trang thai loai ho so: <%= loaihoso.getTrangthaiLHS()%></h4>
	<div id= "loaiHS"></div>

	<script type="text/javascript">
		$(document).ready(function() {
		var schema = <%=loaihoso.getChuyennganhLHS()%>
		var options = <%=loaihoso.getTuychon()%>
		$("#loaiHS").alpaca({
				"schema" : schema,
				"options" : options
			});
		});
	</script>

</body>
</html>