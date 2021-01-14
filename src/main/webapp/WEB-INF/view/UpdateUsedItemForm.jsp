<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
  <meta charset="utf-8">
  <title>나의 입찰내역</title>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <%@ include file="IncludeMypageBar.jsp" %>
      <div class="col-lg-9">
       <h3 class="my-4">중고 상품 수정</h3>
       <form:form modelAttribute="item" method="post" enctype="multipart/form-data">
       	<div class="form-group row">
       		<label for="title" class="col-sm-2 col-form-label col-form-label-sm">상품명</label>
       			<div class="col-sm-3"> 
       				<form:input path="title" />
					<form:errors path="title" />
				</div>
		</div>
		<div class="form-group row">
       		<label for="price" class="col-sm-2 col-form-label col-form-label-sm">가격</label>
       			<div class="col-sm-3"> 
       				<form:input path="price" />
					<form:errors path="price" />
				</div>
		</div>
		<div class="form-group row">
       		<label for="stock" class="col-sm-2 col-form-label col-form-label-sm">수량</label>
       			<div class="col-sm-3"> 
       				<form:input path="stock" />
					<form:errors path="stock" />
				</div>
		</div>
		<div class="form-group row">
       		<label for="description" class="col-sm-2 col-form-label col-form-label-sm">상품 설명</label>
       			<div class="col-sm-8"> 
       				<form:textarea path="description" />
					<form:errors path="description" />
				</div>
		</div>	
		<div class="form-group mt-4 mb-0">
			<input type="submit" value="수정" class="btn btn-outline-primary"/>
			<a class="btn btn-outline-primary" href="ProductManagement">뒤로가기</a>
		</div>
    </form:form>
	</div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div>
  <br/><br/>
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