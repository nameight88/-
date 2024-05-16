<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link href="../resources/signUp/css/signUp.css" rel="stylesheet">
<title>허위매물신고</title>
</head>
<body>

	<form class="signupForm" action="report_insert" method='post'
		enctype="multipart/form-data">
		<div class="form-desc text-center">
			<div class="jumbotron">
			<h4>
				<b>허위매물신고</b>
			</h4>
			</div>
		</div>
		<!-- div:신고 매물 정보  -->
		<div>
			<div class="title">
				<h4>신고매물정보</h4>
			</div>
			<table>
				<tr>
					<td>중개업소</td>
					<td>여기에 중개업소 정보</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>여기에 전화번호 정보</td>
				</tr>
				<tr>
					<td>매물구분</td>
					<td>여기에 매물구분 정보</td>
				</tr>
				<tr>
					<td>매물소새지</td>
					<td>여기에 매물소새지 정보</td>
				</tr>
				<tr>
					<td>매물상세내역</td>
					<td>여기에 매물상세내역 정보</td>
				</tr>
			</table>
		</div>
		<!-- 신고매물 정보 끝  -->
	
			<h3>
				<b>매물신고내용</b>
			</h3>
		<textarea>
		</textarea>
		
		<!-- div:중개인 증명사진 입력 -->
		<div class="form-desc"></div>
		<div class="form-group input-group">
			<div class="input-group-prepend">
				<span class="input-group-text"> <i class="fa fa-folder"></i>
				</span>
			</div>
			<input name="file" type="file" maxlength="60" size="40">
		</div>
		<!-- div:form-group input-group -->
		<div class="form-group">
			<input type="submit" class="btn btn-danger btn-block" value="신고하기 "></input>
		</div>
		<!-- div:form-group -->

	</form>


	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<!-- <script src="../resources/common/js/agent_submit.js"></script> -->
	<script type="text/javascript"
		src="/middleTest/resources/ProductDetail/js/report.js"></script>
</body>
</html>