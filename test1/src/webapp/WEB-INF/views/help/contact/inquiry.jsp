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
.container {
	max-width: 800px;
	padding-top: 50px;
}

.body-title {
	color: #424951;
	padding-top: 50px;
	padding-bottom: 5px;
	margin: 0 0 25px 0;
	border-bottom: 1px solid #dddddd;
}

.body-title h3 {
	font-size: 23px;
	min-width: 300px;
	font-family: "Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
	font-weight: bold;
	margin: 0 0 -5px 0;
	padding-bottom: 5px;
	display: inline-block;
	border-bottom: 3px solid #424951;
}

</style>

</head>
<body id="page-top">

	<header>
		<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	</header>


	<script type="text/javascript">
		function sendOk() {
			const f = document.boardForm;
			let str;

			str = f.subject.value.trim();
			if (!str) {
				alert('제목을 입력하세요. ');
				f.subject.focus();
				return;
			}

			str = f.content.value.trim();
			if (!str) {
				alert('내용을 입력하세요. ');
				f.content.focus();
				return;
			}

			f.action = '${pageContext.request.contextPath}/bbs/${mode}';
			f.submit();
		}
	</script>
</head>
<body>

	<main>
		<div class="d-flex flex-column min-vh-100 align-items-center">
			<div class="container">
				<div class="body-title" style="text-align: left;">
					<h3>
						<i class="bi bi-app">1:1 문의하기</i> 
					</h3>
				</div>
				<div class="body-main">
				<div>콘텐츠</div>
					<form name="boardForm" method="post">
						<table class="table write-form mt-5">
							<tr>
								<td class="bg-light col-sm-2" scope="row">제 목</td>
								<td><input type="text" name="subject" class="form-control"
									value="${dto.subject}"></td>
							</tr>

							<tr>
								<td class="bg-light col-sm-2" scope="row">작성자명</td>
								<td>
									<p class="form-control-plaintext">${sessionScope.member.userName}</p>
								</td>
							</tr>

							<tr>
								<td class="bg-light col-sm-2" scope="row">내 용</td>
								<td><textarea name="content" class="form-control">${dto.content}</textarea>
								</td>
							</tr>
						</table>

						<table class="table table-borderless">
							<tr>
								<td class="text-center">
									<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i
											class="bi bi-check2"></i>
									</button>
									<button type="reset" class="btn btn-light">다시입력</button>
									<button type="button" class="btn btn-light"
										onclick="location.href='${pageContext.request.contextPath}/bbs/list';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i
											class="bi bi-x"></i>
									</button> <c:if test="${mode=='update'}">
										<input type="hidden" name="num" value="${dto.num}">
										<input type="hidden" name="page" value="${page}">
									</c:if>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</main>


	<footer>
		<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
	</footer>

	<jsp:include page="/WEB-INF/views/layout/staticFooter.jsp" />

</body>
</html>