<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>일반상품전체보기</title>
<style>
a { color:black; text-decoration:none; }
li { list-style:none; margin-left:-1px; z-index:1; }
ul { display:inline-block; *display:inline; zoom:1; }
div { text-align:center; }
#m {
  display: block;
  max-width:200px;
  max-height:222px;
  width: auto;
  height: auto;
}
</style>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
<%--  <%@ include file="IncludeQuickHeader.jsp" %> --%>
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
	</center>
<%@ include file="IncludeSidebar.jsp" %>
<div>
   <c:choose>
       <c:when test="${!empty Items}">
              <c:forEach var="si" items="${Items}">
   <ul>
      <li><a href="<c:url value='/shop/viewItemDetail.do'><c:param name='itemId' value='${si.itemId}'/></c:url>"><img id="m" src="<c:url value='/upload/${si.imgName}' />" /></a></li>
      <li><a href="<c:url value='/shop/viewItemDetail.do'><c:param name='itemId' value='${si.itemId}'/></c:url>">상품명:<strong>${si.title}</strong></a></li>
      <li>가격:${si.price}</li>
   </ul>
   </c:forEach> 
         </c:when>
       <c:otherwise>
           <h2>해당 상품이 존재하지 않습니다.</h2> 
       </c:otherwise>
 </c:choose>
</div>
</body>
</html>