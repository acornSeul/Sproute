<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Sproute - UsedProductDetail</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>
<script type="text/javascript">
	var message = '${message}';
	if (message != "") {
	   alert(message);
	}
</script>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<%@ include file="IncludeTop.jsp" %>
	</nav>
	<%--  <%@ include file="IncludeQuickHeader.jsp" %> --%>
	<br/>

	<center>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S001"/>">
		    유모차 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S002"/>">
		    장난감 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S003"/>">
		    옷 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S004"/>">
		    신발 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S005"/>">
		    모빌</a>
	</center><br/>

  <!-- Page Content -->
  <div class="container">

    <div class="row">
		<%@ include file="IncludeSidebar.jsp" %>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        <div class="card mt-2">
        	<c:if test="${not empty item.imgName}">
	          	<img class="card-img-top img-fluid" src="<c:url value='/upload/${item.imgName}' />" />
	        </c:if>
          <div class="card-body">
          	<c:if test="${item.stock == 0}">
				<h6>
					<span class="badge badge-primary">sold out</span>
				</h6>
			</c:if>
            <h3 class="card-title">${item.title}
			</h3>
            <h4>${item.price} 원</h4>
            <p>판매자 : ${used.sellerId}</p>
            <p>사용기간 : ${used.usingTime}</p>
            <p>수량 : ${item.stock}</p>
            <p class="card-text">${item.description}</p>
            <br/>
           	<span style="font-size:15px; color:lightgray">게시일 : ${item.addDate}</span>&emsp;&emsp;&emsp;
           	
           	<c:if test="${item.stock != 0}">
	            <a href='<c:url value="/shop/addItemToCart">
		          <c:param name="workingItemId" value="${item.itemId}"/><c:param name="categoryId" value="${item.categoryId}"/>
		          </c:url>' class="btn btn-info">장바구니</a>
		          <!-- 구매하기 고쳐야 할 부분
					<a href='<c:url value="/shop/newOrder.do"/>' class="btn btn-info">구매하기</a>
				  -->
			 </c:if>
          </div>
        </div>
        <!-- /.card -->
        

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div><br/><br/><br/><br/>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
