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
  <title>나의 입찰내역</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
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
       <h3 class="my-4">입찰 신청 내역</h3>
       <table class="t1" border='1'>
      <tr><td colspan='5'><strong>입찰 중</strong></td></tr>
      <tr><td>상품명</td><td>입찰신청금액</td><td>현재최고금액</td><td>입찰종료일</td><td></td></tr>
      <c:forEach var="bidItem" items="${bidingList}">
         <tr><td>${bidItem.auction.item.title}</td><td>${bidItem.price}</td><td>${bidItem.maxPrice}</td><td>${bidItem.auction.deadline}</td>
            <td>
               <a href="<c:url value='/mypage/MyBidMain/delete'><c:param name='bidId' value='${bidItem.bidId}'/></c:url>"><strong>삭제</strong></a>
            </td>
         </tr>
      </c:forEach>
   </table>
   <br/>
   <hr width="50% align="left"> 
   <br/>
   <table class="t1" border='1'>
      <tr><td colspan='4'><strong>경매 종료</strong></td></tr>
      <tr><td>상품명</td><td>입찰신청금액</td><td>현재최고금액</td><td>입찰종료일</td><td></td></tr>
      <c:forEach var="bidItem" items="${endBidList}">
         <tr><td>${bidItem.auction.item.title}</td><td>${bidItem.price}</td><td>${bidItem.maxPrice}</td><td>${bidItem.auction.deadline}</td>
         <td rawspan='2'><c:if test="${bidItem.check == 1}" ><a href='<c:url value="/shop/AuctionOrder"><c:param name="itemId" value="${bidItem.auction.auctionId}"/></c:url>'>구매</a></c:if></td>
         </tr>
      </c:forEach>
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