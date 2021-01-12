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
      		<ul>
      			<li><c:out value="아이디 : ${detailReq.userId}" /></li>
    			<li><c:out value="이름 : ${detailReq.name}" /></li>
    			<li><c:out value="이메일 : ${detailReq.email}" /></li>
    			<li><c:out value="주소 : ${detailReq.address}" /></li>
    			<li><c:out value="전화번호 : ${detailReq.phone}" /></li>
    			<li><c:out value="생년월일 : ${detailReq.birth}" /></li>
    			<li><c:out value="성별 : ${detailReq.sex}" /></li>
    			<li>&nbsp;</li>
    			<li><a href="<c:url value="/shop/viewModifyForm" />">수정</a>
    		</ul>  
    </div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>
</body>


