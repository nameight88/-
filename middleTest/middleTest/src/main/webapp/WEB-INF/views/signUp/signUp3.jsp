<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	
	<!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	<link href="../resources/signUp/css/signUp.css" rel="stylesheet">
	<title>SignUp</title>
</head>
<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
<body>
	<div class="container">
		<p class="text-center">More bootstrap 4 components on <a href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com</a></p>
		<hr>
		<div class="card bg-light">
			<article class="card-body mx-auto" style="max-width: 400px;">
			    <h4 class="card-title mt-3 text-center">Create Account</h4>
			    <br>   
				<form class="signupForm" action="transfer2" enctype="multipart/form-data">
				  	<div class="form-desc"><h6><b>고객정보를 입력해주세요</b></h6></div>
				  	
					<!-- div:중개인 아이디 -->
					<div class="form-desc">아이디</div>
					<div class="form-group input-group">
						<div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-id-badge"></i> </span></div>
					    <input name="agent_id" class="form-control" placeholder="2~15자 영문,숫자 조합" pattern="[A-Za-z0-9]{2,15}" type="text" value="${ propAgent.propAgentName }" required="required">
					    <input type="checkbox" name="idCheckBox" class="id-checkbox" value="id 중복확인" style="display: none;">
					    <button id='idCheck' class='idCheck'>중복확인</button>
					</div>
					
					<!-- div:중개인 비밀번호 -->
					<div class="form-desc">비밀번호</div>
					<div class="form-group input-group">
					    <div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-tty"></i></span></div>
					    <input name="agent_password" class="form-control" placeholder="2~15자 영문,숫자 조합" pattern="[A-Za-z0-9]{2,15}" type="text" value="" required="required">
					</div>

					<!-- div:중개인 비밀번호 확인 -->
					<div class="form-desc">비밀번호 확인</div>
					<div class="form-group input-group">
					    <div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-tty"></i> </span></div>
					    <input name="agent_passwordChk" class="form-control" placeholder="" type="text" value="" required="required">
					</div>
					
					<!-- div:중개인 이름 -->
					<div class="form-desc">이름</div>
					<div class="form-group input-group">
					    <div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i> </span>
						</div>
					    <input name="agent_name" class="form-control" pattern="[가-힣]{2,5}" placeholder="${ customer.customerName }" type="text" value="${ customer.customerName }" required="required">
					</div>
					
					<!-- div:중개인 전화번호 입력 -->
					<div class="form-desc">전화번호(- 기호 포함)</div>
					<div class="form-group input-group">
					    <div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-phone"></i> </span>
						</div>
					    <input name="agent_phone" class="form-control" placeholder="${ customer.customerPhone }" type="text" value="${ customer.customerPhone }" required="required">
					</div>
					
					<!-- div:중개인 이메일  -->
					<div class="form-desc">이메일</div>
					<div class="form-group input-group">
					    <div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
						</div>
					    <input name="agent_email" class="form-control" placeholder="${ customer.customerEmail }" type="email" value="${ customer.customerEmail }" required="required">
					</div>

	
					
					<!-- div:중개인 정보 - 면허번호 입력 -->
					<div class="form-desc">부동산 중개인 정보 첨부</div>
					<div class="form-group input-group">
					    <div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-address-card"></i> </span>
						</div>
					    <input name="license_num" class="form-control" placeholder="면허등록번호를 (-)포함 입력" pattern="[A-Za-z0-9]{3}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}" type="text" value="${ customer.customerPhone }" required="required">
					</div>

					
					<!-- div:중개사무소 이름 입력 -->
					<div class="form-desc"></div>
					<div class="form-group input-group">
					    <div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-address-card"></i> </span></div>
					    <input name="agency" class="form-control" placeholder="사무소 이름 작성란" type="text" value="${ customer.customerPhone }" required="required">
					</div>
					
					<!-- div:중개인 증명사진 입력 -->
					<div class="form-desc"></div>
					<div class="form-group input-group">
					    <div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-folder"></i> </span></div>
					    <input name="agentImg_url" class="form-control" placeholder="중개인의 증명사진을 첨부" type="file" value="${ customer.customerPhone }" required="required">
					</div>
					<div class="addinput"></div>
					
				    <!-- div:form-group input-group -->
				    <div class="form-group">
				        <input type="submit" class="btn btn-primary btn-block" value="계정 만들기"></input>
				    </div>
				    <!-- div:form-group -->      
		    		<p class="text-center"> 계정이 이미 존재하나요?  <a href="/middleTest/login">Log In</a> </p>                                                                 
				</form>
			</article>
			<!-- article:card-body mx-auto -->
		</div> 
		<!-- div:card bg-light -->
	</div> 
	<!-- div:container -->
	<br><br>
	<article class="bg-secondary mb-3">  
		<div class="card-body text-center">
		    <h3 class="text-white mt-3">Bootstrap 4 UI KIT</h3>
			<p class="h5 text-white">Components and templates<br>for Ecommerce, marketplace, booking websites and product landing pages</p>
			<br>
			<p><a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com <i class="fa fa-window-restore "></i></a></p>
		</div>
		<!-- div:card-body text-center -->
		<br><br>
	</article>
	<!-- article:bg-secondary mb-3 -->
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="../resources/common/js/agent_submit.js"></script>
</body>
</html>