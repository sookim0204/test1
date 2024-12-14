<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<nav class="vertical_nav">
	<ul id="js-menu" class="menu">
		<li class="menu--item">
			<a href="#" class="menu--link" title="마이페이지">
				<i class="menu--icon bi bi-h-square"></i>
				<span class="menu--label">MY HOME</span>
			</a>
		</li>
	
		<li class="menu--item menu--item__has_sub_menu">
			<label class="menu--link" title="게시물 관리">
				<i class="menu--icon bi bi-question-square"></i>
				<span class="menu--label">게시물 관리</span>
			</label>
	
			<ul class="sub_menu">
				<li class="sub_menu--item">
					<a href="#" class="sub_menu--link">나의 작성글</a>
				</li>
				<li class="sub_menu--item">
					<a href="#" class="sub_menu--link">나의 작성댓글</a>
				</li>
				<li class="sub_menu--item">
					<a href="#" class="sub_menu--link">나의 스크랩</a>
				</li>
			</ul>
		</li>
	
		<li class="menu--item">
	        <a href="#" class="menu--link" title="개인정보관리">
				<i class="menu--icon bi bi-gear-fill"></i>
				<span class="menu--label">개인정보 관리</span>
			</a>
		</li>
	
		<li class="menu--item">
	        <a href="${pageContext.request.contextPath}/member/logout" class="menu--link" title="Logout">
				<i class="menu--icon bi bi-unlock"></i>
				<span class="menu--label">로그아웃</span>
			</a>
		</li>
		
		<li class="menu--item">
	        <a href="#" class="menu--link" title="회원탈퇴">
				<i class="menu--icon bi bi-c-square"></i>
				<span class="menu--label">회원탈퇴</span>
			</a>
		</li>
	</ul>
	
	<button id="collapse_menu" class="collapse_menu">
		<i class="collapse_menu--icon bi bi-chevron-left"></i>
		<span class="menu--label">Menu</span>
	</button>
</nav>