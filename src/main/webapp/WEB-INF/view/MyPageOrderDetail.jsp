<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">

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

  <title>나의 입찰내역</title>
<style>
table.t1, h3 {
    border-collapse: collapse;
    text-align:center;
    margin: auto;
    align:center;
}
</style>
</head>
<body>
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
							<th scope="col">합계 금액</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${itemList}">
						<tr>
							<td>${item.title}</td>
							<td>${item.price}</td>
							<td>${item.quantity}</td>
							<td>${item.quantity * item.price}</td>
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

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>
</body>
</html>

