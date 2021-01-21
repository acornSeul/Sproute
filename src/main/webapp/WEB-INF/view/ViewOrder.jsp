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
				<table>
    <tr>
      <td align="center" colspan="2"><font size="4">
        <b>Order #<c:out value="${orderForm.order.orderId}" /></b></font> <br />
        <font size="3">
          <b><fmt:formatDate value="${orderForm.order.orderDate}" 
            pattern="yyyy/MM/dd hh:mm:ss" /></b></font>
        </font></td>
    </tr>
    <tr>
      <td colspan="2"><font color="green" size="4"><b>Payment Details</b></font></td>
    </tr>
    <tr>
      <td>Card Type:</td>
      <td><c:out value="${orderForm.order.cardType}" /></td>
    </tr>
    <tr>
      <td>Card Number:</td>
      <td><c:out value="${orderForm.order.cardNumber}" /></td>
    </tr>
    <tr>
      <td>Expiry Date (MM/YY):</td>
      <td><c:out value="${orderForm.order.expireDate}" /></td>
    </tr>
    <tr>
      <td colspan="2"><font color="green" size="4"><b>Address</b></font></td>
    </tr>
    <tr>
      <td>name:</td>
      <td>${orderForm.order.userName}</td>
    </tr>
     <tr>
      <td>Address:</td>
      <c:if test="${shipAddress == true}" >
      	<td>${orderForm.order.shipAddress}</td>
      </c:if>
      <c:if test="${shipAddress == false}" >
      	<td>${orderForm.order.address}</td>
      </c:if>
    </tr>
    <tr>
      <td colspan="2"><b><font color="green" size="4">구매 항목:</font></b></td>
    </tr>
    <tr>
      <td colspan="2">
        <table style="width:100%">
          <tr style="background-color:#CCCCCC;">
            <td><b>Item ID</b></td>
            <td><b>Description</b></td>
            <td><b>Quantity</b></td>
            <td><b>Price</b></td>
            <td><b>Total Cost</b></td>
          </tr>
          <%-- <c:if test='${check == 0}'> --%>
          <c:forEach var="items" items="${items}">
            <tr>
              <td>
                <b>
                 <c:if test='${items.item.categoryId.equals("sale")}'>
                 	<a href='<c:url value="/shop/viewItemDetail.do">
                  	<c:param name="itemId" value="${items.item.itemId}"/></c:url>'>
                    <font color="black"><c:out value="${items.item.itemId}" /></font></a>
                 </c:if>
                 <c:if test='${items.item.categoryId.equals("used")}'>
                 	<a href='<c:url value="viewProduct">
                 	<c:param name="itemId" value="${items.item.itemId}"/></c:url>'>
                    <font color="black"><c:out value="${items.item.itemId}" /></font></a>
                 </c:if>
                 <c:if test='${items.item.categoryId.equals("Auction")}'>
                 	<a href='<c:url value="/shop/auctionItemDetail">
                 	<c:param name="itemId" value="${items.item.itemId}"/></c:url>'>
                    <font color="black"><c:out value="${items.item.itemId}" /></font></a>
                 </c:if>
                </b>
              </td>
              <td>
              	${items.item.description}
              </td>
              <td>
              	${items.quantity}
              </td>
              <td>
              	${items.item.price}
              </td>
              <td>
              	${items.item.totalPrice}
              </td>
            </tr>
          </c:forEach>
        </table><br/>
        <a href="<c:url value="/"/>" class="btn-sm btn-primary">확인</a>
      </td>
    </tr>
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