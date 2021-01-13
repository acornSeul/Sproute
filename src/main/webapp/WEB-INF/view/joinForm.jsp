<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>회원가입</title>
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
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
									<form:form modelAttribute="registerReq" method="post"
										action="register">
										<div class="form-group">
											<label class="small mb-1" for="userId">아이디</label>
											<form:input class="form-control py-4" path="userId"
												placeholder="아이디를 입력해주세요." />
											<form:errors path="userId" />
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="password">비밀번호</label>
													<form:input class="form-control py-4" path="password"
														placeholder="비밀번호를 입력해주세요." />
													<form:errors path="password" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="cPassword">비밀번호 확인</label>
													<form:input class="form-control py-4" path="cPassword"
														placeholder="비밀번호 확인를 입력해주세요." />
													<form:errors path="cPassword" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="name">이름</label>
											<form:input class="form-control py-4" path="name"
												placeholder="이름을 입력해주세요." />
											<form:errors path="name" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="email">이메일</label>
											<form:input class="form-control py-4" path="email"
												placeholder="이메일을 입력해주세요." />
											<form:errors path="email" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="address">주소</label>
											<form:input class="form-control py-4" path="address"
												placeholder="주소를 입력해주세요." />
											<form:errors path="address" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="phone">전화번호</label>
											<form:input class="form-control py-4" path="phone"
												placeholder="전화번호를 입력해주세요." />
											<form:errors path="phone" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="birth">생년월일</label>
											<form:input class="form-control py-4" path="birth"
												placeholder="생년월일을 입력해주세요." />
											<form:errors path="birth" />
										</div>
										<div class="form-group">
										<div class="row">
											<legend class="col-form-label col-sm-2 pt-0">성별</legend>
											<div class="col-sm-10">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="sex"
														value="F" checked> <label class="form-check-label"
														for="gridRadios1"> 여성 </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="radio" name="sex"
														value="M"> <label class="form-check-label"
														for="gridRadios2"> 남성 </label>
												</div>
											</div>
										</div>
										</div>
										<div class="form-group mt-4 mb-0">
											<input type="submit" value="작성완료" class="btn btn-outline-primary"/>
											<a class="btn btn-outline-primary" href="<c:url value="/" />">뒤로가기</a>
										</div>
									</form:form>
								</div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="<c:url value="/shop/loginForm" />">계정이 있나요? 로그인창으로 이동합니다.</a></div>
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
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
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



<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>BPSP</title>
<style>
div {text-align:center;}
</style>
</head>
<body>
<%@ include file="IncludeTop.jsp" %>
   <div>
      <h3>회원가입</h3>
   <form:form modelAttribute="registerReq" method="post" action="register">
      <label for="userId">아이디 : </label>
         <form:input path="userId"/><br>
         <form:errors path="userId"/>
         <br/>
         
      <label for="password">비밀번호 :  </label>
         <form:password path="password"/><br/>
         <form:errors path="password"/>
          <br>
         
      <label for="cPassword">비밀번호 :  </label>
         <form:password path="cPassword"/> <br/>
         <form:errors path="cPassword"/>
          <br>
         
      <label for="name">이름 : </label>
         <form:input path="name"/><br/>
         <form:errors path="name"/>
          <br>
         
      <label for="email">이메일 : </label>
         <form:input path="email"/> <br/>
         <form:errors path="email"/>
         <br>
         
      <label for="address">주소</label>
         <form:input path="address"/><br/>
         <form:errors path="address"/>
       <br>
       
      <label for="phone">전화번호 : </label>
         <form:input path="phone"/> <br/>
         <form:errors path="phone"/>
         <br>
         
                   
      <label for="birth">생년월일 </label>
         <form:input path="birth"/> <br/>
         <form:errors path="birth"/>
         <br>
      
      성별 : Female<input type="radio" name="sex" value="F" checked="checked">
          Male<input type="radio" name="sex" value="M"><br><br/>

      
      <a href="<c:url value="/" />">취소</a>&nbsp;&nbsp;
      <input type="submit" value="회원가입"/><br>
   </form:form>
   </div>   
</body>
</html> --%>