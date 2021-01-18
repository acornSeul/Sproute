<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <!-- Bootstrap core JavaScript -->
  <script src="../resource/vendor/jquery/jquery.min.js"></script>
  <script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <title>Sproute - Hompage</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
  <style>
	a { color:black; text-decoration:none; }
	li { list-style:none; margin-left:-1px; z-index:1; }
	ul { display:inline-block; *display:inline; zoom:1;  margin-left: auto; margin-right: auto;}
	h3 { text-align:center;}
</style>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <%@ include file="IncludeMypageBar.jsp" %>
      
      <div class="col-lg-9">
       <h3 class="my-4">${userName}님의 회원정보</h3>
       		<div class="form-group row">
				  <label for="userId" class="col-sm-2 col-form-label col-form-label-sm">아이디 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="userId" value="${detailReq.userId}"/>
			       </div>
			</div>
			<div class="form-group row">
				  <label for="name" class="col-sm-2 col-form-label col-form-label-sm">이름 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="name" value="${detailReq.name}"/>
			       </div>
			</div>
			<div class="form-group row">
				  <label for="email" class="col-sm-2 col-form-label col-form-label-sm">이메일 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="email" value="${detailReq.email}"/>
					</div>
			</div>
			<div class="form-group row">
				  <label for="address" class="col-sm-2 col-form-label col-form-label-sm">주소 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" value="${detailReq.address}"/>
					</div>
			</div>
			<div class="form-group row">
				  <label for="phone" class="col-sm-2 col-form-label col-form-label-sm">전화번호 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="phone" value="${detailReq.phone}"/>
					</div>
			</div>
			<div class="form-group row">
				  <label for="birth" class="col-sm-2 col-form-label col-form-label-sm">생년월일 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="birth" value="${detailReq.birth}"/>
					</div>
			</div>
			<div class="form-group row">
				  <label for="sex" class="col-sm-2 col-form-label col-form-label-sm">성별 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="sex" value="${detailReq.sex}"/>
					</div>
			</div>
			<a href="<c:url value="/shop/viewModifyForm" />" class="btn btn-primary btn-sm">수정</a><br/>
    </div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div><br/><br/>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>
</body>


