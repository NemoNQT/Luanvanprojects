<%@ page import="com.luanvan.model.Loaihoso"%>
<%@ page import="com.luanvan.model.Hoso"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>
<html>
<head>


 <link type="text/css" rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
        
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
		<link type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet"/>
		<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
			<!-- alpaca -->
		<link type="text/css" href="http://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.css" rel="stylesheet"/>
		<script type="text/javascript" src="http://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.js"></script>
        
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js" type="text/javascript"></script>


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
	<%
		List<Loaihoso> loaihoso1 = (List<Loaihoso>) request.getAttribute("danhsach");
	%>
	<center><h3><p class="classname">Danh Sach Loai Ho So</p></h3></center>

	<spring:url value="/hosomotcua/addLHS" var="addURL " />
<a href="/luanvan/hosomotcua/addLHS"> Thêm loại hồ sơ</a>
	<br />
	<br />
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th><center>Mã Loại Hồ Sơ</center></th>
				<th><center>Tên Loại Hồ Sơ</center></th>
				<th><center>Trạng thái loại hồ sơ</center></th>
				<th colspan="4"><center>Xuất thủ tục</center></th>
				<th colspan="4"><center>Nộp hồ sơ</center></th>
			</tr>
		</thead>
		<tbody>
			<%
				for (Loaihoso loaihoso : loaihoso1) {
			%>
			<tr>
				<td><center><%=loaihoso.getMaLHS()%></center></td>
				<td><center><%=loaihoso.getTenLHS()%></center></td>
				<td><center><%=loaihoso.getTrangthaiLHS()%></center></td>

			<%-- 	 <td><a href="/luanvan/hosomotcua/updateLHS/<%=loaihoso.getId()%>" >Cap nhat</a></td>
				
				 <td><a href="/luanvan/hosomotcua/deleteLHS/<%=loaihoso.getId()%>" >Xoa</a></td>
				 --%>	
				 <td><center><a href="#"<%=loaihoso.getId()%>" >Thủ Tục</a></center></td>
				 
				   <td colspan="6"><center><a href="/luanvan/hosomotcua/createHS/<%=loaihoso.getId()%>" > <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></center></td>
				 	 	
			</tr>
			<%}%>
			
		</tbody>
	</table>
	
	<br />
       <script type="text/javascript">
            $(document).ready(function() {
            	var alpacadata = {};
            	var cook = $.cookie('alpacadata');
            	if (typeof(cook) != "undefined" && cook){
            		alpacadata = JSON.parse(cook);
            		formbuilderConfig.data = alpacadata;	                
				    showForm(alpacadata);
            	}
                $("#form").alpaca(formbuilderConfig);
            });
        </script>
</body>
</html>