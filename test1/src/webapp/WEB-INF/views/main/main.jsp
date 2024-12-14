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

/* 메인 배너 슬라이드 사이즈 */
.container {
	width: 500vw; /* 개수에 따라 늘려주기 */
}
.slide {
	width: 100vw;
	float: left;
}
.slide img {
	width: 100%;
}

/* 전체 탭 제목 스타일 */
.typing-container {
  font-size: 30px;
  font-weight: 300;
  font-family: 'yg-jalnan', sans-serif !important;
  margin-top: 80px;
  margin-bottom: 40px;
  width: 450px;
  word-break: keep-all;
}

#cursor {
  border-left: 2px solid #000; /* 커서 스타일 */
  animation: blink 0.7s infinite;
  display: inline-block;
  margin-left: 2px;
  height: 30px; /* 폰트 크기와 동일하게 설정 */
  vertical-align: middle;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

/* 탭 전체 스타일 */
.tabs {
	margin: 0 auto;
	padding-bottom: 80px;
	width: 80%;
}

/* 탭 메뉴 스타일 */
.tab_item {
	font-family: 'yg-jalnan', sans-serif !important;
	font-size: 20px;
	width: calc(100%/4);
	height: 60px;
	border-bottom: 5px solid #28a745;
	line-height: 60px;
	color: #222;
	display: block;
	float: left;
	text-align: center;
	transition: all 0.2s ease;
	/* opacity: 0.75; */
}

/* 탭 메뉴 선택 시 */
.tab_item:hover {
	font-size: 24px;
}

/* 탭 가리기 */
input[name="tab_item"] {
	display: none;
}

.tab_content {
	display: none;
	height: 400px;
	padding: 0px 20px 20px 20px;
	clear: both;
	overflow: hidden;
	position: relative;
	z-index: 1;
}

/* 선택 된 탭 콘텐츠를 표시 */
#tab_01:checked ~ #tab_01,
#tab_02:checked ~ #tab_02_content,
#tab_03:checked ~ #tab_03_content,
#tab_04:checked ~ #tab_04_content {
	display: block;
}

/* 선택된 탭 스타일 */
.tabs input:checked + .tab_item {
	border-bottom: 10px solid #28a745;
	color: #222;
	font-size: 24px;
}

/* 탭 안 공간 부분 */
.prod_detail_ct {
	padding: 50px 0px;
	overflow: hidden;
}

/* 탭 내용 공간 스타일 */
.cont_wrap {
	position: relative;
	height: 300px;
	overflow: hidden;
}

/* 슬라이드 스타일 */
li { list-style: none; }

.best_list {
	display: flex;
    position: relative;
    padding: 0px;
    transition: left 0.5s ease;
    flex-shrink: 0;
    overflow: hidden;
}

.best_list li:not(:last-child) {
	margin-right: 30px;
}

.best img {
	width: 313px;
	height: 200px;
	object-fit: cover;
}

.controls {
    position: absolute;
    width: 100%;
    top: 100px;
    display: flex;
    justify-content: space-between;
    z-index: 10;
}

.controls span {
	cursor: pointer;
	z-index: 100;
}

.controls span:hover {
    
}

/* 이미지 번호 */
.best_list > li {
	float: left;
	width: 313px;
	box-sizing: content-box;
	position: relative;
}

.slide_list > li:before {
	position: absolute;
	left: 10px; top: 10px;
	color: #fff;
}

.best_list > li:nth-child(10n+1)::before {content:'01'}
.best_list > li:nth-child(10n+2)::before {content:'02'}
.best_list > li:nth-child(10n+3)::before {content:'03'}
.best_list > li:nth-child(10n+4)::before {content:'04'}
.best_list > li:nth-child(10n+5)::before {content:'05'}
.best_list > li:nth-child(10n+6)::before {content:'06'}
.best_list > li:nth-child(10n+7)::before {content:'07'}
.best_list > li:nth-child(10n+8)::before {content:'08'}
.best_list > li:nth-child(10n+9)::before {content:'09'}
.best_list > li:nth-child(10n+10)::before {content:'10'}

</style>

</head>
<body id="page-top">

<header>
	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
</header>
	
