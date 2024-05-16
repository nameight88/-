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

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	<style>
    /* 추가한 스타일 */
    .custom-btn {
      width: 50%;
    }
    </style>
<!-- javascript -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		type="text/javascript"></script>

	<script type="text/javascript"
		src="/middleTest/resources/ProductDetail/js/report.js"></script>
<title>허위매물 신고 이용약관 사항</title>
</head>
<body>

	<div class="container">
		<div class="card bg-light">

			<div class="report_body">
				<div class="card-title mt-10 text-center">
					<h3>허위매물 신고</h3>
				</div>
				<br />
				<div class="text-center">한국인터넷자정책기구(KISO) 부동산매물클린관리센터는
					공정거래위원회에서 승인한 온라인 부동산 광고 자율규약에 따라 매물 신고 서비스를 운영하고 있습니다.</div>
				<br />

				<div class="col-lg-10">
					<div class="text-right">
						<a
							href="https://www.kiso.or.kr/정보센터/부동산매물클린관리센터-2/부동산매물클린관리센터-운영규정/부동산매물클린관리센터-개인정보-처리방침/
							 "
							target="_blank">매물신고 운영 정책 확인하기</a><br /> <input type="checkbox">확인하였습니다.
					</div>
				</div>
				<hr />
				<div class="card-title mt-10 text-center">
					<h3>신고방법</h3>
				</div>
				<br />
				<div class="text-center">신고 후 부동산매물클린관리센터의 검증을 거쳐 허위매물임이 확인된
					경우에는 중개업소에 페널티가 부여됩니다. 다만 허위신고일 경우 서비스 이용에 제한 또는 형사고발 대상이 될 수 있으니,
					매물 신고 매뉴얼을 숙지 후 신고 부탁드립니다.</div>
				<br />

				<div class="col-lg-10">
					<div class="text-right">
						<a
							href="https://www.kiso.or.kr/%ec%95%8c%eb%a6%bc%eb%a7%88%eb%8b%b9/%ec%a3%bc%ec%9a%94-%ea%b3%b5%ea%b0%9c%ec%82%ac%ed%95%ad/%ea%b1%b0%ec%a7%93%eb%a7%a4%eb%ac%bc%ec%8b%a0%ea%b3%a0%ec%b2%98%eb%a6%ac%ed%98%84%ed%99%a9/?mod=document&pageid=1&uid=1336"
							target="_blank">매물신고 매뉴얼 확인하기</a><br /> <input type="checkbox">확인하였습니다.
					</div>
				</div>
				<hr/>
				<div>
					<button class="exit_report custom-btn btn-danger">취소</button><button class="next_report custom-btn btn-primary">다음</button>
				</div>
			</div>
		</div>
	</div>
	<!-- div:container -->
	<!-- 
		<form class="reportform" action="report_sumit"></form>
	 -->
	<!-- end of reportform -->
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	

	<!-- 
   <script src="../resources/signUp/js/signUp.js"></script>
   <script src="../resources/common/js/common_submit.js"></script>
   <script src="../resources/common/js/addressAPI.js"></script>
    -->
</body>
</html>