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
  <title>Sproute - Hompage</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
  <style>
		a { color:black; text-decoration:none; }
		li { list-style:none; margin-left:-1px; z-index:1; }
		ul { display:inline-block; *display:inline; zoom:1;  margin-left: auto; margin-right: auto;}
		h3 { text-align:center;}
  </style>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
  <!-- Page Content -->
  <div class="container">
    <div class="row form-group">
      <%@ include file="IncludeMypageBar.jsp" %>
      
      <div class="col-lg-9">
      <h3 class="my-4">회원정보 수정</h3>
      	<!-- 아이디 -->
			<form:form modelAttribute="modifyReq" method="post" action="modify">
			<div class="form-group row">
				  <label for="userId" class="col-sm-2 col-form-label col-form-label-sm">아이디 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="userId" value="${modifyReq.userId}"/>
			      		<form:hidden path="userId" value="${userId}"/>
			       </div>
			</div>
		<!-- 비밀번호 -->
			<div class="form-group row">
				 <label for="password" class="col-sm-2 col-form-label col-form-label-sm">비밀번호 </label>
				 <div class="col-sm-3">
				 	 <form:password class="form-control" path="password"/> 
			         <form:errors path="password"/>
				 </div>
			</div>
		<!-- 비밀번호 확인 -->
			<div class="form-group row">
				 <label for="cPassword" class="col-sm-2 col-form-label col-form-label-sm">비밀번호 확인 </label>
				 <div class="col-sm-3">
				 	 <form:password class="form-control" path="cPassword"/> 
			         <form:errors path="cPassword"/>
				 </div>
			</div>
		<!-- 이름 -->
			<div class="form-group row">
				 <label for="name" class="col-sm-2 col-form-label col-form-label-sm">이름</label>
				 <div class="col-sm-3">
				 	 <form:input class="form-control" path="name" value="${modifyReq.name}"/> 
			         <form:errors path="name"/>
				 </div>
			</div>  
		<!-- 이메일 -->
			<div class="form-group row">
				 <label for="email" class="col-sm-2 col-form-label col-form-label-sm">이메일</label>
				 <div class="col-sm-3">
				 	 <form:input class="form-control" path="email" value="${modifyReq.email}"/> 
			         <form:errors path="email"/>
				 </div>
			</div>  
		<!-- 주소 -->
			<div class="form-group row">
				 <label for="address" class="col-sm-2 col-form-label col-form-label-sm">주소</label>
				 <div class="col-sm-4">
				 	 <form:input class="form-control" path="address" value="${modifyReq.address}"/> 
			         <form:errors path="address"/>
				 </div>
			</div>   
		<!-- 전화번호 -->
			<div class="form-group row">
				 <label for="phone" class="col-sm-2 col-form-label col-form-label-sm">전화 번호</label>
				 <div class="col-sm-3">
				 	 <form:input class="form-control" path="phone" value="${modifyReq.phone}"/> 
			         <form:errors path="phone"/>
				 </div>
			</div>   
		<!-- 생년월일 -->
	 		<div class="form-group row">
				 <label for="birth" class="col-sm-2 col-form-label col-form-label-sm">생년월일</label>
				 <div class="col-sm-3">
				 	 <form:input class="form-control" path="birth" value="${modifyReq.birth}"/> 
			         <form:errors path="birth"/>
				 </div>
			</div>  
		<!-- 성별 -->
			<div class="form-group row">
				  <label for="sex" class="col-sm-2 col-form-label col-form-label-sm">성별 </label>
			         <div class="col-sm-3">
			         	<input type="text" readonly class="form-control-plaintext" id="sex" value="${modifyReq.sex}"/>
			       </div>
			</div>
				<!-- 
      				 성별 :<c:if test="${modifyReq.sex == 'F'}">
			            Female<input type="radio" name="sex" value="F" checked="checked">
			            Male<input type="radio" name="sex" value="M">
			         </c:if>
			         <c:if test="${modifyReq.sex == 'M'}">
			            Female<input type="radio" name="sex" value="F">
			            Male<input type="radio" name="sex" value="M" checked="checked">
			         </c:if>
			          <br>
			      -->    
			      <a href="<c:url value="/mypage/memberDetail" />" class="btn btn-primary btn-sm">취소</a>
			      <input type="submit" value="완료" class="btn btn-primary btn-sm"/>
			</form:form> 
		
    </div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>
</body>


