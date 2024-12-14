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

#sidebar-wrapper {
    width: 250px;
    height: 100vh;
    transition: transform 0.3s ease;
    transform: translateX(-250px);
}

.menu--label {
	font-size: 16px;
}

.menu--icon {
	margin: 16px;
	font-size: 16px;
}

.list-group-item {
	border: none;
	background: #fff;
}

.list-group-item-action:focus,
.list-group-item-action:hover {
	color: #28a745;
	background: #f8f8f8;
}

form[name=mypageTest] {
	flex-grow: 1;
    padding: 40px 80px;
    transform: translateX(-100px);
}

/* 화면 크기에 따른 반응형 디자인 */
@media (min-width: 992px) {     
    #sidebar-wrapper {         
        transform: translateX(0);
    }
        form[name=mypageTest] {
    	transform: translateX(0);
    }
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

			<form name="mypageTest" method="post">
				<h3 class="text-center fw-bold">패스워드 재확인</h3>

				<div>
					<p class="form-control-plaintext text-center">회원정보를 안전하게 보호하기 위해 비밀번호를 한번 더 확인해 주세요.</p>
				</div>
			
				<div>
					<input type="password" name="userPwd" class="form-control form-control-lg" autocomplete="off" placeholder="패스워드">
				</div>
			
				<div class="text-center">
					<button type="button" onclick="sendOk();">
						확인 <i class="bi bi-check2"></i>
					</button>
					<input type="hidden" name="mode" value="${mode}">
				</div>
				
				<div>
					<p class="form-control-plaintext text-center">${message}</p>
				</div>
			</form>

		</div>
	</div>
</main>

<script type="text/javascript">

function sendOk() {
	const f = document.mypageTest;

	let str = f.userPwd.value;
	if(!str) {
		alert("패스워드를 입력하세요. ");
		f.userPwd.focus();
		return;
	}

	f.action = "${pageContext.request.contextPath}/mypage/myinfo";
	f.submit();
}

</script>

<footer>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</footer>

<jsp:include page="/WEB-INF/views/layout/staticFooter.jsp"/>

</body>
</html>