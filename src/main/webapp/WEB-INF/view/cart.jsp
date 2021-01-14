<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sproute - Cart</title>
<style>
	table,h4 { text-align:center;}
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
		<%@ include file="IncludeSidebar.jsp" %>
			<div class="col-lg-9">
				<h4 class="my-4">${userName}님의 장바구니</h4>
 	<h5>일반 상품</h5>
      <form action='<c:url value="/shop/updateCartQuantities"/>' method="post">
	      <table class="table table-sm">
				<thead class="thead-light">
					<tr>
						<th scope="col">상품명</th>
						<th scope="col">재고 여부</th>
						<th scope="col">상품 가격</th>
						<th scope="col">수량</th>
						<th scope="col">총 금액</th>
						<th scope="col"> </th>
					</tr>
				</thead>
				<tbody>
				 <c:if test="${cart.numberOfItems == 0}">	<%-- 장바구니가 비어있다면 띄움 --%>
		            <tr>
		              <td colspan="8"><b>장바구니가 비어 있습니다.</b></td>
		            </tr>
		          </c:if>
		          
					<c:forEach var="cartItem" items="${cart.cartItemList.pageList}">
						<tr>
			              <td><b>
			                <a href='<c:url value="/shop/viewItemDetail.do">
			                  <c:param name="itemId" value="${cartItem.item.itemId}"/></c:url>'>
			                  <c:out value="${cartItem.item.title}" />		<%-- 상품명 --%>
			                </a></b></td>
			              <td><c:out value="${cartItem.inStock}" /></td>	<%-- 상품 재고 여부 --%>
			              <td><fmt:formatNumber
			                  value="${cartItem.item.price}" /></td>		<%-- 상품 1개 가격 --%>
			              <td><input type="text" size="3" 
			              name='<c:out value="${cartItem.item.itemId}"/>'value='<c:out value="${cartItem.quantity}"/>' /></td>		<%-- 상품 수량 설정 --%>
			              <td>
			              <fmt:formatNumber
			                  value="${cartItem.totalPrice}" /></td>		<%-- 상품 전체 가격 --%>
			              <td><a href='<c:url value="/shop/removeItemFromCart">		<%-- 상품 삭제 --%>
			                    <c:param name="workingItemId" value="${cartItem.item.itemId}"/></c:url>' class="btn-sm btn-primary">삭제
			                    </a>
			              </td>
	            		</tr>
					</c:forEach>
					
	 			<!-- 가격 정보 -->
 			          <tr>
			            <td colspan="7" align="right">
			              <b>합계 금액: <fmt:formatNumber value="${cart.subTotal}" />원</b><br><br> 
			              <input type="image" src="../images/button_update_cart.gif" name="update" />
			            </td>
			          </tr>
			          <tr>
			            <td colspan="7" align="right">
							 <div style="text-align:center">
					          <c:if test="${!cart.cartItemList.firstPage}">
					            <a href='<c:url value="viewCart.do?page=previousCart"/>'>
					              <font color="green"><B>&lt;&lt; 이전페이지</B></font></a>
					          </c:if>
					          <c:if test="${!cart.cartItemList.lastPage}">
					            <a href='<c:url value="viewCart.do?page=nextCart"/>'>
					              <font color="green"><B>다음페이지 &gt;&gt;</B></font></a>
					          </c:if>
			        		</div>
			            </td>
			          </tr>
				</tbody>
			</table>	     
      </form>   
      
      <!-- 중고 카트 -->  
     <h5>중고 상품</h5>
      <form action='<c:url value="/shop/updateCartQuantities"/>' method="post">
	      <table class="table table-sm">
				<thead class="thead-light">
					<tr>
						<th scope="col">상품명</th>
						<th scope="col">재고 여부</th>
						<th scope="col">상품 가격</th>
						<th scope="col">수량</th>
						<th scope="col">총 금액</th>
						<th scope="col"> </th>
					</tr>
				</thead>
				<tbody>
				  <c:if test="${cart.numberOfUsedItems == 0}">	<%-- 장바구니가 비어있다면 띄움 --%>
		            <tr>
		              <td colspan="8"><b>장바구니가 비어 있습니다.</b></td>
		            </tr>
		          </c:if>
		          
					<c:forEach var="cartItem" items="${cart.usedCartItemList.pageList}">
						<tr>
			              <td><b>
			                <a href='<c:url value="viewProduct">
			                  <c:param name="itemId" value="${cartItem.item.itemId}"/></c:url>'>
			                  <c:out value="${cartItem.item.title}" />		<%-- 상품명 --%>
			                </a></b></td>
			              <td style="text-align:center"><c:out value="${cartItem.inStock}" /></td>
			              <td style="text-align:right"><fmt:formatNumber
			                  value="${cartItem.item.price}" /></td>		<%-- 상품 1개 가격 --%>
			              <td style="text-align:center">
			                <input type="text" size="3"
			                  name='<c:out value="${cartItem.item.itemId}"/>'
			                  value='<c:out value="${cartItem.quantity}"/>' /></td>		<%-- 상품 수량 설정 --%>
			              <td style="text-align:right"><fmt:formatNumber
			                  value="${cartItem.totalPrice}" /></td>		<%-- 상품 전체 가격 --%>
			              <td><a href='<c:url value="/shop/removeItemFromCart">		<%-- 상품 삭제 --%>
			                    <c:param name="workingItemId" value="${cartItem.item.itemId}"/></c:url>' class="btn-sm btn-primary">삭제
			                    </a>
			              </td>
			            </tr>
					</c:forEach>
					
				<!-- 가격 정보 -->
			          <tr>
			            <td colspan="7" align="right">
			              <b>합계 금액: <fmt:formatNumber value="${cart.usedSubTotal}" />원</b><br><br> 
			              <input type="image" src="../images/button_update_cart.gif" name="update" />
			            </td>
			          </tr>
			          <tr>
			            <td colspan="7" align="right">
							 <div style="text-align:center">
					          <c:if test="${!cart.cartItemList.firstPage}">
					            <a href='<c:url value="viewCart.do?page=previousCart"/>'>
					              <font color="green"><B>&lt;&lt; 이전페이지</B></font></a>
					          </c:if>
					          <c:if test="${!cart.cartItemList.lastPage}">
					            <a href='<c:url value="viewCart.do?page=nextCart"/>'>
					              <font color="green"><B>다음페이지 &gt;&gt;</B></font></a>
					          </c:if>
			        		</div>
			            </td>
			          </tr>
				</tbody>
			</table>	     
      </form>
        <div style="text-align:center">
         <a href='<c:url value="/shop/newOrder.do"/>' class="btn btn-primary">구매하기</a>
      </div>   
     
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