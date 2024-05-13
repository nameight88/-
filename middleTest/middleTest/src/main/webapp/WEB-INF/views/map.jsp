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
<title>부동산 Map Page</title>
<!-- Bootstrap core CSS -->
<link href="resources/mainPage/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/mainPage/css/heroic-features.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Kakao Maps SDK -->
<script
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e4d5069dc9a490e0b400e0844235a47e&libraries=services"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


</head>
<!-- Navigation -->
<%@include file="/WEB-INF/views/common/nav.jsp"%>
<body>
	<!-- Page Content -->
	<div class="container">
		<br>

		<!-- Search Form -->
		<form action="searchMap" method="get">
			<div class="form-row">
				<div class="form-group col-md-3">
					<select name="property_type" id="property_type" class="form-control">
						<option>원룸</option>
						<option>투룸</option>
						<option>오피스텔</option>
						<option>아파트</option>
					</select>
				</div>
				<div class="form-group col-md-3">
					<select name="property_cate" id="property_cate" class="form-control">
						<option>월세</option>
						<option>전세</option>
						<option>매매</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<input type="text" class="form-control" placeholder="지역 또는 동 입력" name="searchText" id="searchText">
				</div>
				<div class="form-group col-md-2">
					<!--  <input type="submit" class="btn btn-primary" value="검색"> -->
					<input type="submit" id="btn" class="btn btn-primary" value="검색">
				</div>
			</div>
		</form>

		<!-- Map and Result List -->
		<div class="row">
			<!-- Map Container -->
			<div class="col-md-7">
				<div id="map" style="height: 700px"></div>

			</div>
			<!-- Result List Container -->
			<!--  다방 -->
			<div class="col-md-5">
				<div class="result-list">
					<h4>검색 결과</h4>
					<ul class="list-unstyled bg-ligh">
						<c:forEach items="${propertyList}" var="property">
							<li class="media mb-3">
							<img class="mr-3 property-image"
								src="http://placehold.it/200x200" alt="매물 이미지">
								<div class="media-body">

									<p class="price">${property.price}</p>
									<p class="property-type">${property.property_type}</p>
									<p class="property-size">${property.property_size}</p>
									<p class="description">${property.description}</p>
									<p class="property_addr">${property.property_addr}</p>
									
								</div></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Result List Container -->

	</div>
	<br />
	</div>

	<!-- Bootstrap core JavaScript -->
	<script src="resources/mainPage/vendor/jquery/jquery.min.js"></script>
	<script
		src="resources/mainPage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/map/js/map.js"></script>
	<script src="resources/nav/js/nav.js"></script>

</body>
<!-- Footer -->
<%@include file="/WEB-INF/views/common/footer.jsp"%>
</html>

