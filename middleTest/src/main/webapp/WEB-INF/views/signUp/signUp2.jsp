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
             
             <!-- 회원가입 form!! ############################################################## -->
            <form class="signupForm" action="transfer.do" enctype="multipart/form-data">
               <div class="form-desc">
               <h6><b>고객정보를 입력해주세요</b></h6></div>      
               
               <!-- div:사용자 아이디 -->
               <div class="form-desc">아이디</div>
               <div class="form-group input-group">
                  <div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-id-badge"></i> </span></div>
                   <input name="user_id" class="form-control" placeholder="2~15자 영문,숫자 조합" pattern="[A-Za-z0-9]{2,10}" type="text" value="" required="required">
                   <input type="checkbox" name="idCheckBox" class="id-checkbox" value="id 중복확인" >
                   <button id='idCheck' class="idCheck" type="button" >중복확인</button>
               </div>
               <div><span class="resultIdMessage" ><h6></h6></span></div>
               
               <!-- div:사용자 비밀번호 -->
               <div class="form-desc">비밀번호</div>
               <div class="form-group input-group">
                   <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fa fa-tty"></i></span>
                  </div>
                   <input name="user_password" class="form-control" placeholder="2~15자 영문,숫자 조합" pattern="[A-Za-z0-9]{2,15}" type="text" value="" required="required">
               </div>
               
               <!-- div:사용자 비밀번호 확인 -->
               <div class="form-desc">비밀번호 확인</div>
               <div class="form-group input-group">
                   <div class="input-group-prepend">
                     <span class="input-group-text"> <i class="fa fa-tty"></i> </span>
                  </div>
                   <input name="user_passwordChk" class="form-control" placeholder="입력한 비밀번호와 동일하게 작성"  type="text" value="" required="required">
               </div>
               
               <!-- div:사용자 이름 -->
               <div class="form-desc">이름</div>
               <div class="form-group input-group">
                   <div class="input-group-prepend">
                     <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                  </div>
                   <input name="user_name" class="form-control" pattern="[가-힣]{2,5}" type="text" required="required">
               </div>
               
               <!-- div:사용자 이메일  -->
               <div class="form-desc">이메일</div>
               <div class="form-group input-group">
                   <div class="input-group-prepend"><span class="input-group-text"> <i class="fa fa-envelope"></i> </span></div>
                   <input name="user_email" class="form-control" placeholder="" type="email" value="${ customer.customerEmail }" required="required">
               </div>
               <div><span class="resultMessage" ><h6></h6></span></div>
               
               
               <!-- div:사용자 전화번호 입력 -->
               <div class="form-desc">전화번호(- 기호 포함)</div>
               <div class="form-group input-group">
                   <div class="input-group-prepend">
                     <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                  </div>
                   <input name="user_phone" class="form-control" placeholder="" type="text" value="" required="required">
               </div>
               <div class="addinput">

               </div>
                <!-- div:form-group input-group -->
                <div class="form-group">
                    <input type="submit" class="btn btn-primary btn-block" value="계정 만들기" ></input>
                </div>
                <!-- div:form-group -->      
                <p class="text-center"> 계정이 이미 존재하나요? <a href="/middleTest/login">Log In</a></p>                                                                 
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
   <script src="../resources/signUp/js/signUp.js"></script>
   <script src="../resources/common/js/common_submit.js"></script>
   <script src="../resources/common/js/addressAPI.js"></script>
</body>
</html>