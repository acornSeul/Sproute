<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
  <title>Sproute - AddUsedItem</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
	<style>
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
      <%@ include file="IncludeSidebar.jsp" %>
      <div class="col-lg-9">
       <h3 class="my-4">중고 상품 등록</h3>
     	<form:form modelAttribute="usedInfo" method="post" action="add" enctype="multipart/form-data">
     	    <div class="form-group row">
				<label for="productId" class="col-sm-2 col-form-label col-form-label-sm">상품 카테고리 </label>
				 <div class="col-sm-3">
		    		<form:select path="productId" items="${ProductType}" class="form-contorl"/>
				</div>
			</div>
    		<div class="form-group row">
				 <label for="title" class="col-sm-2 col-form-label col-form-label-sm">상품명 </label>
				 <div class="col-sm-3">
		    		<form:input path="title" class="form-control"/>
		    		<form:errors path="title"/>
				 </div>
			</div>
    		<div class="form-group row">
				 <label for="price" class="col-sm-2 col-form-label col-form-label-sm">가격 </label>
				 <div class="col-sm-3">
					<form:input path="price" class="form-control"/>
             		<form:errors path="price"/>
				 </div>
			</div>			
    		<div class="form-group row">
				 <label for="stock" class="col-sm-2 col-form-label col-form-label-sm">수량</label>
				 <div class="col-sm-3">
					    <form:input path="stock" class="form-contorl"/>
             			<form:errors path="stock"/>
				 </div>
			</div>	
    		<div class="form-group row">
				 <label for="usingTime" class="col-sm-2 col-form-label col-form-label-sm">사용 기간 </label>
				 <div class="col-sm-3">
		    		<form:input path="usingTime" class="form-control"/>
		    		<form:errors path="usingTime"/>
				 </div>
			</div> 
    		<div class="form-group row">
				 <label for="file" class="col-sm-2 col-form-label col-form-label-sm">사진</label>
				 <div class="col-sm-3">
				 
		    		<input type="file" name="report" />
				 </div> 
			</div>
    		<div class="form-group row">
				 <label for="description" class="col-sm-2 col-form-label col-form-label-sm">상품 설명 </label>
				 <div class="col-sm-8">
		    		<form:textarea path="description" class="form-control"/>
		    		<form:errors path="description"/>
				 </div> 
			</div>
			<a href="<c:url value='/shop/usedProduct'/>" class="btn btn-primary">취소</a>
    	<input type="submit" value="등록" class="btn btn-primary"/>
    </form:form>
    
       
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







