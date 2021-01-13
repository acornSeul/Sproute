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
	a { color:black; text-decoration:none; }
	li { list-style:none; margin-left:-1px; z-index:1; }
	ul { display:inline-block; *display:inline; zoom:1; }
	table, h3 {
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
       <h3 class="my-4">${userName}가 등록한 경매 아이템</h3>
		  <table class="table">
			  <thead class="thead-light">
			    <tr>
			      <th scope="col">상품 코드</th>
			      <th scope="col">상품명</th>
			      <th scope="col">등록 금액</th>
			      <th scope="col"> </th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach var="item" items="${Items}">
				<tr>
					<td><a href="<c:url value='/shop/auctionItemDetail'><c:param name='itemId' value='${item.auctionId}'/></c:url>">
						<c:out value="${item.auctionId}"/></a></td>
					<td><c:out value="${item.item.title}"/></td>
					<td><c:out value="${item.item.price}"/></td>
					<td><a href="<c:url value='/mypage/updateAuctionForm'><c:param name='auctionId' value='${item.auctionId}'/></c:url>"><strong>수정</strong></a>
					<a href="<c:url value='/mypage/MyAuctionMain/delete'><c:param name='auctionId' value='${item.auctionId}'/></c:url>"><strong>삭제</strong></a></td>
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







