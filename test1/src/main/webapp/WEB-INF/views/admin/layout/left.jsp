<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
//메뉴 활성화
$(function(){
    var url = window.location.pathname;
    var urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");
    
    try {
    	$('nav ul>li>a').each(function() {
    		if ( urlRegExp.test(this.href.replace(/\/$/, '')) ) {
    			$(this).addClass('active_menu');
    			return false;
    		}
    	});
    	if($('nav ul>li>a').hasClass("active_menu")) return false;

     	var parent = url.replace(/\/$/, '').substr(0, url.replace(/\/$/, '').lastIndexOf("/"));
     	if(! parent) parent = "/";
        var urlParentRegExp = new RegExp(parent);
    	$('nav ul>li>a').each(function() {
    		if($(this).attr("href")=="#") return true;
    		
    		var phref = this.href.replace(/\/$/, '').substr(0, this.href.replace(/\/$/, '').lastIndexOf("/"));
    		
    		if ( urlParentRegExp.test(phref) ) {
    			$(this).addClass('active_menu');
    			return false;
    		}
    	});
    	if($('nav ul>li>a').hasClass("active_menu")) return false;
    	
    	$('nav ul>.menu--item__has_sub_menu').each(function() {
    		if (urlRegExp.test(this.href.replace(/\/$/, '')) ) {
    			$(this).addClass('active_menu');
    			return false;
    		}
    	});
    	
    }catch(e) {
    }
});
</script>

<nav class="vertical_nav">
	<ul id="js-menu" class="menu">
		<li class="menu--item">
			<a href="#" class="menu--link" title="관리자 홈">
				<i class="menu--icon bi bi-h-square"></i>
				<span class="menu--label">관리자 홈</span>
			</a>
		</li>
	
		<li class="menu--item">
	        <a href="#" class="menu--link" title="회원관리">
				<i class="menu--icon bi bi-people-fill"></i>
				<span class="menu--label">회원관리</span>
			</a>
		</li>
	
		<li class="menu--item">
	        <a href="#" class="menu--link" title="공지사항">
				<i class="menu--icon bi bi-bell"></i>
				<span class="menu--label">공지사항</span>
			</a>
		</li>
		
		<li class="menu--item">
	        <a href="#" class="menu--link" title="이벤트 관리">
				<i class="menu--icon bi bi-star"></i>
				<span class="menu--label">이벤트 관리</span>
			</a>
		</li>
		
		<li class="menu--item">
	        <a href="#" class="menu--link" title="신고처리 현황">
				<i class="menu--icon bi bi-brightness-alt-low"></i>
				<span class="menu--label">신고처리 현황</span>
			</a>
		</li>
		
		<li class="menu--item">
	        <a href="#" class="menu--link" title="문의답변 현황">
				<i class="menu--icon bi bi-headset"></i>
				<span class="menu--label">문의답변 현황</span>
			</a>
		</li>
		
		<li class="menu--item">
	        <a href="#" class="menu--link" title="광고 관리">
				<i class="menu--icon bi bi-headset"></i>
				<span class="menu--label">광고 관리</span>
			</a>
		</li>	
		
		<li class="menu--item">
	        <a href="${pageContext.request.contextPath}/member/logout" class="menu--link" title="로그아웃">
				<i class="menu--icon bi bi-box-arrow-left"></i>
				<span class="menu--label">로그아웃</span>
			</a>
		</li>	
	</ul>
	
	<button id="collapse_menu" class="collapse_menu">
		<i class="collapse_menu--icon bi bi-chevron-left"></i>
		<span class="menu--label">Menu</span>
	</button>	
</nav>