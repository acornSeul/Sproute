<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage Main</title>
<script type="text/javascript">
function moveDelete(){
	
	location.href='/mypage/deleteReview';
}
var message = '${message}';
if (message != "") {
   alert(message);
}
</script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<%@ include file="IncludeTop.jsp"%>
</nav>
<div class="container">
	<div class="row">
		<%@ include file="IncludeMypageBar.jsp"%>
		<div class="col-lg-9">
			<h3 class="my-4">${userName}님이 작성한 리뷰입니다.</h3>
			<table class="table">
<thead class="thead-light">
    <tr>
      <th scope="col">상품ID</th>
      <th scope="col">제목</th>
      <th scope="col">별점</th>
      <th scope="col">내용</th>
      <th scope="col">설정</th>
    </tr>
  </thead>
  <tbody>
	<c:forEach var="rl" items="${reviewList}" varStatus="status">
		<tr>
		<td><a href="<c:url value='/shop/viewItemDetail.do'><c:param name='itemId' value='${rl.itemId}'/></c:url>"><c:out value="${rl.itemId }" /></a></td>
		<td><c:out value="${rl.title }"></c:out></td>
		<td><c:out value="${rl.rating }"></c:out></td>
		<td><c:out value="${rl.content }"></c:out></td>
		
		<td><a href="<c:url value='/mypage/updateForm?reviewId=${rl.reviewId}'/>">수정</a>
			<a href="<c:url value='/mypage/deleteReview/${rl.reviewId}'/>">삭제</a></td>
		</tr>
	</c:forEach>
  </tbody>
</table>
		</div>
	</div>
</div>

<!-- Footer -->
<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
	</div>
</footer>
</body>
</html>


