<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>

<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top px-4 " id="mainNav">
		<!-- 로고 이미지 -->
		<a class="fw-bold"  href="#page-top">
			<img class="logo-img" src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt="여행하조" style="width: 100%; height: 70px; object-fit: cover; padding-right: 2px;">
		</a>

		<!-- 검색창 -->
		<div class="d-flex me-auto search-box">
			<input type="search" class="search-input" placeholder="어디로 여행하조?">
			<button style="border: none; background: none;"><i class="bi bi-search search-icon"></i></button>
		</div>
		
		<!-- 네비게이션 토글 -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<i class="bi-list"></i>
		</button>
		
		<!-- 메뉴 구성 -->
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
				<li class="nav-item">
				  	<a class="nav-link" href="#">홈</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">소개</a>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="#">여행정보</a>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="#">커뮤니티</a>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="#">이벤트</a>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="#">고객센터</a>
				</li>
				
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="bi bi-person-circle" title="프로필"></i></a>
					<div class="dropdown-menu dropdown-menu-end">
						<a class="dropdown-item" href="${pageContext.request.contextPath}/mypage">마이페이지</a>
					<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">작성한 글</a>
						<a class="dropdown-item" href="#">댓글단 글</a>
						<a class="dropdown-item" href="#">좋아요</a>
					</div>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="#"><i class="bi bi-box-arrow-in-right" title="로그아웃"></i></a>
				</li>
				
				<!--
				<li class="nav-item">
				  	<a class="nav-link" href="#"><i class="bi bi-person-plus" title="회원가입"></i></a>
				</li>
				<li class="nav-item">
				  	<a class="nav-link" href="#"><i class="bi bi-gear" title="관리자"></i></a>
				</li>
				-->
				
			</ul>
		</div>
	</nav>
</header>
