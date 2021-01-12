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

  <title>Sproute - ProductDetail</title>

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
          <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">
          <div class="card-body">
            <h3 class="card-title">${item.title}</h3>
            <h4>${item.price} 원</h4>
            <p>수량 : ${item.stock}</p>
            <p class="card-text">${item.description}</p>
            <br/>
            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars &emsp;&emsp;&emsp;
            <a href='<c:url value="/shop/addItemToCart">
	          <c:param name="workingItemId" value="${item.itemId}"/><c:param name="categoryId" value="${item.categoryId}"/>
	          </c:url>' class="btn btn-info">장바구니</a>

          </div>
        </div>
        <!-- /.card -->
        
		<!-- 리뷰 자리 -->
        <div class="card card-outline-secondary my-4">
          <div class="card-header">
           	 상품 후기
          </div>
          <div class="card-body">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
             <a href="<c:url value='/shop/reviewForm?itemId=${item.itemId}'/>" class="btn btn-success">리뷰 등록</a>
          </div>
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
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
