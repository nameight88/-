<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
	      	<a class="navbar-brand" href="/middleTest/mainPage">부동산</a>
	      	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	        	<span class="navbar-toggler-icon"></span>
	      	</button>
	      	<div class="collapse navbar-collapse" id="navbarResponsive">
	        	<ul class="navbar-nav ml-auto">
	          		<li class="nav-item active">
	            		<a class="nav-link" href="/middleTest/mainPage">Home<span class="sr-only">(current)</span></a>
	          		</li>
	          		
	          		<!-- 중개인만 보이게 -->
	          		<li class="nav-item">
	            		<a class="nav-link" href="/middleTest/agent/agentInfo">Agent</a>
	          		</li>
	          		
	          		<!-- 관리자만 보이게 -->
	          		<li class="nav-item">
	            		<a class="nav-link" href="/middleTest/manage/managerPage">Manager</a>
	          		</li>
	          		
	          		<!-- 고객 마이페이지 -->
	          		<li class="nav-item">
	            		<a class="nav-link" href="/middleTest/customerpage/myInfo">MyPage</a>
	          		</li>

	          		<li class="nav-item">
	            		<a class="nav-link" href="/middleTest/customerpage/interestItem">Interest</a>
	          		</li>
	          		
	          		
	          		
	          		
	          		<li class="nav-item">
	            		<a class="nav-link" href="/middleTest/map">map</a>
	          		</li>
	          		
	          		
	          		
	          		<li class="nav-item">
	            		<a class="nav-link" href="/middleTest/propertydetails">Category</a>
	          		</li>
	          		<% if(session.getAttribute("customerCode")!=null){ %>
			          	<li class="nav-item">
			            	<a class="nav-link" href="/logout">logout</a>
			          	</li>
			          	<li class="nav-item">
			            	<a class="nav-link" href="/myPage/order/list">마이페이지</a>
			          	</li>
			 		<% } else { %>
			 		  	<li class="nav-item">
			            	<a class="nav-link" href="/middleTest/login">login</a>
			          	</li>
			 		<% } %>
	        	</ul>
	      	</div>
    	</div>
  	</nav>
