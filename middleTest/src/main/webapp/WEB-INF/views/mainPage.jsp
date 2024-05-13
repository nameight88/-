<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored = "false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
  <title>부동산mainPage</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/mainPage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  
  <%-- <link href="<%=request.getContextPath() %>" rel="stylesheet"> --%>
  
  <!-- Custom styles for this template -->
  <!-- <link href="../resources/mainPage/css/heroic-features.css" rel="stylesheet">
   -->
  <link href="resources/mainPage/css/heroic-features.css" rel="stylesheet">
  
 


</head>
<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
<body>

  <!-- Page Content -->
  <div class="container">
  <div class="">
    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
      <h1 class="display-3">부동산</h1>
      <form action="map" method="get">
      	<input type="text" name="searchText" id="searchText" class="orm-control-plaintext"  style="width:35%">
      	<input type="submit" id="btn" class="btn btn-outline-secondary btn-sm" value="검색">
      </form>
      <br>
      
    </header>

    <!-- Page Features -->
    <div class="row text-center">

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">신규 매물</h4>
            <p class="card-text">신규매물에 대한 설명</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-outline-secondary">매물보러가기</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">신규 매물</h4>
            <p class="card-text">신규매물에 대한 설명</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-outline-secondary">매물보러가기</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">신규 매물</h4>
            <p class="card-text">신규매물에 대한 설명</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-outline-secondary">매물보러가기</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">신규 매물</h4>
            <p class="card-text">신규매물에 대한 설명</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-outline-secondary">매물보러가기</a>
          </div>
        </div>
      </div>

    </div>
    <div>

			<h2>뉴스 간판 테스트</h2>
			<div class="newstable">
				<table id="newsList">
					<c:forEach var="news" items="${newsList}">
                <tr>
                    <td>
                        <a href="${news.news_link}">${news.news_title}</a>
                    </td>
                </tr>
            </c:forEach>
				</table>
			</div>


		</div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
  


  <!-- Bootstrap core JavaScript -->
  <script src="resources/mainPage/vendor/jquery/jquery.min.js"></script>
  <script src="resources/mainPage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/nav/js/nav.js"></script>	
  
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>
