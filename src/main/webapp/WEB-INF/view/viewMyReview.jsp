
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
<style>
a { color:black; text-decoration:none; }
li { list-style:none; margin-left:-1px; z-index:1; }
ul { display:inline-block; *display:inline; zoom:1; }
div, h3 { text-align:center;}
</style>
</head>
<body>
<script type="text/javascript">
	var message = '${message}';
	if (message != "") {
	   alert(message);
	}
</script>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <%@ include file="IncludeTop.jsp" %>
</nav>

<div class="container">
	<div class="row">
		<%@ include file="IncludeMypageBar.jsp" %>
			<div class="col-lg-9">
			<h3 class="my-4">${userName }님의 마이페이지</h3>
<table>
  <tr>
    <td><div> 	
    <table border=1 width=160% cellspacing=0>
    	<tr align="center">
		<th>제목</th>
		<th>별점</th>
		<th>내용</th>
		<th>아이템 아이디</th>
	</tr>
    <c:forEach var="rl" items="${reviewList}" varStatus="status">
	<tr align="center">
		<td><c:out value="${rl.title }"></c:out></td> 			
		<td><c:out value="${rl.rating }"></c:out></td>
		<td><c:out value="${rl.content }"></c:out></td>
		<td><a href="<c:url value='/shop/viewItemDetail.do'><c:param name='itemId' value='${rl.itemId}'/></c:url>">
			<c:out value="${rl.itemId }" /></a></td> 
		
		<td><a href="<c:url value='/mypage/updateForm?reviewId=${rl.reviewId}'/>">수정</a>
		<a href="<c:url value='/mypage/deleteReview/${rl.reviewId}'/>">삭제</a></td>
		
	</tr>
	</c:forEach> 
	</table>
	
	</div></td>
  </tr>
</table>
   	  		</div>
	</div>
</div>

 <!-- Footer -->
 <footer class="py-5 bg-dark">
   <div class="container">
     <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
   </div>
   <!-- /.container -->
 </footer>
</body>

</html>