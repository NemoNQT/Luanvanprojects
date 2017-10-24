<html>
<%@page import="com.luanvan.model.User"%>
<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>
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
<!-- Phần không chỉnh sửa------------------- -->
<title> TRANG CHỦ DỊCH VỤ CÔNG TRỰC TUYẾN</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="<c:url value="/resources/header/css/homepage.css" />"
 rel="stylesheet">
	
</head>
<body>  
    
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="/luanvan">Trang Chủ</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse container" id="bs-example-navbar-collapse-1" >
      <ul class="nav nav-tabs">
      <li class="nav navbar-form col-sm-2" ><a href="/luanvan/hosomotcua/gioi-thieu">GIỚI THIỆU<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form col-sm-2"><a href="/luanvan/hosomotcua/thu-tuc-hanh-chinh">THỦ TỤC HÀNH CHÍNH<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form col-sm-2"><a href="/luanvan/hosomotcua/huong-dan">HƯỚNG DẪN NỘP HỒ SƠ<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form col-sm-2"><a href="/luanvan/hosomotcua/thong-ke"> THỐNG KÊ DỊCH VỤ CÔNG<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form col-sm-1"><a  href="/luanvan/hosomotcua/dang-ky"><span class="glyphicon glyphicon-user"></span> Đăng Ký</a></li>
        <li class="nav navbar-form col-sm-1"><a href="/luanvan/hosomotcua/dang-nhap"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
        </ul>
 <div class="jumbotron">
  <h1>CUỘC SỐNG THUẬN TIỆN HƠN</h1>
  <p><h3>Hệ thống dịch vụ công trực tuyến, là giải pháp cho bạn</h3></p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">Liên hệ</a></p>
</div>
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <ul class="nav nav-tabs">
  <li class="nav navbar-form col-sm-3"><a href="#">Hướng dẫn sử dụng</a></li>
  <li class="nav navbar-form col-sm-3"><a href="/luanvan/hosomotcua/dang-ky">Đăng ký tài khoản</a></li>
  <li class="nav navbar-form col-sm-3"><a href="/luanvan/hosomotcua/dang-nhap">Đăng nhập hệ thống</a></li>
  <li class="nav navbar-form col-sm-3"><a href="/luanvan/hosomotcua/nop-ho-so">Nộp hồ sơ trực tuyến</a></li>
  <li class="nav navbar-form col-sm-3"><a href="/luanvan/hosomotcua/can-bo-xu-ly">Cán bộ xử lý hồ sơ</a></li>
  <li class="nav navbar-form col-sm-3"><a href="/luanvan/hosomotcua/cau-hinh-thu-tuc">Cấu hình thủ tục</a></li>
</ul>
</div>
<div id="footer">
    <div class="container">
        <div class="row">
            <h3 class="footertext"></h3>
            <br>
              <div class="col-md-4">
                <center>
                  <img src="<c:url value="/resources/hinhanh/w8lycl.png" />" class="img-circle" alt="the-brains">
                  <br>
                  <p><h4 class="footertext">DANH MỤC</h4></p>
					 <ul class="nav nav-pills nav-stacked">
					    <li role="presentation"><a href="/luanvan">TRANG CHỦ</a></li> 
						<li role="presentation"><a href="/luanvan/hosomotcua/thu-tuc-hanh-chinh">Thủ Tục Hành Chính</a></li>
						<li role="presentation"><a href="/luanvan/hosomotcua/huong-dan">Hướng Dẫn Nộp Hồ Sơ</a></li>
						<li role="presentation"><a href="/luanvan/hosomotcua/trangchu/thong-ke">Thống Kê Dịch Vụ Công</a></li>
					</ul>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="<c:url value="/resources/hinhanh/2z7enpc.png"/>" class="img-circle" alt="...">
                  <br>
                 <p> <h4 class="footertext">HƯỚNG DẪN</h4></p>
					<div class="nav nav-pills nav-stacked">
					<li role="presentation"><a href="/luanvan/hosomotcua/dang-ky">Đăng ký tài khoản</a></li>
  					<li role="presentation"><a href="/luanvan/hosomotcua/login">Đăng nhập hệ thống</a></li>
  					<li role="presentation"><a href="/luanvan/hosomotcua/nop-ho-so">Nộp hồ sơ trực tuyến</a></li>
  					<li role="presentation"><a href="/luanvan/hosomotcua/tra-cuu">Tra cứu kết quả</a></li>
  					<li role="presentation"><a href="/luanvan/hosomotcua/can-bo-xu-ly">Cán bộ xử lý hồ sơ</a></li>
					</div>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="<c:url value="/resources/hinhanh/307n6ux.png"/>" class="img-circle" alt="...">
                  <br>
                  <p><h4 class="footertext">LIÊN HỆ HỖ TRỢ</h4></p>
				<ul class ="nav nav-pills nav-stacked">
					<li role="presentation">Khu 2, Đại Học Cần Thơ, Đường 3/2, Quận Ninh Kiều,Cần Thơ</li>
					<li role="presentation">huynhnhu12a@gmail.com</li>
					<li role="presentation">nqthai2204@gmail.com</li>
					
				</ul>
                </center>
              </div>
              
            </div>
        </div>
    </div>
</nav>
</body>
</html>