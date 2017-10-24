<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.luanvan.model.Account"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en" >
<head>  
<!-- dependencies (jquery, handlebars and bootstrap) -->
<script type="text/javascript" src="<c:url value="/resources/thuvien/jquery_min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/thuvien/handlerbars_min.js" />"></script>
<!-- bootstrap -->
<link type="text/css" href="<c:url value ="/resources/thuvien/bootstrap.min.css"/>" rel="stylesheet">
<script type="text/javascript" src="<c:url value="/resources/thuvien/bootstrap_min.js" />"></script>
<!-- alpaca -->
<link type="text/css"  href="<c:url value ="/resources/thuvien/alpaca_min.css"/>" rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/thuvien/alpaca_min.js" />"></script>
<!-- ------------------- -->
<title> THÔNG TIN ĐĂNG KÝ</title>
<link href="<c:url value="/resources/register/css/register.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
	Account account = (Account)request.getAttribute("account");
	String SubjectName=request.getParameter("SubjectName");
	String DiachiHT=request.getParameter("DiachiHT");
%>
<div class="container">
<div class="stepwizard">
    <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
            <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
            <p>BƯỚC 1</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
            <p>BƯỚC 2</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
            <p>BƯỚC 3</p>
        </div>
    </div>
</div>

<form:form class="form-horizontal" modelAttribute="account" 
	action="/luanvan/hosomotcua/tien-hanh-dang-ky" method="POST">
    <div class="row setup-content" id="step-1">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3> Bước 1: </h3>
				<h4> ĐĂNG KÝ TÀI KHOẢN CHO CÔNG DÂN</h4>                
                	<form:input type="hidden" name="id" path="id"/>
                <div class="form-group">
                <label class="control-label">Tên Đầy Đủ</label>
                    <form:input  maxlength="100" name="Hoten" path="Hoten" type="text" required="required" class="form-control" />
                </div>
                
                <div class="form-group">
                <label class="control-label">Ngày sinh</label>
				<form:input type="date" path="Ngaysinh" class="form-control" required="true" />
                </div>
                
                 <div class="form-group">
                <label class="control-label">Địa chỉ Tạm Trú</label>
                    <form:input  maxlength="100" name="DiachiHT" path="DiachiHT" type="text" required="required" class="form-control"   />
                </div>
                
                <div class="form-group">
                <label class="control-label">Địa chỉ Thường Trú</label>
                    <form:input  maxlength="100" name="DiachiTT" path="DiachiTT" type="text" required="required" class="form-control"   />
                </div>
                
                <div class="form-group">
                <label class="control-label">Số CMND/Hộ Chiếu</label>
                    <form:input  maxlength="100" name="SoCMND" path="SoCMND" type="text" required="required" class="form-control"   />
                </div>
                
                <div class="form-group">
                <label class="control-label">Ngày cấp</label>
				<form:input type="date" path="NgaycapCMND" class="form-control"  required="true" />
                </div>
                
                <div class="form-group">
                <label class="control-label">Nơi Cấp</label>
                    <form:input  maxlength="100" name="NoicapCMND" path="NoicapCMND" type="text" required="required" class="form-control"   />
                </div>
                
                <div class="form-group" required="true">
                <label class="control-label">Giới Tính</label>
                    <form:radiobutton path="Gioitinh" value="nam" name="nam "/>Nam
                    <form:radiobutton path="Gioitinh" value="nu" name="nu "/>Nữ
                </div>
                
				<div class="form-group">
                <label class="control-label">Dân Tộc</label>
                    <form:input  maxlength="100" name="Dantoc" path="Dantoc" type="text" required="required" class="form-control"   />
                </div>
                <div class="form-group">
                <label class="control-label">Quốc Tịch</label>
                    <form:input  maxlength="100" name="Quoctich" path="Quoctich" type="text" required="required" class="form-control"   />
                </div>
                
                <div class="form-group">
                <label class="control-label">Số điện thoại</label>
                    <form:input  maxlength="100" name="Sodt" path="Sodt" type="text" required="required" class="form-control"   />
                </div>
                
                <div class="form-group">
                <label class="control-label">Email</label>
                    <form:input  maxlength="100" name="Email" path="Email" type="text" required="required" class="form-control"   />
                </div>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
            </div>
        </div>
    </div>
    <div class="row setup-content" id="step-2">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3>Bước 2: </h3>
                <h4>Nhập tên đăng nhập và mật khẩu</h4>
                <div class="form-group">
                    <label class="control-label">Tên đăng nhập</label>
                    <form:input maxlength="50" name="username" path="username" type="text" required="required" class="form-control"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Mật khẩu</label>
                    <form:password minlength="6" name="password" path="password" maxlength="50" required="required" class="form-control" />
                </div>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
            </div>
        </div>
    </div>
    
    <div class="row setup-content" id="step-3">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3> Step 3</h3>
                <button class="btn btn-success btn-lg pull-right" type="submit">Lưu!!</button>
            </div>
        </div>
    </div>
   
</form:form>
</div>
<script>
$(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
            allWells = $('.setup-content'),
            allNextBtn = $('.nextBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
                $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-primary').addClass('btn-default');
            $item.addClass('btn-primary');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function(){
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        for(var i=0; i<curInputs.length; i++){
            if (!curInputs[i].validity.valid){
                isValid = false;
                $(curInputs[i]).closest(".form-group").addClass("has-error");
            }
        }

        if (isValid)
            nextStepWizard.removeAttr('disabled').trigger('click');
    });

    $('div.setup-panel div a.btn-primary').trigger('click');
});
</script>
</body>
</html>