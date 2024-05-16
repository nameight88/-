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

<script type="text/javascript">
	$(function() {
		$('.delete_newslist').click(function() {
			var news_num = $(this).closest('tr').find('td:first-child').text();
			$.ajax({
				type : "get",
				url : 'deleteNews',
				data : { news_num : news_num },				
				success : function(result) {
				$(this).closest('tr').remove();
				window.location.href="/middleTest/manage/managerPage";
					
				},
				error : function(xhr, status, error) {
					console.error(error);
					console.error(news_num);
				}
			});

		})
	});
</script>


<!-- Bootstrap core CSS -->
<link
	href="../resources/ProductDetail/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/ProductDetail/css/shop-item.css"
	rel="stylesheet">

</head>

<!-- Navigation -->
<%@include file="/WEB-INF/views/common/nav.jsp"%>
<body>


	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4">관리자 페이지</h1>
				<div class="list-group">
					<a href="managerPage" class="list-group-item active">뉴스관리</a> <a
						href="manageReservation" class="list-group-item">회원관리</a> <a
						href="managereport" class="list-group-item">신고</a>
					<!--  <a href="managerQnA" class="list-group-item">QnA</a> -->

				</div>
				<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
				<br /> <br /> <br /> <br /> <br />
			</div>

			<div class="col-lg-9">
				<div class="table-responsive">
					<br /> <br /> <br /> <br />
					<!-- 뉴스 관리 게시판 -->
					<table class="table table-bordered table-hover newsList">

						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>링크</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<!-- 여기에 매물 행을 동적으로 추가할 수 있습니다. -->
							<c:forEach var="news" items="${newsList}">
								<tr>
									<td><a>${news.news_num}</a></td>
									<td><a>${news.news_title}</a></td>
									<td><a>${news.news_link}</a></td>
									<td><button class="btn btn-danger delete_newslist">삭제</button></td>
								</tr>
								<tr>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
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