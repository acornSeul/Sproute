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
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        
        <script>
  			$( function() {
     		$( "#datepicker" ).datepicker( {
	    	altFormat: "yyyy-mm-dd",
	    	dateFormat: 'yy-mm-dd', //Input Display Format
	    	maxDate: "+0D",
	    	minDate: '-100y',
	    	showMonthAfterYear: true,
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
	    	yearRange: "c-80:c+1"
		    }); 
		  } );
  		</script>
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
											<form:input class="form-control" path="userId"
												placeholder="아이디를 입력해주세요." />
											<form:errors path="userId" />
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="password">비밀번호</label>
													<form:password class="form-control" path="password"
														placeholder="비밀번호를 입력해주세요." />
													<form:errors path="password" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="cPassword">비밀번호 확인</label>
													<form:password class="form-control" path="cPassword"
														placeholder="비밀번호 확인를 입력해주세요." />
													<form:errors path="cPassword" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="name">이름</label>
											<form:input class="form-control" path="name"
												placeholder="이름을 입력해주세요." />
											<form:errors path="name" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="email">이메일</label>
											<form:input class="form-control" path="email"
												placeholder="이메일을 입력해주세요." />
											<form:errors path="email" />
										</div>
		
										<div class="form-group">
										<label class="small mb-1" for="zipCode">우편번호</label>
											<div class="form-row">
												<div class="col-md-3">
													<form:input id="zipCode" class="form-control " path="zipCode"/>
													<form:errors path="zipCode" />
												</div>
												<a id="zipCode" class="btn btn-primary btn-sm" href="#" onclick="javascript:findZipCode()">우편번호 찾기</a>
											</div>
										</div>
											
										<div class="form-group">
											<label class="small mb-1" for="address">주소</label>
											<form:input id="address" class="form-control" path="address"
												placeholder="주소를 입력해주세요." />
											<form:errors path="address" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="detailAddress">상세주소</label>
											<form:input id="detailAddress" class="form-control" path="detailAddress"
												placeholder="상세주소" />
											<form:errors path="detailAddress" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="phone">전화번호</label>
											<form:input class="form-control" path="phone"
												placeholder="전화번호를 입력해주세요." />
											<form:errors path="phone" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="birth">생년월일</label>
											<form:input path="birth" class="form-control" id="datepicker" placeholder="생년월일을 입력해주세요." readonly="true"/>
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
                            <div class="text-muted">Copyright &copy; Sproute 2021</div>
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
			                document.getElementById("detailAddress").value = extraAddr;
			            
			            } else {
			                document.getElementById("detailAddress").value = '';
			            }
			
			            // 우편번호와 주소 정보를 해당 필드에 넣는다.
			            document.getElementById('zipCode').value = data.zonecode;
			            document.getElementById("address").value = addr;
			            // 커서를 상세주소 필드로 이동한다.
			            document.getElementById("detailAddress").focus();
			        }
			    }).open();
			}
		</script>
		
		<!-- DatePicker -->
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </body>
</html>