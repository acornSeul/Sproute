<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
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
  
  <title>Sproute - ProductList</title>

  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">

</head>
<body>
<!-- Page Content -->

      <div class="col-lg-3">
        <h1 class="my-4">Sproute!</h1>
        <div class="list-group">
          <a href="<c:url value='/shop/viewCategory.do?categoryId=sale'/>" class="list-group-item">일반</a>
          <a href="<c:url value='/shop/usedProduct'/>" class="list-group-item">중고</a>
          <a href="<c:url value="/shop/auctionProduct" />" class="list-group-item">경매</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->
</body>
</html>