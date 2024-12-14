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

.body-container {
	padding: 30px 30px 15px;
	transition: all 0.3s ease-out;
}

.body-main {
	margin: 0 auto;
	padding-top: 100px; 
}

.vertical_nav, .collapse_menu .collapse_menu--icon {
	-moz-transition: all 0.3s ease-out;
	-webkit-transition: all 0.3s ease-out;
	transition: all 0.3s ease-out;
}

.toggle_menu {
	width: 35px;
	height: 35px;
	line-height: 35px;
	padding: 0;
	background: none;
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 5px;
	cursor: pointer;
}

.toggle_menu i {
	display: block;
	font-size: 28px;
  }

.vertical_nav {
	position: absolute;
	left: -250px;
	top: 50px;
	bottom: 0px;
	width: 250px;
	background: #f6f6f6;
}

.vertical_nav__closed {
	left: -200px !important;
}

.vertical_nav__opened {
	left: 0px !important;
	box-shadow: rgba(0, 0, 0, 0.4) -30px 0 30px 30px;
}

.vertical_nav a {
	text-decoration: none;
}

.menu {
	position: absolute;
	top: 35px;
	bottom: 40px;
	overflow-y: auto;
	width: 100%;
	margin: 0;
	padding: 0;
	list-style-type: none;
}

.menu--item {
	position: relative;
	min-height: 40px;
	line-height: 40px;
}

.menu--item__has_sub_menu .menu--link:after {
	position: absolute;
	top: 0;
	right: 15px;
	height: 40px;
	line-height: 40px;
	font-family: "bootstrap-icons";
	content: "\F229";
}

.menu--subitens__opened {
	background: #e9e9e9;
}

.menu--subitens__opened .menu--link {
	color: #000000;
}

.menu--subitens__opened .sub_menu {
	display: block;
}

.menu--link {
	display: block;
	overflow: hidden;
	font-size: 0.875rem;
	text-decoration: none;
	color: #666;
	font-weight: 400;
	white-space: nowrap;
	cursor: pointer;
}

.menu--link:hover, .menu--link:hover .menu--label {
	color: #000000;
	background: #dddddd;
}

.menu--icon {
	display: block;
	float: left;
	width: 50px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	font-size: 20px;
}

.menu--label {
	display: block;
	height: 40px;
	line-height: 40px;
}

.sub_menu {
	display: none;
	overflow: hidden;
	padding-left: 0;
	list-style: none;
}

.sub_menu--link {
	display: block;
	padding-left: 50px;
	padding-right: 16px;
	font-size: 0.875rem;
	color: #666;
	text-decoration: none;
}
 
.sub_menu--link:hover {
	color: #000000;
	background: #dddddd;
}

.sub_menu--link__active {
	color: #000000;
	font-weight: 500;
}

.active_menu {
	color: #0d6efd;
	font-weight: 500;
}

.collapse_menu {
	display: none;
}

@media (min-width: 992px) {
.vertical_nav { left: 0; }

.toggle_menu { display: none; }

.vertical_nav__minify { width: 50px; }

.vertical_nav__minify .menu { overflow: visible; }

.vertical_nav__minify .menu--label {
	display: none;
	position: absolute;
	top: 0;
	left: 50px;
	width: 150px;
	padding-left: 16px;
	padding-right: 16px;
	background: #e9e9e9;
	font-weight: 500;
}

.vertical_nav__minify .menu--item__has_sub_menu .menu--link:after { content: ""; }

.vertical_nav__minify .menu--subitens__opened .menu--label,
.vertical_nav__minify .menu--subitens__opened .sub_menu {
	display: block;
}

.vertical_nav__minify .sub_menu {
	position: absolute;
	top: 40px;
	left: 50px;
	width: 150px;
	background: #e9e9e9;
}

.vertical_nav__minify .sub_menu--link { padding-left: 16px; }

.vertical_nav__minify .collapse_menu--icon { transform: rotate(180deg); }

.collapse_menu {
	position: absolute;
	bottom: 0px;
	display: block;
	width: 100%;
	height: 40px;
	line-height: 40px;
	padding: 0;
	border: 0;
	border-top: 1px solid #e6e6e6;
	background: #f6f6f6;
	color: #666;
	font-size: 0.875rem;
	text-align: left;
	cursor: pointer;
}

.collapse_menu:hover {
	color: #000;
	background: #dddddd;
}

.collapse_menu .collapse_menu--icon {
	display: block;
	float: left;
	width: 50px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	font-size: 20px;
}

.collapse_menu .collapse_menu--icon:before { content: "\F284"; }

.collapse_menu .collapse_menu--label {
	display: block;
	height: 40px;
	line-height: 40px;
}
    
.container {
	max-width: 800px;
	padding-top: 100px;
}




</style>

</head>
<body id="page-top">

<header>
	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
</header>
	
<main>
	<!-- 전체 -->
	<div class="d-flex flex-column min-vh-100 align-items-center">
		<jsp:include page="/WEB-INF/views/admin/layout/left.jsp"/>	
		<div class="container">
			<div class="body-title" style="text-align: left;">
				<h3>
					<i class="bi bi-app">문의사항</i> 
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
							<th class="date">등록일자</th>
							<th class="name">조회수</th>
							<th class="manage">관리</th>
						</tr>
				</thead>
					<tr>
						<td>1</td>
						<td class="left"><a href="#"
							class="text-reset">제목</a></td>
						<td>등록일자</td>
						<td>조회수</td>
						<td>관리</td>
					</tr>					
				<tbody>
				
				</tbody>
				
			</table>
			
			
			
		</div>
	</div>
</main>


<footer>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</footer>

<jsp:include page="/WEB-INF/views/layout/staticFooter.jsp"/>
</body>
</html>