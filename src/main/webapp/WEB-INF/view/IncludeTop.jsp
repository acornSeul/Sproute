<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <!-- Bootstrap core JavaScript -->
  <script src="../resource/vendor/jquery/jquery.min.js"></script>
  <script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <title>BPSP</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="../resources/demos/style.css">
</head>

<body bgcolor="white">
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="<c:url value="/"/>">Sproute</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="<c:url value="/"/>">Home
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/shop/viewCart'/>">Cart</a>
          </li>
          <c:if test="${empty session}" >
	          <li class="nav-item">
	            <a class="nav-link" href="<c:url value="/shop/loginForm" />">Login</a>
	          </li>
	      </c:if>
          
          <c:if test="${!empty session}" >
	          <li class="nav-item">
	            <a class="nav-link" href="<c:url value="/shop/logout"/>">LogOut</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="<c:url value="/mypage/main"/>">MyPage</a>
	          </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
</body>
</html>