<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행하조</title>

<jsp:include page="/WEB-INF/views/layout/staticHeader.jsp" />

<style type="text/css">
.search-section {
	margin-top: 80px;
	text-align: center;
	padding: 50px 20px;
	background-color: #e9ecef;
	width: 100%;
}

.search-section h2 {
	margin-bottom: 10px;
}

.search-section form input {
	margin-top: 30px;
	padding: 10px;
	width: 50%;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.search-section form button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.nav-tabs .nav-link {
	min-width: 130px;
	background: #f3f5f7;
	border-radius: 0;
	border-top: 1px solid #dbdddf;
	border-right: 1px solid #dbdddf;
	color: #333;
	font-weight: 500;
}

.nav-tabs .nav-item:first-child .nav-link {
	border-left: 1px solid #dbdddf;
}

.nav-tabs .nav-link.active {
	background: #D5F1C1;
	border-radius: 2px;
	color: #808080;
	margin-top: 5px;
	margin-right: 2px;
}
</style>

<script type="text/javascript">
function sendOk() {
    const f = document.boardForm;
	let str;
	
    str = f.subject.value.trim();
    if(!str) {
        alert('제목을 입력하세요. ');
        f.subject.focus();
        return;
    }

    str = f.content.value.trim();
    if(!str) {
        alert('내용을 입력하세요. ');
        f.content.focus();
        return;
    }

    f.action = '${pageContext.request.contextPath}/help/contact/inquiry/${mode}';
    f.submit();
}
</script>


</head>
<body id="page-top">

	<header>
		<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	</header>


	<main>

		<div class="d-flex flex-column min-vh-100 align-items-center">
			<div class="container">


				<section class="search-section">
					<h2>무엇을 도와드릴까요?</h2>
					<form action="${pageContext.request.contextPath}/search"
						method="post">
						<input type="text" placeholder="검색어를 입력하세요" name="query">
						<button type="submit">검색</button>
					</form>
				</section>
				<div class="body-main">
					<div>
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item" role="presentation"><li class="nav-item" role="presentation">
							<a href="${pageContext.request.contextPath}/help/inquiry"
								class="nav-link sub_menu--link" id="my-inquiry-link">공지사항</a>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="tab-faq" data-tab="faq"
									data-bs-toggle="tab" type="button" role="tab"
									aria-selected="false">자주 묻는 질문</button>
							</li>
							<li class="nav-item" role="presentation"><li class="nav-item" role="presentation">
							<a href="${pageContext.request.contextPath}/help/contact/inquiry"
								class="nav-link sub_menu--link" id="my-inquiry-link">1:1문의</a>
							</li>

							<li class="nav-item" role="presentation">
							<a href="${pageContext.request.contextPath}/help/contact/myInquiry"
								class="nav-link sub_menu--link" id="my-inquiry-link">나의 문의</a>
							</li>

							<li class="nav-item" role="presentation">
							<a href="${pageContext.request.contextPath}/help/ad"
								class="nav-link sub_menu--link" id="my-inquiry-link">광고 신청</a>
							</li>
						</ul>
					</div>

					<div id="tab-content">
						<p>탭을 선택하면 여기에 콘텐츠가 표시됩니다.</p>
					</div>

				</div>

			</div>

		</div>
	</main>
	<script type="text/javascript">
	function login() {
		location.href = '${pageContext.request.contextPath}/help/list';
	}

	</script>
	<footer>
		<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
	</footer>

	<jsp:include page="/WEB-INF/views/layout/staticFooter.jsp" />

</body>
</html>