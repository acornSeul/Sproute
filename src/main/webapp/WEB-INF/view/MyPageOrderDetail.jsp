<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>주문 상세</title>
</head>
<body>

<br/>
${orderInfo.orderDate}
<br/>
${orderInfo.shipAddress}
<br/>
${orderInfo.address}
<br/>
${orderInfo.totalPrice}
<br/>
${orderInfo.cardType}
<br/>
${orderInfo.cardNumber}
<br/>
${orderInfo.expireDate}
<br/>
${orderInfo.userName}
<br/>



<table class="table">
					<thead class="thead-light">
						<tr>
							<td colspan='5'><strong>구매상품</strong></td>
						</tr>
						<tr>
							<th scope="col">상품명</th>
							<th scope="col">가격</th>
							<th scope="col">구매 개수</th>
							<th scope="col">총 가격</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${itemList}">
						<tr>
							<td>${item.title}</td>
							<td>${item.price}</td>
							<td>${item.quantity}</td>
							<td>${item.quantity * item.price}</td>
							<td><a
								href="<c:url value='/mypage/MyBidMain/delete'><c:param name='bidId' value='${bidItem.bidId}'/></c:url>"><strong>삭제</strong></a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
</body>
</html>