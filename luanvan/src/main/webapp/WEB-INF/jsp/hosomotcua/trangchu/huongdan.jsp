<html>
<%@page import="com.luanvan.model.User"%>
<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>
<head>  
<!-- dependencies (jquery, handlebars and bootstrap) -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<!-- bootstrap -->
<link type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- alpaca -->
<link type="text/css" href="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.css" rel="stylesheet"/>
<script type="text/javascript" src="https://code.cloudcms.com/alpaca/1.5.23/bootstrap/alpaca.min.js"></script>
<!-- ------------------- -->
<title>Hướng dẫn nộp hồ sơ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="<c:url value="/resources/header/css/homepage.css" />" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/luanvan">Trang Chủ</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      <li class="nav navbar-form"><a href="/luanvan/hosomotcua/gioithieu">GIỚI THIỆU<span class="sr-only">(current)</span></a></li>
            <li class="nav navbar-form"><a href="/luanvan/hosomotcua/thutuchanhchinh">THỦ TỤC HÀNH CHÍNH<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form"><a href="/luanvan/hosomotcua/huongdan">HƯỚNG DẪN NỘP HỒ SƠ<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form"><a href="/luanvan/hosomotcua/thongke"> THỐNG KÊ DỊCH VỤ CÔNG<span class="sr-only">(current)</span></a></li>
        </ul>
  <!--      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>-->
       <ul class="nav navbar-form navbar-right">
       <li><a  href="/luanvan/hosomotcua/dangky" class="btn btn-primary btn-lg">
          <span class="glyphicon glyphicon-user"></span> Đăng Ký
        </a></li>
      </ul>
      <ul class="nav navbar-form navbar-right">
        <li><a  href="/luanvan/hosomotcua/dangnhap" class="btn btn-primary btn-lg">
          <span class="glyphicon glyphicon-log-in"></span> Đăng Nhập
        </a></li>
        </ul>
             <!--   <li class="dropdown">
         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/luanvan/hosomotcua/list">Danh Sách Người Dùng</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul> 
        </li>-->
      
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  <div class="container well">
	<h2><center>Web Stuff Goes Here</center></h2>
</div>
<div id="footer">
    <div class="container">
        <div class="row">
            <h3 class="footertext">About Us:</h3>
            <br>
              <div class="col-md-4">
                <center>
                  <img src="http://oi60.tinypic.com/w8lycl.jpg" class="img-circle" alt="the-brains">
                  <br>
                  <h4 class="footertext">Programmer</h4>
                  <p class="footertext">You can thank all the crazy programming here to this guy.<br>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://oi60.tinypic.com/2z7enpc.jpg" class="img-circle" alt="...">
                  <br>
                  <h4 class="footertext">Artist</h4>
                  <p class="footertext">All the images here are hand drawn by this man.<br>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://oi61.tinypic.com/307n6ux.jpg" class="img-circle" alt="...">
                  <br>
                  <h4 class="footertext">Designer</h4>
                  <p class="footertext">This pretty site and the copy it holds are all thanks to this guy.<br>
                </center>
              </div>
            </div>
            <div class="row">
            <p><center><a href="#">Contact Stuff Here</a> <p class="footertext">Copyright 2014</p></center></p>
        </div>
    </div>
</div>
</nav>
</body>
</html>