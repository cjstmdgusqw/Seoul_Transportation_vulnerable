<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>����, �Բ� ���� ��</title>
    <jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
</head>
<body class="body">
    <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
    <section id="main" class="content-wrap">
        <div id="skip-nav" class="content">
            <p>������ڸ� ����<br>����� ��ֹ� ���� ����</p>
            <h2>����, �Բ� ���� ��</h2>
            <img src="<c:url value="/resources/img/main-img.svg"/>" alt="�����̹���">
            <div class="link">
                <ul>
                    <li><a href="#">������ ���� �˻�</a></li>
                    <li><a href="#">����ö ���� �˻�</a></li>
                    <li>
                      <c:choose>
                        <c:when test="${sessionScope.email eq null }">
                          <a href="./loginform">�α���</a>
                        </c:when>
                        <c:otherwise>
                          <a href="./logout">�α׾ƿ�</a>
                           </c:otherwise>
                       </c:choose>
                    </li>
                </ul>
                <a href="./joinform">������ �����Ű���?</a>
            </div>
        </div>
    </section>
</body>
</html>