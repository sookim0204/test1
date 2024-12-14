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
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
    font-weight: bold;
    margin: 0 0 -5px 0;
    padding-bottom: 5px;
    display: inline-block;
    border-bottom: 3px solid #424951;
}

.board-list tr > th, .board-list tr > td { text-align: center; }
</style>

</head>
<body id="page-top">

	<header>
		<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	</header>


	<main>

		<div class="d-flex flex-column min-vh-100 align-items-center">
			<div class="container">
				<div class="body-title" style="text-align: left;">
					<h3>
						<i class="bi bi-app">나의 문의</i> 
					</h3>
				</div>


				<div style="padding-top: 50px;" class="row board-list-header">
					<div class="col-auto me-auto">${dataCount}개(${page}/${total_page}
						페이지)</div>
					<div class="col-auto">&nbsp;</div>
				</div>

				<table class="table table-hover board-list">
					<thead class="table-light">
						<tr>
							<th class="num">번호</th>
							<th class="subject">제목</th>
							<th class="name">작성자</th>
							<th class="date">등록일</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="dto" items="${list}" varStatus="status">
							<tr>
								<td>${dataCount-(page-1)*size-status.index}</td>
								<td class="left"><a href="${articleUrl}&num=${dto.num}"
									class="text-reset">${dto.subject}</a></td>
								<td>${dto.userName}</td>
								<td>${dto.reg_date}</td>
								<td>${dto.hitCount}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="page-navigation">${dataCount==0?"등록된 게시물이 없습니다.":paging}
				</div>

				<div class="row board-list-footer">
					<div class="col">
						<button type="button" class="btn btn-light"
							onclick="location.href='${pageContext.request.contextPath}/bbs/list';">
							<i class="bi bi-arrow-clockwise"></i>
						</button>
					</div>
					<div class="col-6 text-center">
						<form class="row" name="searchForm"
							action="${pageContext.request.contextPath}/bbs/list"
							method="post">
							<div class="col-auto p-1">
								<select name="schType" class="form-select">
									<option value="all" ${schType=="all"?"selected":""}>제목+내용</option>
									<option value="userName" ${schType=="userName"?"selected":""}>작성자</option>
									<option value="reg_date" ${schType=="reg_date"?"selected":""}>등록일</option>
									<option value="subject" ${schType=="subject"?"selected":""}>제목</option>
									<option value="content" ${schType=="content"?"selected":""}>내용</option>
								</select>
							</div>
							<div class="col-auto p-1">
								<input type="text" name="kwd" value="${kwd}"
									class="form-control">
							</div>
							<div class="col-auto p-1">
								<button type="button" class="btn btn-light"
									onclick="searchList()">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</form>
					</div>

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