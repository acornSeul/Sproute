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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
   <!-- Bootstrap core JavaScript -->
  <script src="../resource/vendor/jquery/jquery.min.js"></script>
  <script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <title>Sproute - AddAuctionItem</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  
  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
  <link href="../resource/css/styles.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> <!-- 이거 -->
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="js/scripts.js"></script>
  
  <!-- 시간 -->
  	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

	<style>
		table, h3 {
		    border-collapse: collapse;
		    text-align:center;
		    margin: auto;
		    align:center;
		}
	</style>
  
  	<script>
  $( function() {
     $( "#datepicker" ).datepicker( {
    	altFormat: "yyyy-mm-dd",
    	dateFormat: 'yy-mm-dd', //Input Display Format
    	minDate: "-0D",
    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
    	
    }); 
  } );

  $(document).ready(function(){
	    $('#timepicker').timepicker({ 
		    timeFormat: 'HH:mm',
		    interval: 5,
		    minTime: '10:00',
		    maxTime: '22:00', 
		});
	});
  </script>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <%@ include file="IncludeSidebar.jsp" %>
      <div class="col-lg-9">
       <h3 class="my-4">경매 상품 등록</h3>
     	<form:form modelAttribute="auction" method="post" align="left" enctype="multipart/form-data">
     	    <div class="form-group row">
				<label for="item.productId" class="col-sm-2 col-form-label col-form-label-sm">상품 카테고리 </label>
				 <div class="col-sm-3">
		    		<form:select path="item.productId" items="${ProductType}" class="form-contorl"/>
		    		<form:errors path="item.productId"/>
				</div>
			</div>
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
								<form:input path="deadline" class="form-control" id="datepicker" readonly="true"/>
								<form:errors path="deadline"/>
							</div>
						<div class="col-md-6">
								<div class="form-group">
									<form:input path="inputTime" name="timepicker" id="timepicker" readonly="true"/>
								</div>
						</div>
				</div>
		
    		<div class="form-group row">
				 <label for="item.price" class="col-sm-2 col-form-label col-form-label-sm">상품 하한가</label>
				 <div class="col-sm-3">
					    <form:input path="item.price" class="form-contorl"/>
             			<form:errors path="item.price"/>
				 </div>
			</div>	
    		<div class="form-group row">
				 <label for="item.stock" class="col-sm-2 col-form-label col-form-label-sm">상품 재고</label>
				 <div class="col-sm-3">
		    		<form:input path="item.stock" class="form-control"/>
		    		<form:errors path="item.stock"/>
				 </div>
			</div> 
    		<div class="form-group row">
				 <label for="file" class="col-sm-2 col-form-label col-form-label-sm">사진</label>
				 <div class="col-sm-3">
		    		<input type="file" name="report" />
				 </div> 
			</div>
    		<div class="form-group row">
				 <label for="item.description" class="col-sm-2 col-form-label col-form-label-sm">상품 설명 </label>
				 <div class="col-sm-8">
		    		<form:textarea path="item.description" class="form-control"/>
		    		<form:errors path="item.description"/>
				 </div> 
			</div>
		<a href="auctionProduct" class="btn btn-primary">취소</a>	
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
  
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- timepicker -->
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

</body>
</html>