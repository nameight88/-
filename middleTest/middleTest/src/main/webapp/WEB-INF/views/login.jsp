<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	<link href="<%=request.getContextPath() %>/resources/login/css/login.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>Login</title>
</head>
<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>

<body>
	<div class="container">
		<p class="text-center">More bootstrap 4 components on <a href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com</a></p>
		<hr>
		<div id="logoContainer">
			<a href="/"><h1>★부동산★ ♥맛동산♥ ♠놀이동산♠</h1></a>
		</div>
		<div class="card bg-light">
			<article class="card-body mx-auto" style="max-width: 400px;">
				<h4 class="card-title mt-3 text-center">LOGIN</h4>
				<br>
				<!-- 로그인 ID/PW 입력공간 -->
				<form class="login" action="loginForm" method="post"   enctype="multipart/form-data" >
					<table>
						<tr>
							<td><b>아이디</b></td>
							<td><input type="text" id="inputId" class="inputLogin" name="inputId"></td>
						</tr>
						<tr>
							<td><b>비밀번호</b></td>
							<td><input type="text" id="inputPass" class="inputLogin" name="inputPass"></td>
						</tr>
					</table><br>
				<div class="d-grid gap-2 col-6 mx-auto">
					<button type="submit" class="btn btn-primary" id="btn-login" name="btn-login"> Login Account </button>
				</div>
				</form>
				<!-- 로그인 ID/PW 입력공간 끝-->
				<p class="divider-text">
	        		<span class="bg-light">OR</span>
	    		</p>
	    		<!-- 계정 찾기 및 생성 연결 공간 -->
	    		<div class="d-grid gap-2 col-6 mx-auto">
					<a href="signUp/signUp1"><button type="button" class="btn btn-primary" id="signupButton"> Create Account </button></a><br><br>
					<a href="signUp/findAccount"><small>find account</small></a>
				</div>
			</article>
			<!-- article:card-body mx-auto -->
			
		</div> 
		<!-- div:card bg-light -->
	</div> 
	<!--div:container-->
	
	<script src="resources/login/js/login.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
</body>
<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
</html>