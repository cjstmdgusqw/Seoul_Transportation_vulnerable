<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<jsp:include page="/WEB-INF/views/head.jsp"/> 
	<link rel=stylesheet  href="<c:url value="/resources/css/subway.css"/>"/>
 	<title>지하철 간편 검색</title>
</head>
<body class="body" >

	<jsp:include page="/WEB-INF/views/header.jsp"/>
	
	<section class="subway">

		<div class="subway-head"">
		
			<div class="subway-wrap">
				<div>	
					<p>
					서울 관광을 고민중이신가요? <br>
					‘서울, 함께 가는 길’ 을 따라 편안하고 안전한 관광하세요.
					</p>
					<h1>지하철 검색</h1>
				</div>
			</div>

<%-- 			<div class="subway-form">
				<h4>각 지하철역 교통편의 시설을 알려드립니다.</h4>
				<form action="./search" method ="post">
					<input class="form-control-plaintext" type="text" placeholder="역명으로 검색해주세요"/>
					<hr>
					<button class="btn btn-secondary" type="submit" >검색</button>
					<button class="btn btn-light" type="submit" >초기화</button>
				</form>
			</div>
			<table>
				<c:forEach items="${station}" var="subway">
					<tr>
						<td>${subway.sub_line}</td>
					</tr>
				</c:forEach>
			</table> --%>
			
		</div>
		
	</section>
	
</body>
</html>