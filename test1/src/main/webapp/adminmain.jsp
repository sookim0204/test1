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
	</div>
</main>


<footer>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</footer>

<jsp:include page="/WEB-INF/views/layout/staticFooter.jsp"/>

</body>
</html>