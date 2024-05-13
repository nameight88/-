<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script src="../resources/ProductDetail/js/reply.js"></script>

<title>Shop Item - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link
	href="../resources/ProductDetail/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/ProductDetail/css/shop-item.css" rel="stylesheet">
<link href="../resources/agent/css/agent.css" rel="stylesheet">

</head>

<!-- Navigation -->
<%@include file="/WEB-INF/views/common/nav.jsp"%>
<body>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4">중개인페이지</h1>
				<div class="list-group">
					<a href="agentInfo" class="list-group-item">내정보</a>
					<a href="agentPage" class="list-group-item">매물등록</a>
					<a href="agentManagement" class="list-group-item">매물관리</a> 
					<a href="agentReservation" class="list-group-item active">예약관리</a>
				
				</div>
				<br /> <br /> <br /> <br /><br /> <br /> <br /> <br /><br /> <br /> <br /> <br />
				<br /> <br /> <br /> <br />
			</div>
			<br /> <br /> <br /> <br />
			<div class="col-lg-9">
				<div class="table-responsive">
					<br />
					<br />
					<br />
					<br />
					<table class="table table-bordered table-hover">

						<thead>
							<tr>
								<th>매물 번호</th>
								<th>종류</th>
								<th>주소</th>
								<th>회원ID</th>
								<th>예약날짜</th>
								<th>예약시간</th>
								<th>노쇼</th>
							</tr>
						</thead>
						<tbody>
							<!-- 여기에 매물 행을 동적으로 추가할 수 있습니다. -->
							<tr>
								<td>1</td>
								<td>아파트</td>
								<td>서울특별시 강남구 신사동</td>
								<td>spring1212</td>
								<td>2024-01-20</td>
								<td>13:00</td>
								<td><button class="btn btn-danger">노쇼</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td>오피스텔</td>
								<td>서울특별시 서초구 양재동</td>
								<td>nono1233</td>
								<td>2024-01-20</td>
								<td>16:00</td>
								<td><button class="btn btn-danger">노쇼</button></td>
							</tr>
							<!-- 추가적인 매물 행들을 여기에 추가할 수 있습니다. -->
						</tbody>
					</table>
				</div>
			</div>

			<br /> <br />
		</div>
	</div>

	<!-- /.container -->
	<!-- Footer -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="../resources/ProductDetail/vendor/jquery/jquery.min.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script src="../resources/myPage/js/basket.js"></script>
	<script src="../resources/ProductDetail/js/order.js"></script>
	<script src="../resources/nav/js/nav.js"></script>

	<script
		src="../resources/ProductDetail/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>