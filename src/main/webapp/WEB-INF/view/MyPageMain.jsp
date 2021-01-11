<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage Main</title>
<style>
a { color:black; text-decoration:none; }
li { list-style:none; margin-left:-1px; z-index:1; }
ul { display:inline-block; *display:inline; zoom:1; }
div, h3 { text-align:center;}
</style>
</head>
<body>
<script type="text/javascript">
	var message = '${message}';
	if (message != "") {
	   alert(message);
	}
</script>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <%@ include file="IncludeTop.jsp" %>
</nav>

<div class="container">
	<div class="row">
		<%@ include file="IncludeMypageBar.jsp" %>
			<div class="col-lg-9">
				<h3 class="my-4">${userName}님의 마이페이지</h3>
					<ul>
      					<li><img border="0" src="../images/m_iconM.png" /></li>
   					</ul>
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