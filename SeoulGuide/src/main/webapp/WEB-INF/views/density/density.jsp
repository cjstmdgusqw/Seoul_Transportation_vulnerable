<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>실시간 교통 정보</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<c:url value="/resources/css/density.css"/>">
	<jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>	
</head>
<body class="body">
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="bg">
		<div class="box-wrap">
			<p class="banner-sub">
			서울 관광을 고민중이신가요?<br>
			‘서울, 함께 가는 길’ 을 따라 편안하고 안전한 관광하세요.
			</p>
			<h2 class="banner-title">실시간 교통 정보</h2>
			<img src="<c:url value="/resources/img/density.svg"/>" alt="실시간교통정보 이미지">
		</div>
	</div>
<div class="content-wrap density-wrap">
	<!-- Sort By -->
	<form id="sortForm" method="get">
		<select id="sortSelect" name="sort">
			<option value="default" ${'default' eq sort ? 'selected' : ''}>기본</option>
			<option value="dense_lvl" ${'dense_lvl' eq sort ? 'selected' : ''}>혼잡도순</option>
			<option value="name" ${'name' eq sort ? 'selected' : ''}>가나다순</option>
		</select>
	</form>

	<script>
		$(document).ready(function() {
			$('#sortSelect').change(function() {
				$('#sortForm').submit();
			});
		});
	</script>

	<div class="container">
		<div class="row">
			<c:forEach var="density" items="${densityList}">
				<div class="col-md-4">
					<c:url var="detailUrl" value="/densityDetail">
						<c:param name="dens_name" value="${density.dens_name}" />
					</c:url>

					<div class="card mb-4 box-shadow"
						onclick="location.href='${detailUrl}'" style="cursor: pointer;">

						<div class="card-img-top position-relative">
							<img src="${density.dense_img}" alt="${density.dens_name}"
								style="width: 100%; height: 225px; object-fit: cover;">
							<div
								class="card-img-overlay d-flex justify-content-center align-items-center">
								<div class="dense_msg"
									style="display: none; background: rgba(0, 0, 0, 0.5); color: white; padding: 10px; text-align: center; width: 100%;">
									${density.dense_msg}</div>
							</div>
						</div>
						<div class="card-body">
							<h5 class="card-title">${density.dens_name}</h5>
							<c:choose>
								<c:when test="${density.dense_lvl eq '붐빔'}">
									<p class="label crowded" title="${density.dense_msg}">${density.dense_lvl}</p>
								</c:when>
								<c:when test="${density.dense_lvl eq '약간 붐빔'}">
									<p class="label slightly-crowded" title="${density.dense_msg}">${density.dense_lvl}</p>
								</c:when>
								<c:when test="${density.dense_lvl eq '보통'}">
									<p class="label normal" title="${density.dense_msg}">${density.dense_lvl}</p>
								</c:when>
								<c:otherwise>
									<p class="label relaxed" title="${density.dense_msg}">${density.dense_lvl}</p>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</c:forEach>

			<script>
				$(document).ready(function() {
					$('.card-img-top').hover(function() {
						$(this).find('.dense_msg').fadeIn();
					}, function() {
						$(this).find('.dense_msg').fadeOut();
					});
				});
			</script>

			<!-- Pagination -->
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<c:forEach begin="1" end="${totalPages}" var="pageNo">
						<li class="page-item ${pageNo eq currentPage ? 'active' : ''}">
							<a class="page-link" href="/guide/density?page=${pageNo}&sort=${sort}">${pageNo}</a>
						</li>
					</c:forEach>
				</ul>
			</nav>


		</div>
	</div>

</div> 

<!-- footer -->	
 <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
<script>
window.addEventListener('load', function() {
	  var darkModeCookie = getCookie('darkMode');
	  if (darkModeCookie === 'true') {
	    bodyEl.classList.add('dark');
	  }
	});

	function getCookie(name) {
	  var cookies = document.cookie.split(';');
	  for (var i = 0; i < cookies.length; i++) {
	    var cookie = cookies[i].trim();
	    if (cookie.startsWith(name + '=')) {
	      return cookie.substring(name.length + 1);
	    }
	  }
	  return '';
	}
</script>
</html>
