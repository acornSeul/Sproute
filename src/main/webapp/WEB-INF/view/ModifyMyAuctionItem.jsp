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
       <h3 class="my-4">경매 상품 수정</h3>
      <form:form modelAttribute="modifyAuc" action="updateAuction">
   		<div class="row form-group">
    	<label for="productId" class="col-sm-2 col-form-label col-form-label-sm">상품 카테고리</label>
    		<div class="col-sm-2">
	    	    <c:if test="${modifyAuc.item.productId == 'S001'}">
					<form:select path="item.productId" class="form-control">
	    				<form:option value="S001" selected="selected">유모차</form:option>
	    				<form:option value="S002">장난감</form:option>
	    				<form:option value="S003">옷</form:option>
	    				<form:option value="S004">신발</form:option>
	    				<form:option value="S005">모빌</form:option>
	    			</form:select>	
				</c:if>
				 
				<c:if test="${modifyAuc.item.productId == 'S002'}">
					<form:select path="item.productId" class="form-control">
	    				<form:option value="S001">유모차</form:option>
	    				<form:option value="S002" selected="selected">장난감</form:option>
	    				<form:option value="S003">옷</form:option>
	    				<form:option value="S004">신발</form:option>
	    				<form:option value="S005">모빌</form:option>
	    			</form:select>	
				</c:if>
				<c:if test="${modifyAuc.item.productId == 'S003'}">
					<form:select path="item.productId" class="form-control">
	    				<form:option value="S001">유모차</form:option>
	    				<form:option value="S002">장난감</form:option>
	    				<form:option value="S003" selected="selected">옷</form:option>
	    				<form:option value="S004">신발</form:option>
	    				<form:option value="S005">모빌</form:option>
	    			</form:select>	
				</c:if>
				<c:if test="${modifyAuc.item.productId == 'S004'}">
					<form:select path="item.productId" class="form-control">
	    				<form:option value="S001">유모차</form:option>
	    				<form:option value="S002">장난감</form:option>
	    				<form:option value="S003">옷</form:option>
	    				<form:option value="S004" selected="selected">신발</form:option>
	    				<form:option value="S005">모빌</form:option>
	    			</form:select>	
				</c:if>
				<c:if test="${modifyAuc.item.productId == 'S005'}">
					<form:select path="item.productId" class="form-control">
	    				<form:option value="S001">유모차</form:option>
	    				<form:option value="S002">장난감</form:option>
	    				<form:option value="S003">옷</form:option>
	    				<form:option value="S004">신발</form:option>
	    				<form:option value="S005" selected="selected">모빌</form:option>
	    			</form:select>	
				</c:if>
				</div>
			</div>
    		<br>
    		<div class="form-group row">
				 <label for="item.title" class="col-sm-2 col-form-label col-form-label-sm">상품명 </label>
				 <div class="col-sm-3">
		    		<form:input path="item.title" class="form-control"/>
		    		<form:errors path="item.title"/>
				 </div>
			</div>
    		<div class="form-group row">
				 <label for="deadline" class="col-sm-2 col-form-label col-form-label-sm">입찰 기한 </label>
				 <div class="col-sm-3">
					<c:out value="${modifyAuc.deadline}"/>
				 </div>
			</div>			
    		<div class="form-group row">
				 <label for="item.price" class="col-sm-2 col-form-label col-form-label-sm">가격 하한선 </label>
				 <div class="col-sm-3">
					<c:out value="${modifyAuc.item.price}"/>
				 </div>
			</div>	
    		<div class="form-group row">
				 <label for="item.stock" class="col-sm-2 col-form-label col-form-label-sm">상품 재고 </label>
				 <div class="col-sm-3">
		    		<form:input path="item.stock" class="form-control"/>
		    		<form:errors path="item.stock"/>
				 </div>
			</div> 
    		<div class="form-group row">
				 <label for="item.description" class="col-sm-2 col-form-label col-form-label-sm">상품 설명 </label>
				 <div class="col-sm-8">
		    		<form:textarea path="item.description" class="form-control"/>
		    		<form:errors path="item.description"/>
				 </div> 
			</div>

    	<form:hidden path="item.price" value="${modifyAuc.item.price}"/>
    	<form:hidden path="auctionId" value="${modifyAuc.auctionId}"/>
    	<form:hidden path="item.categoryId" value="${modifyAuc.item.categoryId}"/>
    	<form:hidden path="deadline" value="${modifyAuc.deadline}"/> 
    		
    	<input type="submit" value="수정" class="btn btn-primary"/>
    	
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







