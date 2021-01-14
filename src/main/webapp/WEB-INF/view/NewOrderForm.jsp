<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sproute - 유아용품쇼핑몰</title>
<style>
a { color:black; text-decoration:none; }
li { list-style:none; margin-left:-1px; z-index:1; }
ul { display:inline-block; *display:inline; zoom:1; }
h3 { text-align:center;}
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
				<h3 class="my-4">주문하기</h3>
					
				<form:form modelAttribute="orderForm" method="post">
  <form:errors cssClass="error" /> <br><br>
  	<font color="green" size="4"><b>Payment Details</b></font></td>
        <div class="form-group row">
			<label for="order.cardType" class="col-sm-2 col-form-label col-form-label-sm">Card Type:</label>
			<div class="col-sm-3">
			<form:select path="order.cardType"  items="${creditCardTypes}" />
			<form:errors path="order.cardType" />
			</div>
		</div>
		<div class="form-group row">
			<label for="order.cardNumber" class="col-sm-2 col-form-label col-form-label-sm">Card Number</label>
			<div class="col-sm-3">
			<form:input path="order.cardNumber" />
			<form:errors path="order.cardNumber" />
			</div>
		</div>
		<div class="form-group row">
			<label for="order.expireDate" class="col-sm-2 col-form-label col-form-label-sm">Expiry Date (MM/YY):</label>
			<div class="col-sm-3">
			<form:input path="order.expireDate" />
			<form:errors path="order.expireDate" />
			</div>
		</div>

		 <font color="green" size="4"><b>Billing Address</b></font></td>
		 <div class="form-group row">
			<label for="order.userName" class="col-sm-2 col-form-label col-form-label-sm">이름:</label>
			<div class="col-sm-3">
			<form:input path="order.userName" />
			<form:errors path="order.userName" />
			</div>
		</div>
		<div class="form-group row">
			<label for="order.address" class="col-sm-2 col-form-label col-form-label-sm">주소:</label>
			<div class="col-sm-3">
			<form:input path="order.address"/>
			<form:errors path="order.address" />
			</div>
		</div>
		<div class="form-group row">
			<label for="order.shipAddress" class="col-sm-2 col-form-label col-form-label-sm">ShipAddress</label>
			<div class="col-sm-3">
			<form:input path="order.shipAddress"/>
			<form:errors path="order.shipAddress" />
			</div>
		</div>
		<div class="form-group form-check">
    	<form:checkbox path="shippingAddressRequired" class="form-check-input" label="Ship to different address..."/>
  	</div>
  	
  	<input type="image" src="../images/button_submit.gif">
</form:form>	
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

