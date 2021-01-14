<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
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
       <h3 class="my-4">입찰 신청 내역</h3>
       
       <!--  입찰중인 내역 -->
				<table class="table">
					<thead class="thead-light">
						<tr>
							<td colspan='5'><strong>입찰중</strong></td>
						</tr>
						<tr>
							<th scope="col">상품명</th>
							<th scope="col">입찰신청금액</th>
							<th scope="col">현재최고금액</th>
							<th scope="col">입찰종료일</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bidItem" items="${bidingList}">
						<tr>
							<td>${bidItem.auction.item.title}</td>
							<td>${bidItem.price}</td>
							<td>${bidItem.maxPrice}</td>
							<td>${bidItem.auction.deadline}</td>
							<td><a
								href="<c:url value='/mypage/MyBidMain/delete'><c:param name='bidId' value='${bidItem.bidId}'/></c:url>"><strong>삭제</strong></a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<!--  경매종료 내역 -->
				<table class="table">
					<thead class="thead-light">
						<tr>
							<td colspan='4'><strong>경매종료</strong></td>
						</tr>
						<tr>
							<th scope="col">상품명</th>
							<th scope="col">입찰신청금액</th>
							<th scope="col">현재최고금액</th>
							<th scope="col">입찰종료일</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bidItem" items="${endBidList}">
						<tr>
							<td>${bidItem.auction.item.title}</td>
							<td>${bidItem.price}</td>
							<td>${bidItem.maxPrice}</td>
							<td>${bidItem.auction.deadline}</td>
							<td rawspan='2'><c:if test="${bidItem.check == 1}">
									<a href='<c:url value="/shop/AuctionOrder">
										<c:param name="itemId" value="${bidItem.auction.auctionId}"/></c:url>'>구매</a>
									</c:if>
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
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>
</body>
</html>