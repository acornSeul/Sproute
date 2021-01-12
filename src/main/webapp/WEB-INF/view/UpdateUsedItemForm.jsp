<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <title>나의 입찰내역</title>
  <!-- Bootstrap core CSS -->
  <link href="../resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resource/css/shop-homepage.css" rel="stylesheet">
<style>
h3 {
    border-collapse: collapse;
    text-align:center;
    margin: auto;
    align:center;
}
</style>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <%@ include file="IncludeMypageBar.jsp" %>
      <div class="col-lg-9">
       <h3 class="my-4">중고 상품 수정</h3>
				<form:form modelAttribute="item" method="post"
					enctype="multipart/form-data">
					<table id="tstyle">
						<tr>
							<td>
								<h3>중고 상품 수정</h3>
								<table>
									<tr>
										<td>상품명</td>
										<td><form:label path="title" /> <form:input path="title" />
											<form:errors path="title" /></td>
									</tr>
									<tr>
										<td>가격</td>
										<td><form:label path="price" /> <form:input path="price" />
											<form:errors path="price" /></td>
									</tr>
									<tr>
										<td>수량</td>
										<td><form:label path="stock" /> <form:input path="stock" />
											<form:errors path="stock" /></td>
									</tr>
									<tr>
										<td>설명</td>
										<td><form:label path="description" /> <form:input
												path="description" /> <form:errors path="description" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<br />
					<a href="ProductManagement">취소</a> &nbsp;&nbsp;
  <input type="submit" value="OK">
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
</html>








<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BPSP</title>
<style>
a { color:black; text-decoration:none;}
#tstyle { border-spacing:7px; }
#tstyle {
   margin:auto;
}
div { text-align:center; }
</style>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
<%@ include file="IncludeSidebar.jsp" %>
<div>
<form:form modelAttribute="item" method="post" enctype="multipart/form-data">
  <table id="tstyle">
     <tr>
       <td>
         <h3>중고 상품 수정</h3>
         <table>
           <tr>
             <td>상품명</td>
             <td>
             <form:label path="title" />
             <form:input path="title" />
             <form:errors path="title" />
             </td>
           </tr>
           <tr>
             <td>가격</td>
             <td>
             <form:label path="price" />
             <form:input path="price" />
             <form:errors path="price" />
             </td>
           </tr>
           <tr>
             <td>수량</td>
             <td>
             <form:label path="stock" />
             <form:input path="stock" />
             <form:errors path="stock" />
             </td>
           </tr>
           <tr>
             <td>설명</td>
             <td>
             <form:label path="description" />
             <form:input path="description" />
             <form:errors path="description" />
             </td>
           </tr>
         </table>
       </td>
     </tr>
  </table>
  <br />
  <a href="ProductManagement">취소</a> &nbsp;&nbsp;
  <input type="submit" value="OK">
</form:form>
</div>
</body>
</html> --%>