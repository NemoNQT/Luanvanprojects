<%@page import="com.luanvan.model.User"%>
<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<link href="<c:url value="/resources/header/css/homepage.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Giới thiệu </title>
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
      <li class="nav navbar-form"><a href="/luanvan/hosomotcua/gioi-thieu">GIỚI THIỆU<span class="sr-only">(current)</span></a></li>
            <li class="nav navbar-form"><a href="/luanvan/hosomotcua/thu-tuc-hanh-chinh">THỦ TỤC HÀNH CHÍNH<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form"><a href="/luanvan/hosomotcua/huong-dan">HƯỚNG DẪN NỘP HỒ SƠ<span class="sr-only">(current)</span></a></li>
      <li class="nav navbar-form"><a href="/luanvan/hosomotcua/thong-ke"> THỐNG KÊ DỊCH VỤ CÔNG<span class="sr-only">(current)</span></a></li>
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
	<h2><center> HỆ THỐNG DỊCH VỤ CÔNG TRỰC TUYẾN TỈNH CÀ MAU</center></h2>
<p><b>1.</b> Mục tiêu, giúp cho người dân, doanh nghiệp:</p>
<p>- Có được thông tin ngắn gọn, rõ ràng nhất về thành phần hồ sơ, trình tự, thời gian và cách thức thực hiện cho mỗi loại thủ tục hành chính trên địa bàn tỉnh;</p>
<p>- Có thể tải biểu mẫu, tờ khai để điền thông tin cho thủ tục hành chính của mình;</p>
<p>- Thủ tục hành chính có ghi mức độ 3 trên hệ thống này, giúp cho người dân, doanh nghiệp có thể nộp trực tuyến, nhận kết quả trực tiếp tại cơ quan đã tiếp nhận;</p>
<p>- Thủ tục hành chính có ghi mức độ 4 trên hệ thống này, giúp cho người dân, doanh nghiệp có thể nộp và nhận kết quả thủ tục hành chính trực tuyến qua mail hoặc trực tiếp tại nhà qua dịch vụ bưu chính; tùy người dân, doanh nghiệp lựa chọn.</p>
<p><b>2.</b> Là phương tiện, cho người dân, doanh nghiệp góp ý, phản ánh, kiến nghị nhằm chung tay cải cách thủ tục hành chính tạo môi trường thông thoáng trong phát triển sản xuất kinh doanh, phát triển kinh tế xã hội cho tỉnh nhà và góp phần phát triển đất nước.</p>
<p><b>3.</b> Là Công cụ hỗ trợ giúp cán bộ, công chức, viên chức thực hiện một cách tự động hóa quy trình ISO để giảm thời gian thao tác thủ công, tăng năng suất làm việc; giúp cơ quan, đơn vị công khai minh bạch trong quá trình giải quyết thủ tục hành chính của mình; giúp các cấp lãnh đạo, cơ quan, tổ chức có thẩm quyền thực hiện công tác quản lý, giám sát cán bộ, công chức viên chức trong quá trình thực thi công vụ.</p>

</div>

<div id="footer">
    <div class="container">
        <div class="row">
            <h3 class="footertext"></h3>
            <br>
              <div class="col-md-4">
                <center>
                  <img src="http://oi60.tinypic.com/w8lycl.jpg" class="img-circle" alt="the-brains">
                  <br>
                  <p><h4 class="footertext">DANH MỤC</h4></p>
					<ul>
						<li ><a href="/luanvan">TRANG CHỦ </li> 
						<li ><a href="/luanvan/hosomotcua/thutuchanhchinh">Thủ Tục Hành Chính</li>
						<li ><a href="/luanvan/hosomotcua/huongdan">Hướng Dẫn Nộp Hồ Sơ</li>
						<li ><a href="/luanvan/hosomotcua/thongke">Thống Kê Dịch Vụ Công</li>
					</ul>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://oi60.tinypic.com/2z7enpc.jpg" class="img-circle" alt="...">
                  <br>
                 <p> <h4 class="footertext">HƯỚNG DẪN</h4></p>
					<ul>
					<li><a href="/luanvan/hosomotcua/dangky">Đăng ký tài khoản</a></li>
					<li><a href="/luanvan/hosomotcua/dangnhap">Đăng nhập hệ thống</a></li>
					<li><a href="/luanvan/hosomotcua/nophoso">Nộp hồ sơ trực tuyến</a></li>
					<li><a href="/luanvan/hosomotcua/tracuu">Tra cứu kết quả</a></li>
					<li><a href="/luanvan/hosomotcua/canboxuly">Cán bộ xử lý hồ sơ</a></li>
					</ul>
                </center>
              </div>
              <div class="col-md-4">
                <center>
                  <img src="http://oi61.tinypic.com/307n6ux.jpg" class="img-circle" alt="...">
                  <br>
                  <p><h4 class="footertext">LIÊN HỆ HỖ TRỢ</h4></p>
				<ul>
					<li>Khu 2, Đại Học Cần Thơ, Đường 3/2, Quận Ninh Kiều,Cần Thơ</li>
					<li>huynhnhu12a@gmail.com</li>
					<li>nqthai2204@gmail.com</li>
				</ul>
                </center>
              </div>
    </div>
</div>

</nav>

</body>
</html>