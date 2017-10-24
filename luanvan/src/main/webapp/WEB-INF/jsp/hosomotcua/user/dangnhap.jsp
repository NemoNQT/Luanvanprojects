<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<html>
<head>
<!-- Phần không chỉnh sửa -->
<!-- dependencies (jquery, handlebars and bootstrap) -->
<script type="text/javascript" src="<c:url value="/resources/thuvien/jquery_min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/thuvien/handlerbars_min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/thuvien/jquery_cookie.js" />"></script>
	<!-- bootstrap -->
<link type="text/css" 	href="<c:url value ="/resources/thuvien/bootstrap.min.css"/>" rel="stylesheet">
<script type="text/javascript" src="<c:url value="/resources/thuvien/bootstrap_min.js" />"></script>
<link type="text/css" href="<c:url value="/resources/thuvien/bootstrap-theme_min.css"/>" rel="stylesheet">
<!-- alpaca -->
<link type="text/css"  href="<c:url value ="/resources/thuvien/alpaca_min.css"/>" rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/thuvien/alpaca_min.js" />"></script>
<title> TRANG ĐĂNG NHẬP </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="<c:url value="/resources/header/css/homepage.css" />" rel="stylesheet">
</head>
<body>
	<%-- <form:form class="form-horizontal" modelAttribute="account" action="/luanvan/hosomotcua/actionlogin" method="POST">
	
	<div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Tên đăng nhập</label>
    <div class="col-sm-10">
    	<form:input type="text"  path="username" class="form-control" />
    </div>	 n
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
    	<form:password   path="password" class="form-control" />
    </div>
  </div>
<div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success" value="Login">Đăng Nhập</button>
      
    </div>
  </div>
  	<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10"><a href="/luanvan/hosomotcua/dangky"> Đăng Ký</a></div>
    
  </div>
  
	</form:form>
	 --%>
<div id="login"></div>
  <script type="text/javascript">
  $("#login").alpaca({
	    "data": "",
	      	    
	    "schema": {
	        "title": "Đăng Nhập",
	        "type": "object",
	        "properties": {
	            "username": {
	                "title": "username",
	                "type": "string",
	                "required":true,
	                "pattern":"^[a-zA-Z0-9_]+$"
	            },
	            "password": {
	                "title": "Password",
	                "type": "string",
	                "required":true,
	                "pattern":"^[a-zA-Z0-9_]+$"
	            }
	        }
	    },
	   	"options": {
	   		"renderForm": true,
	        "form": {
	            "attributes": {
	                "action": "/luanvan/hosomotcua/tien-hanh-dang-nhap",
	                "method": "POST"
	            },
	            "buttons": {
		            	"validate": {
		                    "title": "Validate and view JSON!",
		                    "click": function() {
		                        this.refreshValidationState(true);
		                        if (this.isValid(true)) {
		                            var value = this.getValue();
		                            alert(JSON.stringify(value, null, "  "));
		                        }
		                    }
		                },
		                "submit": {
		                	"title":"Đăng Nhập"
		                },
		                "reset": {
		                	"title":"Nhập Lại"
		                
		                },
		                "dangky": {
		               		"title":"Đăng Ký",
		               		"link":"/luanvan/hosomotcua/dang-ky"
		                }
	            	    
	            }
	        },
	        "fields":{
	           "username":{
	        	"size": 30,
	        	"label": "Tên Đăng Nhập"
	                      },
	           "password":{
	        	"type":"password",
	        	"size":30,
	        	"label":"Mật Khẩu"
	                       }
	        }
	    },
	    "postRender": function(renderedField) {
	        var form = renderedField.form;
	        if (form) {
	            form.registerSubmitHandler(function(e) {
	                return (renderedField.isValid(true));
	            });
	        }
	    }
	});
  </script></div>
    <a href="/luanvan/hosomotcua/dang-ky"> Đăng Ký </a>
  
</body>
</html>