<main>
	<!-- 전체 -->
	<div class="d-flex flex-column min-vh-100 align-items-center">
		<!-- 배너 슬라이드 -->
		<div id=carouselExampleCaptions class="carousel slide" data-bs-ride="carousel" data-bs-interval="10000" data-bs-pause="hover">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
			</div>
			
			<!-- 슬라이드 이미지 및 텍스트 -->
			<div class="carousel-inner">
				<div class="carousel-item active">
				<img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="d-block w-100" alt="배너이미지" style="height: 500px; object-fit: cover;">
					<div class="carousel-caption d-none d-md-block text-start">
						<h5>풍경과 문화가 어우러진 특별한 여행을 떠나보세요.</h5>
						<p></p>
						<!-- 추가내용 작성시 p태그 추가 -->
						<!-- 글자 위로 올리고 싶으면 style="padding-bottom: x;" 스타일 주기 -->
						<!-- 글자 위치는 왼쪽: text-start 가운데: text-center 오른쪽: text-end-->
					</div>
				</div>
			
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/resources/images/2.jpg" class="d-block w-100" alt="배너이미지" style="height: 500px; object-fit: cover;">
					<div class="carousel-caption d-none d-md-block">
						<h5>푸른 하늘 속에서 자유로운 시간을 보내보세요.</h5>
						<p></p>
					</div>
				</div>
			
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/resources/images/3.jpg" class="d-block w-100" alt="배너이미지" style="height: 500px; object-fit: cover;">
					<div class="carousel-caption d-none d-md-block">
						<h5>잊지 못할 순간이 기다리고 있는 여행으로 떠나보세요!</h5>
						<p></p>
					</div>
				</div>		
						
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/resources/images/4.jpg" class="d-block w-100" alt="배너이미지" style="height: 500px; object-fit: cover;">
					<div class="carousel-caption d-none d-md-block">
						<h5>지친 일상에서 벗어나 자연 속에서 힐링하세요!</h5>
						<p></p>
					</div>
				</div>	
						
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/resources/images/5.jpg" class="d-block w-100" alt="배너이미지" style="height: 500px; object-fit: cover;">
					<div class="carousel-caption d-none d-md-block">
						<h5>새로운 여행지에서 마음껏 여유를 즐기세요.</h5>
						<p></p>
					</div>
				</div>			
			</div>
		</div>
		
		<!-- 베스트 탭 제목 -->
		<div class="typing-container">
		  <span id="text"></span><span id="cursor"></span>
		</div>
		
		<!-- 베스트 탭 -->
		<div class="container">
			<!-- 베스트 탭 구성 -->
	         <div class="tabs">
	            <input type="radio" id="tab_01" name="tab_item" checked>
	            <label class="tab_item" for="tab_01">여행후기</label>
	            
	            <input type="radio" id="tab_02" name="tab_item">
	            <label class="tab_item" for="tab_02">여행지</label>
	            
	            <input type="radio" id="tab_03" name="tab_item">
	            <label class="tab_item" for="tab_03">숙소</label>
	            
	            <input type="radio" id="tab_04" name="tab_item">
	            <label class="tab_item" for="tab_04">맛집</label>
	
	            <!-- 여행후기라인 -->
	            <div class="tab_content" id="tab_01">
	               <div class="prod_detail_ct">
						<div class="cont_wrap">
							<ul class="best_list">
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
								<li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
							</ul>
							<p class="controls">
								<span class="prev"><i class="bi bi-chevron-left"></i></span>
								<span class="next"><i class="bi bi-chevron-right"></i></span>
							</p>
						</div>
					</div>
				</div>
	            <!-- 여행후기라인 -->
	
	            <!-- 여행지라인 -->
	            <div class="tab_content" id="tab_02_content">
	               <div class="prod_detail_ct">
                     <div class="cont_wrap">
	                    <ul class="best_list">
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                        <li class="best"><img src="${pageContext.request.contextPath}/resources/images/add_photo.png" alt="Image"></li>
	                    </ul>
	                    <p class="controls">
	                   		<span class="prev"><i class="bi bi-chevron-left"></i></span>
					    	<span class="next"><i class="bi bi-chevron-right"></i></span>
	                    </p>
                     </div>
	               </div>
	            </div>
	            <!-- 여행지라인 -->
	
	            <!-- 숙소라인 -->
	            <div class="tab_content" id="tab_03_content">
	               <div class="prod_detail_ct">
	                  <div class="grid_col3_wrap">
	                     <div class="cont_wrap">
	                        3번의 내용이 들어갑니다.
	                     </div>
	                  </div>
	               </div>
	            </div>
	            <!-- 숙소라인 -->
	
	            <!-- 맛집라인 -->
	            <div class="tab_content" id="tab_04_content">
	               <div class="prod_detail_ct">
	                  <div class="grid_col3_wrap">
	                     <div class="cont_wrap">
	                        4번의 내용이 들어갑니다.
	                     </div>
	                  </div>
	               </div>
	            </div>
	            <!-- 맛집 라인 -->
	            
			</div>
		</div>
	</div>
</main>

<script type="text/javascript">

/* 탭 타이틀 동작 */
window.addEventListener('load', () => {
	const text = "요즘 핫한 여행지를 알아볼까요?"; // 타이핑할 문구
	let index = 0;
	let speed = 200; // 글자 타이핑 속도 (밀리초 단위)
	
	function typeWriter() {
	  if (index < text.length) {
	    document.getElementById("text").textContent += text.charAt(index);
	    index++;
	    setTimeout(typeWriter, speed);
	  }
	}

	typeWriter();

	/* 슬라이드 동작 */
	const best_list = document.querySelector('.best_list');
	const best = document.querySelectorAll('.best_list li');
	const prevBtn = document.querySelector('.prev');
	const nextBtn = document.querySelector('.next');

	const slideCount = 10; /* 사진 개수 */
	let currentIdx = 0;
	
	let slideWidth = 313; // 이미지 너비
	let slideMargin = 30; // 이미지 간 간격
	
	best_list.style.width = (slideWidth + slideMargin) * slideCount - slideMargin + 'px'; // 전체 너비 설정
	best_list.style.left = '0px';

	function moveSlide(num) {
		best_list.style.left = -num * 343 + 'px';
		currentIdx = num;
	}
	
	
	nextBtn.addEventListener('click', e => {
		e.preventDefault();
		if (currentIdx < slideCount - 3) {
			moveSlide(currentIdx + 1);
		}
	});
	
	prevBtn.addEventListener('click', e => {
		e.preventDefault();
		if (currentIdx > 0) {
			moveSlide(currentIdx - 1);
		}
	});

	/*
	// 탭을 클릭할 때마다 슬라이드 초기화
    const tabs = document.querySelectorAll('input[name="tab_item"]');
    tabs.forEach(tab => {
        tab.addEventListener('change', () => {
            best_list.style.left = '0px';
            currentIdx = 0;
        });
    });
    */
});

</script>

<footer>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</footer>

<jsp:include page="/WEB-INF/views/layout/staticFooter.jsp"/>

</body>
</html>