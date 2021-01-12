<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Sproute Login</title>
<!-- Bootstrap core CSS -->
<link href="../resource/vendor/bootstrap/css/bootstrap.min.css"rel="stylesheet">
<link href="../resource/css/styles.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Login</h3>
								</div>
								<div class="card-body">
									<form:form modelAttribute="loginForm" method="post" action="login">
										<div class="form-group">
											<label class="small mb-1" for="loginId">아이디</label>
											<form:input class="form-control py-4" path="loginId" placeholder="아이디를 입력해주세요." />
											<form:errors path="loginId"/>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="loginpw">비밀번호</label>
											<form:password class="form-control py-4" path="loginpw" placeholder="비밀번호를 입력해주세요." />
											<form:errors path="loginpw"/>
										</div>
										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											 <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                               <input type="submit" value="로그인" class="btn btn-primary"/>
                                            </div>
										</div>
									</form:form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="<c:url value="/shop/joinForm" />">회원가입</a> <br/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>BPSP</title>
<style>
.login {width: 410px; position: absolute;  left: 37%; top: 25%; transform: tramslate(-50%, -50%);}
ul { list-style:none;}
.login ul {padding: 20px 0 33px;}
.login li {padding: 0 0 12px;}
.l input {height: 35px; width:244px;}
.p input {height: 35px; width:228px;}
.b input {height: 40px; width:300px;}
</style>
</head>
<body>

<%@ include file="IncludeTop.jsp" %><br>

   <form:form modelAttribute="loginForm" method="post" action="login">
      <section class="login">
         <ul>
         <li class="l">
             <label for="loginId">아이디  </label>
            <form:input path="loginId"/>
            <form:errors path="loginId"/>
            <br>
         </li>
         <li class="p">
         <label for="loginpw">비밀번호  </label>
            <form:password path="loginpw"/>
            <form:errors path="loginpw"/>
         </li>
         <li class="b">
         <input type="submit" value="로그인" /> <br><br>
         </li>
         <li>
         <a href="<c:url value="/shop/joinForm" />">회원가입</a> <br/>
         </li>

        </ul>
     </section>
   </form:form>
   
 
</body>
</html> --%>