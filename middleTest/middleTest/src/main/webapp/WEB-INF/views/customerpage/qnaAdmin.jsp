<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="">
  	<meta name="author" content="">
  	<title></title>
  	<!-- Bootstrap core CSS -->
  	<link href="<%=request.getContextPath() %>/resources/myPage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  	<!-- Custom styles for this template -->
  	<link href="<%=request.getContextPath() %>/resources/common/css/shop-homepage.css" rel="stylesheet">
  	<link href="<%=request.getContextPath() %>/resources/common/css/common.css" rel="stylesheet">
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
						href="qnaAdmin" class="list-group-item active">문의관리</a> <a
						href="reservAdmin" class="list-group-item">예약관리</a>

				</div>
				<br /> <br /> <br /> <br /><br /> <br /> <br /> <br /><br /> <br /> <br /> <br />
				<br /> <br /> <br /> <br />
			</div>
      		
			<div class="col-lg-9">
				<div class="table-responsive">
				<br/><br/>
					<table class="table table-bordered table-hover">
					
						<thead>
	
						</thead>
						<tbody>
							 <h4 class="card-title mt-3 text-center"><strong>문의관리</strong></h4>
							 <tr>
								<td>날짜</td>
								<td>시간</td>
								<th>문의유형</th>
								<th>제목</th>
								<td>처리결과</td>
								<td>수정</td>
								<td>삭제</td>

							</tr>
							<tr>
								<td>2024/05/08</td>
								<td>13:00</td>
								<th>이용문의</th>
								<th>사이트 이용방법에 대해 질문합니다.</th>
								<td>답변완료</td>
								<td><button name="" class="btn btn-success">수정</button></td>
								<td><button name="" class="btn btn-danger">삭제</button></td>
							</tr>
							<tr>
								<td>2024/05/10</td>
								<td>15:00</td>
								<th>오류신고</th>
								<th>계속 에러가 나요ㅠㅠ</th>
								<td>답변처리중</td>
								<td><button name="" class="btn btn-success">수정</button></td>
								<td><button name="" class="btn btn-danger">삭제</button></td>
							</tr>
							<tr>
								<td>2024/05/13</td>
								<td>11:00</td>
								<th>건의사항</th>
								<th>건의할 내용 있습니다!</th>
								<td>답변완료</td>	
								<td><button name="update" class="btn btn-success">수정</button></td>
								<td><button name="delte" class="btn btn-danger">삭제</button></td>			
							</tr>






							
							<!-- 추가적인 매물 행들을 여기에 추가할 수 있습니다. -->
						</tbody>
					</table>
					<table>
					
												<tr>
								<td></td>
								<td></td>
								<td></td>
								<th></th>
								<td><button class="btn btn-primary">문의하기</button></td>
							</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<!-- Bootstrap core JavaScript -->
  	<script src="<%=request.getContextPath() %>/resources/myPage/vendor/jquery/jquery.min.js"></script>
  	<script src="<%=request.getContextPath() %>/resources/myPage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/nav/js/nav.js"></script>
</body>
</html>