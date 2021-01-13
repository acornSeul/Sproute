<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <title>나의 입찰내역</title>
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
	<%@ include file="IncludeTop.jsp"%>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<%@ include file="IncludeMypageBar.jsp"%>
			<div class="col-lg-9">
				<h3 class="my-4">${userName}가등록한 경매 아이템</h3>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">상품명</th>
							<th scope="col">금액</th>
							<th scope="col">설정</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${Items}">
							<tr>
								<td><c:out value="${item.item.title}" /></td>
								<td><c:out value="${item.item.price}" /></td>
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
	</div>
	<!-- /.container -->
	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Sproute
				2021</p>
		</div>
		<!-- /.container -->
	</footer>
</body>
</html>