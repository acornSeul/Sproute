<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<style>
	h4 { text-align:center;}
</style>
</head>
<body>
<script type="text/javascript">
	var message = '${message}';
	if (message != "") {
	   alert(message);
	}
</script>
<%@ include file="IncludeTop.jsp" %>
<div class="container">
	<div class="row">
		<%@ include file="IncludeMypageBar.jsp" %>
			<div class="col-lg-9">
				<h4 class="my-4">${userName}님의 등록한 중고 상품</h4>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">상품번호</th>
							<th scope="col">상품명</th>
							<th scope="col">설정</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${Useditems}">
							<tr>
								<td>${item.itemId}</td>
								<td>${item.title}</td>
								<td><a href='<c:url value="updateUsedProduct"><c:param name="itemId" value="${item.itemId}"/></c:url>'>수정</a>
								<a href='<c:url value="deleteUsedProduct"><c:param name="itemId" value="${item.itemId}"/></c:url>'>삭제</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
	</div>
</div><br/><br/>
 <!-- Footer -->
 <footer class="py-5 bg-dark">
   <div class="container">
     <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
   </div>
   <!-- /.container -->
 </footer>
</body>
</html>