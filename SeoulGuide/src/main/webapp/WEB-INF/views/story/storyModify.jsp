<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>

<link rel="stylesheet" href="<c:url value="/resources/css/story/storyReview.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
<jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>

</head>
<body class="body">
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="sub-header-box">
		<jsp:include page="/WEB-INF/views/story/storyHeader.jsp"></jsp:include>
		
		<section id="./writeForm" class="content-wrap storydetail">
			<form action="./storyModifyAction" method="post">
  				<input type="hidden" name="post_id" value="${article.post_id}"/>

				<input type="hidden" name="writer" id="writer" readonly="readonly" value="${article.user_id}"/>
				
				<h3><input name="title" type="text" id="title" value="${article.post_title}" placeholder="제목: "/></h3>
				
				<!-- TOAST UI Editor API -->
				
				<input name="content" type="hidden" value="" class="form"/>
			 	<div id="editor">${article.post_content}</div> 
				
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
			
				<section id="commandCell">
					<a href="storyreview">취소하기</a>
					<input type="submit" value="저장하기" class="s-btn">&nbsp;&nbsp;
				</section>
			</form>
		</section>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
<script>
	function copyUrl() {
		var url = window.location.href;
	
		var tempInput = document.createElement("input");
		tempInput.style = "position: absolute; left: -1000px; top: -1000px";
		tempInput.value = url;
		document.body.appendChild(tempInput);
	
		tempInput.select();
		document.execCommand("copy");
		document.body.removeChild(tempInput);
	
		alert("URL이 복사되었습니다.");
	}
	const btn = document.querySelector('.s-btn');
	const hiddenInput = document.querySelector('.form');

	btn.addEventListener('click', function() {
	    var edi = editor.getHTML(); // 최신 HTML 내용을 가져옴
	    hiddenInput.value = edi; // input 요소의 value 속성에 edi 변수의 값을 할당
	    
	});
</script>
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
