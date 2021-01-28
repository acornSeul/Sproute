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
  <title>Sproute - MyOrder</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
<style>
   a { color:black; text-decoration:none; }
   table, h4 {
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
       <h4 class="my-4">${userName}님의 구매 내역</h4>
       
        <table class="table">
           <thead class="thead-light">
             <tr>
               <th scope="col">주문 일자</th>
               <th scope="col">주문자명</th>
               <th scope="col">결제금액</th>
               <th scope="col">상세보기</th>
               <th scope="col">관리</th>
             </tr>
           </thead>
           <tbody>
           <c:forEach var="orders" items="${orders}">
            <tr>
               <td>
                  <c:out value="${orders.orderDate}"/>
               </td>
               <td>
                  <c:out value="${orders.userName}"/>
               </td>
               <td>
              	  <c:out value="${orders.totalPrice}"/>		
               </td>
               <td>
               	  <%-- <a href='<c:url value="/mypage/MyOrderList/orderDetail"> --%>
               	  <a href='<c:url value="/mypage/OrderDetail">
	 				<c:param name="orderId" value="${orders.orderId}"/></c:url>'><strong>주문상세보기</strong></a></td>
               </td>
               <td>
               	  <a href='<c:url value="/mypage/MyOrderList/cancel">
	 				<c:param name="orderId" value="${orders.orderId}"/></c:url>'><strong>주문 취소</strong></a></td>
            </tr>
	 			
          </c:forEach>
        </tbody>
      </table>
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