<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행하조</title>

<jsp:include page="/WEB-INF/views/layout/staticHeader.jsp"/>

<style type="text/css">

#wrapper {
    flex-shrink: 0;
}

#sidebar-wrapper {
    width: 250px;
    height: 100%; /* 사이드바가 화면 전체를 차지하도록 설정 */
    position: fixed;
    top: 86px;
    left: 0;
}

#page-content-wrapper {
    margin-left: 250px; /* 사이드바의 너비만큼 오른쪽 여백을 추가 */
    padding: 20px;
    height: calc(100vh - 60px); /* 푸터의 높이를 제외한 높이를 설정 */
    overflow-y: auto; /* 컨텐츠가 많을 경우 스크롤이 가능하도록 설정 */
}

</style>

</head>
<body id="page-top">

<header>
	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
</header>
	
<main>
	<!-- 전체 -->
	<div class="d-flex flex-column min-vh-100">
	
		<!-- 메뉴바 -->
		<div class="d-flex" id="wrapper" style="padding-top: 86px;">
			<div class="border-end bg-white" id="sidebar-wrapper">
		    	<div class="list-group list-group-flush">
			        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">
		        		<button class="btn btn-primary" id="sidebarToggle">Toggle Menu</button>
		        		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
		    		</a>
			        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">
				        <i class="menu--icon bi bi-person-vcard"></i>
				        <span class="menu--label">나의 정보관리</span>
			        </a>
			        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">
				        <i class="menu--icon bi bi-pencil"></i>
				        <span class="menu--label">작성한 글</span>
			        </a>
			        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">
				        <i class="menu--icon bi bi-chat-square-text"></i>
				        <span class="menu--label">댓글단 글</span>
			        </a>
			        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">
				        <i class="menu--icon bi bi-chat-square-heart"></i>
				        <span class="menu--label">좋아요</span>
			        </a>
			        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">
				        <i class="menu--icon bi bi-info-circle"></i>
				        <span class="menu--label">나의 문의내역</span>
			        </a>
			        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#">
						<i class="menu--icon bi bi-unlock"></i>
						<span class="menu--label">로그아웃</span>
					</a>
		    	</div>
			</div>
			<div id="page-content-wrapper">
				<div class="container-fluid">
					<h1 class="mt-4">나의 정보</h1>
					<p>내용</p>
				</div>
			</div>
		</div>
	
	</div>
</main>

<script type="text/javascript">

</script>

<footer>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</footer>

<jsp:include page="/WEB-INF/views/layout/staticFooter.jsp"/>

</body>
</html>