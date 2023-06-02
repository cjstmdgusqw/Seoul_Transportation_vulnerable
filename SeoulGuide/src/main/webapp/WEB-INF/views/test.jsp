<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광지 맞춤 테스트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/test.css"/>">
<script defer src="<c:url value="/resources/js/test.js"/>"></script>
</head>
<body class="container">

  <article class="start">
    <h1 class="mt-5 text-center">맞춤 관광지 테스트</h1>
    <button type="button" class="btn btn-primary mt-5" onclick="start()">테스트 시작하기</button>
  </article>

  <article class="question">
    <div class="progress mt-5" role="progressbar" aria-label="Basic example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
      <div class="progress-bar" style="width: calc(100/12*1%)"></div>
    </div>
    <h2 id="qnum" class="text-center mt-5">문제번호</h2>
    <h3 id="title" class="text-center">문제</h3>
    <input id="type" type="hidden" value="EI">
    <button id="A" type="button" class="btn btn-primary mt-5">답1</button>
    <button id="B" type="button" class="btn btn-primary mt-5">답2</button>
  </article>

  <article class="result">
    <img id="img" class="rounded-circle" src="imgk.png" alt="쿠로미">
    <h2 id="mbtiResult">관광지이름</h2>
    <h3 id="explain">설명</h3>
  </article>
  <input type="hidden" id="EI" value="0">
  <input type="hidden" id="SN" value="0">
  <input type="hidden" id="TF" value="0">
  <input type="hidden" id="JP" value="0">

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>

</body>
</html>