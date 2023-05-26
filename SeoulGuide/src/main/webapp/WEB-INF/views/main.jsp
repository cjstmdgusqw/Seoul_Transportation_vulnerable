<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>
	<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
</head>
<body class="body">
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<section id="main" class="content-wrap">
		<div class="content">
			<p>������ڸ� ����<br>����� ��ֹ� ���� ����</p>
			<h2>����, �Բ� ���� ��</h2>
			<img src="<c:url value="/resources/img/main-img.svg"/>" alt="�����̹���">
			<div class="link">
				<ul>
					<li><a href="#">������ ���� �˻�</a></li>
					<li><a href="#">����ö ���� �˻�</a></li>
					<li><a href="#">�α���</a></li>
				</ul>
				<a href="#">������ �����Ű���?</a>
			</div>
		</div>
	</section>
</body>
</html>