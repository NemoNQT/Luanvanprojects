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
	
	 <style >
	  span{
         display: none;
	}       
	</style> 
</head>
<body>
        <center><h3><p class="classname">Cap nhat Form</p></h3></center>
       
       <% Loaihoso loaihoso = (Loaihoso)request.getAttribute("capnhatLHS"); %>
       
      <form:form action = "/luanvan/hosomotcua/saveLHS" modelAttribute="loaihoso" method="POST">
      
            <label> Ma loai ho so: </label> 
			<input type="text" name="MaLHS" value="<%=loaihoso.getMaLHS()%>" size="30" />
			<br/>
			<label> Ten loai ho so: </label> 
			<input type="text" name="TenLHS"  value="<%=loaihoso.getTenLHS() %>" size="30" />
			<br/>
			<label> Trang thai ho so: </label> 
			<input type="text" name="TrangthaiLHS"  value="<%=loaihoso.getTrangthaiLHS() %>" size="30" />
			<br/>

			 <div id= "loaiHS"></div>
			 
			 <input type="hidden" name="id" id="id" value= "<%=loaihoso.getId()%>"/>
			 <input type="hidden" name="ChuyennganhLHS" id="ChuyennganhLHS" value= "<%=loaihoso.getChuyennganhLHS()%>"/>
			 <input type="hidden" name="Tuychon" id="Tuychon" value="<%=loaihoso.getTuychon()%>"/>
			 <input type="hidden" name="Motaform" id="Motaform" value="<%=loaihoso.getMotaform()%>"/>
			 
			 <span> <div class="form-control"  id="schema"></div> 
			  <div class="form-control"  id="options"></div> </span>
			   
			 <button class="btn btn-primary" id="button2" value="Luulai" onclick="capNhat();">Luu</button>
     	</form:form>

        <script type="text/javascript">
       	$(document).ready(function() {
       		var alpacadata = <%=loaihoso.getMotaform()%>;
       		formbuilderConfig.data = alpacadata;
             $("#loaiHS").alpaca(formbuilderConfig);
           }); 
        </script>
        
       <%--  <script type="text/javascript">
     	$(document).ready(function() {
       		var alpacadata = <%= form.getField() %>;
       		formbuilderConfig.data = alpacadata;
             $("#form1").alpaca(formbuilderConfig);
           }); 
        </script> --%>
       
         <script type="text/javascript">
	        function capNhat() {
	            document.getElementById("ChuyennganhLHS").value = document.getElementById("schema").value;
	            document.getElementById("Tuychon").value = document.getElementById("options").value;
	            $("#Motaform").val($.cookie('alpacadata')); 
	        }
    	</script>
    </body>
</html>