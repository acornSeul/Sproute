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
  <title>Sproute</title>
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
<br/>
<div class="x">
	<h3>주문확인서</h3>
<br/>
	<div class="table">
		<table>
			<tr>
				<th rowspan="3">주문자정보</th>
				<th>주문번호</th>
				<td>${orderInfo.orderId}</td>
				<th>주문일시</th>
				<td>${orderInfo.orderDate}</td>
			</tr>
			<tr>
				<th>주문자명</th>
				<td>${orderInfo.userName}</td>
				<th>결제금액</th>
				<td>${orderInfo.totalPrice}</td>
			</tr>
			<tr>
				<th>배송지</th>
				<td colspan="3">${orderInfo.shipAddress}ㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㅇㄴㅁ</td>
			</tr>
		</table>
	</div>

	<div class="table" cond="0">
		<table>
			<tr>
				<th rowspan="2">결제 정보</th>
				<th>카드번호</th>
				<td colspan="2">${orderInfo.cardNumber}</td>
			</tr>
			<tr>
				<th>카드타입</th>
				<td colspan="2">${orderInfo.cardType}</td>
			</tr>
		</table>
	</div>

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
</html>
