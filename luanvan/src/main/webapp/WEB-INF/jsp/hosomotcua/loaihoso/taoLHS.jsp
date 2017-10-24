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
	<script src="<c:url value="/resources/formbuilder.js"/>" type="text/javascript"></script>	
	
    <title>Them moi</title>

	 <style >
	  span{
         display: none;
	}       
	</style> 
	
</head>

    <body>
        <center><h3><p class="classname">Tao Loai ho So Moi</p></h3></center>
       
       <%
       		Loaihoso loaihoso = (Loaihoso)request.getAttribute("taoLHS") ;
       %>
       
      <form:form action = "/luanvan/hosomotcua/saveLHS" modelAttribute="loaihoso" method="POST">
      
            <label> Ma loai ho so: </label> 
			<input type="text" name="MaLHS" placeholder="Nhap ma loai ho so" value="" size="30" />
			<br/>
			<label> Ten loai ho so: </label> 
			<input type="text" name="TenLHS" placeholder="Nhap ten loai ho so" value="" size="30" />
			<br/>
			<label> Trang thai loai ho so: </label> 
			<input type="text" name="TrangthaiLHS" placeholder="Nhap trang thai loai ho so" value="" size="30" />
			
			<br/>
			<div id= "form"></div>
			 <input type="hidden" name="datacn" id="datacn"/>
			 <input type="hidden" name="ChuyennganhLHS" id="ChuyennganhLHS"/>
			 <input type="hidden" name="Tuychon" id="Tuychon"/>
			 <input type="hidden" name="Motaform" id="Motaform"/>
			 
			 <span> <div class="form-control"  id="schema"></div> 
			   <div class="form-control" id="options"></div> </span>
			  
			 <button id="button1" value="Luu lai" onclick="luuForm();">Luu</button>
     </form:form>
    
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
            	$("#Motaform").val(cook);
                $("#form").alpaca(formbuilderConfig);
            });
        
        </script>
        
        <script type="text/javascript">
        function luuForm() {
            document.getElementById("ChuyennganhLHS").value = document.getElementById("schema").value;
            document.getElementById("Tuychon").value = document.getElementById("options").value;
            $("#Motaform").val($.cookie('alpacadata'));
        }
    </script>
    
    </body>
</html>