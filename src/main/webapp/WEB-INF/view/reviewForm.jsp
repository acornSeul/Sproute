<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>리뷰 수정</title>
</head>
<body>
	<%@ include file="IncludeTop.jsp"%>
	<div class="container">
		<div class="row form-group">
			<%@ include file="IncludeSidebar.jsp"%>
			<div class="col-lg-9">
				<h3 class="my-4">리뷰작성하기</h3>
				<form:form modelAttribute="reviewReq" method="POST" >
					<!-- 제목 -->
					<div class="form-group row">
						<label for="title" class="col-sm-2 col-form-label col-form-label-sm">제목</label>
						<div class="col-sm-3">
							<form:input path="title" />
							<form:errors path="title" />
						</div>
					</div>
					<!-- 별점 -->
					<div class="form-group row">
						<label for="rating" class="col-sm-2 col-form-label col-form-label-sm">별점</label>
						<div class="form-check form-check-inline">
							<form:radiobutton path="rating" value="5.0" class="form-check-input" />
							<label class="form-check-label" for="rating">5.0</label>
						</div>
						<div class="form-check form-check-inline">
							<form:radiobutton path="rating" value="4.0" />
							<label class="form-check-label" for="rating">4.0</label>
						</div>
						<div class="form-check form-check-inline">
							<form:radiobutton path="rating" value="3.0" />
							<label class="form-check-label" for="rating">3.0</label>
						</div>
						<div class="form-check form-check-inline">
							<form:radiobutton path="rating" value="2.0" />
							<label class="form-check-label" for="rating">2.0</label>
						</div>
						<div class="form-check form-check-inline">
							<form:radiobutton path="rating" value="1.0" />
							<label class="form-check-label" for="rating">1.0</label>
						</div>
						<form:errors path="rating" />
					</div>
					<!-- 내용 -->
					<div class="form-group">
						<label for="content" class="col-sm-2 col-form-label col-form-label-sm">내용</label>
						<form:textarea path="content" rows="3" class="form-control"></form:textarea>
						<form:errors path="content" />
					</div>
					<input type="hidden" name="itemId" value="${reviewReq.itemId}"/>
					<div class="form-group mt-4 mb-0">
						<input type="submit" value="등록" class="btn btn-outline-primary" />
					</div>
			</div>
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
	</footer>
</body>
</html>