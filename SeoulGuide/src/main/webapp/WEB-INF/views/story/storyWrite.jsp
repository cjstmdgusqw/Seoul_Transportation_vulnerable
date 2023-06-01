<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/boardWrite.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<script defer src="<c:url value="/resources/js/BoardWrite.js"/>"></script>
<title>�۾���</title>
</head>

<body class="body">
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		<h2>�Խ��Ǳ۵��</h2>
 		<form action="./boardwrite" method="post"
			enctype="multipart/form-data" name="boardform">
		
   			<table>
				<tr>
					<td class="td_left"><label for="writer">�۾���</label></td>
					<td class="td_right">
						<input type="text" name="writer" id="writer" required="required" />
					</td>
				</tr>
				<tr>
					<td class="td_left"><label for="title">�� ��</label></td>
					<td class="td_right">
						<input name="title" type="text"	id="title" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="content">�� ��</label></td>
					<td>
						
						<div id="content" name="content" required="required" class="content-wrap">
						<!-- ���� -->
						<h2 style="color: #fff">Editor</h2>
						<div id="editor"></div>
					
						<h2 style="color:#fff">Viewer</h2>
						<div id="viewer"></div>
						<!-- ���� -->
					   <!-- �Խ��� ��� -->
					   <!-- TOAST UI Editor�� �� div�±� -->
					    <div id="editor"></div>
					    <!-- TOAST UI Editor CDN URL(JS) -->
					    <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
					    <script>
					    const editor = new toastui.Editor({
					        el: document.querySelector('#editor'),
					        height: '600px',
					        initialEditType: 'wysiwyg',
					        previewStyle: 'vertical'
					      });
					    </script>
						
					</td>
				</tr>
 				<tr>
					<td class="td_left"><label for="file"> �̹��� ���� ÷�� </label></td>
					<td class="td_right">
						<input type="file" name="file" id="file" accept="image/*"/>
					</td>
				</tr>
			</table>
			<section id="commandCell">
				<input type="submit" value="���">&nbsp;&nbsp; <input
					type="reset" value="�ٽþ���" />
			</section>
		</form>
	
	
		
	</div>
</body>
</html>