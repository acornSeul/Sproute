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
a { color:black; text-decoration:none; }
li { list-style:none; margin-left:-1px; z-index:1; }
ul { display:inline-block; *display:inline; zoom:1; }
h3 { text-align:center;}
table.t1 {
    border-collapse: collapse;
    text-align:center;
    margin: auto;
    align:center;
}
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
				<h3 class="my-4">등록한 중고 상품</h3>
				<table class="t1">
				<tr>
					<th>상품번호</th>
					<th>상품명</th>
				</tr>
			<c:forEach var="item" items="${Useditems}">
				<tr>
					<td>${item.itemId}</td>
					<td>${item.title}</td>
      				<td><a href='<c:url value="updateUsedProduct"><c:param name="itemId" value="${item.itemId}"/></c:url>'>수정</a></td>
      				<td><a href='<c:url value="deleteUsedProduct"><c:param name="itemId" value="${item.itemId}"/></c:url>'>삭제</a></td>
      			</tr>
      		</c:forEach>
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