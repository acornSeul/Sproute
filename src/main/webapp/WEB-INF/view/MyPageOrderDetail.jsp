<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
<<<<<<< HEAD
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <!-- Bootstrap core JavaScript -->
  <script src="resource/vendor/jquery/jquery.min.js"></script>
  <script src="resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <title>Sproute - Hompage</title>
  <!-- Bootstrap core CSS -->
  <link href="resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resource/css/shop-homepage.css" rel="stylesheet">
=======
  <title>나의 입찰내역</title>
<style>
table.t1, h3 {
    border-collapse: collapse;
    text-align:center;
    margin: auto;
    align:center;
}
</style>
>>>>>>> branch 'develop' of https://github.com/acornSeul/Sproute.git
</head>
<body>
<<<<<<< HEAD
  <!-- Navigation -->
  <%@ include file="/WEB-INF/view/IncludeTop.jsp" %>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <h1 class="my-4">Sproute!</h1>
        <div class="list-group">
          <a href="<c:url value='/shop/viewCategory.do?categoryId=sale'/>" class="list-group-item">일반</a>
          <a href="<c:url value='/shop/usedProduct'/>" class="list-group-item">중고</a>
          <a href="<c:url value="/shop/auctionProduct" />" class="list-group-item">경매</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->
      <div class="col-lg-9">
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="images/banner1.jpg" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>     
      </div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->

=======
<%@ include file="IncludeTop.jsp" %>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <%@ include file="IncludeMypageBar.jsp" %>
      <div class="col-lg-9">
       <h3 class="my-4">주문확인서</h3>
       
      <br/>
주문일자 : ${orderInfo.orderDate}
<br/>
배송지 : ${orderInfo.shipAddress}
<br/>
주소 : ${orderInfo.address}
<br/>
결제금액 : ${orderInfo.totalPrice}
<br/>
카드타입 : ${orderInfo.cardType}
<br/>
카드번호: ${orderInfo.cardNumber}
<br/>
카드만료 :${orderInfo.expireDate}
<br/>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<td colspan='5'><strong>구매상품</strong></td>
						</tr>
						<tr>
							<th scope="col">상품명</th>
							<th scope="col">가격</th>
							<th scope="col">구매 개수</th>
							<th scope="col">총 가격</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${itemList}">
						<tr>
							<td>${item.title}</td>
							<td>${item.price}</td>
							<td>${item.quantity}</td>
							<td>${item.quantity * item.price}</td>
							<td><a
								href="<c:url value='/mypage/MyBidMain/delete'><c:param name='bidId' value='${bidItem.bidId}'/></c:url>"><strong>삭제</strong></a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->
>>>>>>> branch 'develop' of https://github.com/acornSeul/Sproute.git
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>
</body>
</html>
<<<<<<< HEAD
=======


>>>>>>> branch 'develop' of https://github.com/acornSeul/Sproute.git
