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
  <script src="resource/vendor/jquery/jquery.min.js"></script>
  <script src="resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 
  <title>Sproute-MypageBar</title>

  <!-- Bootstrap core CSS -->
  <link href="resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resource/css/shop-homepage.css" rel="stylesheet">

</head>
<body>
<!-- Page Content -->
      <div class="col-lg-3">
        <h1 class="my-4">Sproute!</h1>
        <div class="list-group">
          <a href="<c:url value='/mypage/MyBidMain'/>" class="list-group-item">입찰신청내역</a>
          <a href="<c:url value="/mypage/MyOrderList" />" class="list-group-item">구매내역</a>
          <a href="<c:url value="/shop/ProductManagement" />" class="list-group-item">상품등록관리 - 중고</a>
		  <a href="<c:url value="/mypage/MyAuctionMain"/>" class="list-group-item">상품등록관리(경매)</a>
		  <a href="<c:url value="/mypage/memberDetail" />" class="list-group-item">회원정보관리</a>
		  <a href="<c:url value="/mypage/myReview" />" class="list-group-item">리뷰 관리</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->
</body>
</html>