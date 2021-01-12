<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sproute - SaleProduct</title>

</head>
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
	
	<div class="container">
	<div class="row">
		<%@ include file="IncludeSidebar.jsp" %>
		<div class="col-lg-9 row">
		<c:choose>
			<c:when test="${!empty Items}">
			  <c:forEach var="si" items="${Items}">
		         <div class="col-lg-4 col-md-5 mb-4">
		            <div class="card h-100">
		              <a href="<c:url value='/shop/viewItemDetail.do'><c:param name='itemId' value='${si.itemId}'/></c:url>"><img class="card-img-top" src="http://placehold.it/700x400" alt="<c:url value='/upload/${si.imgName}' />"></a>
		              <div class="card-body">
		                <h4 class="card-title">
		                  <a href="<c:url value='/shop/viewItemDetail.do'><c:param name='itemId' value='${si.itemId}'/></c:url>">${si.title}</a>
		                </h4>
		                <h5>${si.price}</h5>
		                <!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p> -->
		              </div>
		              <div class="card-footer">
		                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
		              </div>
		            </div>
		          </div>
		          </c:forEach>
		        </c:when>
		        <c:otherwise>
			        <h2>해당 상품이 존재하지 않습니다.</h2> 
			    </c:otherwise>
		      </c:choose>
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