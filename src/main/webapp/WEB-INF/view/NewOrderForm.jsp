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
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.1.1.min.js"/>"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	var message = '${message}';
	if (message != "") {
	   alert(message);
	}

	function chk(){
		var address = document.getElementById('address').value;
		var detail = document.getElementById('addrDetail').value;
		var zipCode = document.getElementById('zipCode').value;

		var shipAddr = document.getElementById('shipAddress');
		var shipDetail = document.getElementById('shipAddrDetail');
		var shipZip = document.getElementById('shipZipCode');
		
		var origin = document.getElementById('originShip');
		var diff = document.getElementById('checkShip');
		
		if(origin.checked == true){
			shipAddr.disabled = false;
			shipDetail.disabled = false;
			shipZip.disabled = false;
			shipAddr.value = address;
			shipDetail.value = detail;
			shipZip.value = zipCode;
		}
		else if (origin.checked == false){
			shipAddr.disabled = true;
			shipDetail.disabled = true;
			shipZip.disabled = true;
			shipAddr.value = '';
			shipDetail.value = '';
			shipZip.value = '';
		}

		if(diff.checked == true){
			shipAddr.disabled = false;
			shipZip.disabled = false;
			shipDetail.disabled = false;
		}
		else if (origin.checked == false){
			shipAddr.disabled = true;
			shipZip.disabled = true;
			shipDetail.disabled = true;
		}

	}

</script>
<%@ include file="IncludeTop.jsp" %>

<div class="container">
	<div class="row">
		<%@ include file="IncludeMypageBar.jsp" %>
			<div class="col-lg-9">
				<h3 class="my-4">주문하기</h3>
					
				<form:form id="form1" modelAttribute="orderForm" method="post">
					  <form:errors cssClass="error" /> <br><br>
					  	<font color="green" size="4"><b>Payment Details</b></font></td>
					        <div class="form-group row">
								<label for="order.cardType" class="col-sm-2 col-form-label col-form-label-sm">카드 타입 : </label>
								<div class="col-sm-3">
								<form:select path="order.cardType" items="${creditCardTypes}" />
								<form:errors path="order.cardType" />
								</div>
							</div>
							<div class="form-group row">
								<label for="order.cardNumber" class="col-sm-2 col-form-label col-form-label-sm">카드 번호 : </label>
								<div class="col-sm-3">
								<form:input path="order.cardNumber" class="form-control"/>
								<form:errors path="order.cardNumber" />
								</div>
							</div>
							<div class="form-group row">
								<label for="order.expireDate" class="col-sm-2 col-form-label col-form-label-sm">만료일 (MM/YY) :</label>
								<div class="col-sm-3">
								<form:input path="order.expireDate" class="form-control"/>
								<form:errors path="order.expireDate" />
								</div>
							</div>
					
							 <font color="green" size="4"><b>Billing Address</b></font></td>
							 <div class="form-group row">
								<label for="order.userName" class="col-sm-2 col-form-label col-form-label-sm">이름 :</label>
								<div class="col-sm-3">
								<form:input path="order.userName" class="form-control"/>
								<form:errors path="order.userName" />
								</div>
							</div>
							<div class="form-group row">
								<label for="order.zipCode" class="col-sm-2 col-form-label col-form-label-sm">우편번호 :</label>
								<div class="col-md-2">
									<form:input id="zipCode" name="zipCode" class="form-control" path="order.zipCode"/>
									<form:errors path="order.zipCode" />
								</div>
							</div>
							<div class="form-group row">
								<label for="order.address" class="col-sm-2 col-form-label col-form-label-sm">주소 :</label>
								<div class="col-sm-3">
									<form:input id="address" name="address" class="form-control" path="order.address"/>
									<form:errors path="order.address" />
								</div>
							</div>
							<div class="form-group row">
								<label for="order.addrDetail" class="col-sm-2 col-form-label col-form-label-sm">상세주소 :</label>
								<div class="col-sm-3">
									<form:input id="addrDetail" name="addrDetail" class="form-control" path="order.addrDetail"/>
									<form:errors path="order.addrDetail" />
								</div>
							</div>
							
							<hr/>
							<font color="green" size="4"><b>Shipping Address</b></font></td>
							<div class="form-group row">
								<label for="order.shipZipCode" class="col-sm-2 col-form-label col-form-label-sm">우편번호 : </label>
								<div class="form-row col-sm-4">	
									<div class="col-md-5">
										<form:input id="shipZipCode" name="shipZipCode" class="form-control" path="order.shipZipCode" disabled="true"/>
										<form:errors path="order.shipZipCode" />
									</div>
									<a id="zipCode" class="btn btn-primary btn-sm" href="#" onclick="javascript:findZipCode()">우편번호 찾기</a>
								</div>
								
							</div>
						
							<div class="form-group row">
								<label for="order.shipAddress" class="col-sm-2 col-form-label col-form-label-sm">주소 : </label>
								<div class="col-md-3">
									<form:input id="shipAddress" name="shipAddress" class="form-control" path="order.shipAddress" disabled="true"/>
									<form:errors path="order.shipAddress" />
								</div>
							</div>
							<div class="form-group row">
								<label for="order.shipAddrDetail" class="col-sm-2 col-form-label col-form-label-sm">상세주소 : </label>
								<div class="col-sm-3">
								<form:input id="shipAddrDetail" name="shipAddrDetail" class="form-control" path="order.shipAddrDetail" disabled="true"/>
								<form:errors path="order.shipAddrDetail" />
								</div>
							</div>
							<div class="form-group form-check">
							<form:checkbox id="originShip" name="originShip" path="shippingAddressRequired" class="form-check-input" label="주문자 배송지와 동일" onClick="chk();"/><br/>
					    	<form:checkbox id="checkShip" name="checkShip" path="shippingAddressRequired" class="form-check-input" label="다른 배송지로 변경"
					    	onClick="chk();"/>

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
<script>
			function findZipCode() {
			    new daum.Postcode({
			        oncomplete: function(data) {
			            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			            var addr = ''; // 주소 변수
			            var extraAddr = ''; // 참고항목 변수
			
			            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                addr = data.roadAddress;
			            } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                addr = data.jibunAddress;
			            }
			
			            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			            if(data.userSelectedType === 'R'){
			                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                    extraAddr += data.bname;
			                }
			                // 건물명이 있고, 공동주택일 경우 추가한다.
			                if(data.buildingName !== '' && data.apartment === 'Y'){
			                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                }
			                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                if(extraAddr !== ''){
			                    extraAddr = ' (' + extraAddr + ')';
			                }
			                // 조합된 참고항목을 해당 필드에 넣는다.
			                document.getElementById("shipAddrDetail").value = extraAddr;
			            
			            } else {
			                document.getElementById("shipAddrDetail").value = '';
			            }
			
			            // 우편번호와 주소 정보를 해당 필드에 넣는다.
			            document.getElementById('shipZipCode').value = data.zonecode;
			            document.getElementById("shipAddress").value = addr;
			            // 커서를 상세주소 필드로 이동한다.
			            document.getElementById("shipAddrDetail").focus();
			        }
			    }).open();
			}
		</script>

</html>

