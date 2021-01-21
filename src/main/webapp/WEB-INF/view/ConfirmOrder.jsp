<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BPSP</title>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>

<div class="container">
	<div class="row">
		<%@ include file="IncludeSidebar.jsp" %>
			<div class="col-lg-9">
				<h3 class="my-4">주문 확인서</h3>
					
				  <form:form modelAttribute="orderForm" method="post">
				  <table>
				    <tr>
				      <td align="center" colspan="2">
				        <font size="4"><b>Order</b></font><br />
				        <font size="3">
				          <b><fmt:formatDate value="${orderForm.order.orderDate}" 
				            pattern="yyyy/MM/dd hh:mm:ss" /></b></font>
				      </td>
				    </tr>
				    <tr>
				      <td colspan="2">
				        <font color="green" size="4"><b>Payment Details</b></font></td>
				    </tr>
				    <tr>
				      <td>Card Type:</td>
				      <td>${orderForm.order.cardType}</td>
				    </tr>
				    <tr>
				      <td>Card Number:</td>
				      <td>${orderForm.order.cardNumber}</td>
				    </tr>
				    <tr>
				      <td>Expiry Date (MM/YY):</td>
				      <td>${orderForm.order.expireDate}</td>
				    </tr>
				    <tr>
				      <td colspan="2">
				        <font color="GREEN" size="4"><b>Address</b></font></td>
				    </tr>
				    <tr>
				      <td>name:</td>
				      <td>${orderForm.order.userName}</td>
				    </tr>
				     <tr>
				      <td>Address:</td>
				      	<td>${orderForm.order.shipAddress}</td>
				      	<c:if test="${shipAddress == true}" >
				      </c:if>
				      <c:if test="${shipAddress == false}" >
				      	<td>${orderForm.order.address}</td>
				      </c:if>
				    </tr>
				  </table>
				  </form:form>
				  <p>
				    <a href='<c:url value="/shop/confirmOrder.do"/>'>
				      <img border="0" src="../images/button_continue.gif" alt="" /></a>
				  </p>
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

</div>
</body>
</html>