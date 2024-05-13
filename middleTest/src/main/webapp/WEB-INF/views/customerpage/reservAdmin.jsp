<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title></title>
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath() %>/resources/myPage/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="<%=request.getContextPath() %>/resources/common/css/shop-homepage.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath() %>/resources/common/css/common.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4">마이페이지</h1>
				<div class="list-group">
					<a href="myInfo" class="list-group-item">내정보</a> <a
						href="qnaAdmin" class="list-group-item">문의관리</a> <a
						href="reservAdmin" class="list-group-item active">예약관리</a>

				</div>
				<br /> <br /> <br /> <br /><br /> <br /> <br /> <br /><br /> <br /> <br /> <br />
				<br /> <br /> <br /> <br />
			</div>





			<div class="col-lg-9">
				<div class="table-responsive">
					<br />
					<br />
					<table class="table table-bordered table-hover">

						<thead>

						</thead>
						<tbody>
							<h4 class="card-title mt-3 text-center">
								<strong>예약관리</strong>
							</h4>
							
							<!-- 추가적인 매물 행들을 여기에 추가할 수 있습니다.(임의로 만든 테이블) -->
							<tr>
								<td>날짜</td>
								<td>시간</td>
								<th>부동산</th>
								<th>중개인</th>
								<td>예약유형</td>
								<th>예약결과</th>
								<th>취소하기</th>

							</tr>
							<tr>
								<td>2024/05/08</td>
								<td>13:00</td>
								<th>한빛부동산</th>
								<th>홍길동</th>
								<td>부동산계약</td>
								<th>승인</th>
								<td><button class="btn btn-danger">취소</button></td>
							</tr>
							<tr>
								<td>2024/05/10</td>
								<td>15:00</td>
								<th>신촌부동산</th>
								<th>김길자</th>
								<td>매물구경</td>
								<th>취소</th>
								<td><button class="btn btn-danger">취소</button></td>
							</tr>
							<tr>
								<td>2024/05/13</td>
								<td>11:00</td>
								<th>서강부동산</th>
								<th>이길숙</th>
								<td>상담문의</td>
								<th>승인</th>
								<td><button class="btn btn-danger">취소</button></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<!-- Bootstrap core JavaScript -->
	<script
		src="<%=request.getContextPath() %>/resources/myPage/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath() %>/resources/myPage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/nav/js/nav.js"></script>
</body>
</html>