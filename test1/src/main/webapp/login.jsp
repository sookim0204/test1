<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<style type="text/css">
:root {
	--primary-color: #D5F0C1;
	--secondary-color: #D5F0C1;
	--black: #000000;
	--white: #ffffff;
	--gray: #efefef;
	--gray-2: #757575;
	--facebook-color: #4267B2;
	--google-color: #DB4437;
	--twitter-color: #1DA1F2;
	--insta-color: #E1306C;
}

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap')
	;

* {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html, body {
	height: 100vh;
	overflow: hidden;
}

.container {
	position: relative;
	min-height: 100vh;
	overflow: hidden;
}

.row {
	display: flex;
	flex-wrap: wrap;
	height: 100vh;
}

.col {
	width: 50%;
}

.align-items-center {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

.form-wrapper {
	width: 100%;
	max-width: 28rem;
}

.form {
	padding: 1rem;
	background-color: var(--white);
	border-radius: 1.5rem;
	width: 100%;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	transform: scale(0);
	transition: .5s ease-in-out;
	transition-delay: 1s;
}

.input-group {
	position: relative;
	width: 100%;
	margin: 1rem 0rem;
}

.input-group i {
	position: absolute;
	top: 50%;
	left: 1rem;
	transform: translateY(-50%);
	font-size: 1.4rem;
	color: var(--gray-2);
}


.input-group input {
	width: 100%;
	padding: 1rem 3rem;
	font-size: 1rem;
	background-color: var(--gray);
	border-radius: .5rem;
	border: 0.125rem solid var(--white);
	outline: none;
}
.input-group2 input {
    width: 100%;
    padding: 1rem 3rem;
    font-size: 1rem;
    background-color: var(--gray);
    border-radius: .5rem;
    border: 0.125rem solid var(--white);
    outline: none;
    margin: 0.5rem 0 !important;
    height: flex;
}

.input-group2 label {
    display: inline-block;
    width: 100%;
    text-align: left; 
    padding: 1rem 3rem;
    font-size: 0.8rem;
    background-color: var(--gray);
    border-radius: .5rem;
    border: 0.125rem solid var(--white);
    color: var(--gray-2);
    box-sizing: border-box;
    outline: none;
    margin: 0.5rem 0;
}

.input-group2 select {
    display: block;
    width: 100%;
    text-align: left; 
    padding: 1rem 3rem;
    font-size: 1rem;
    background-color: var(--gray);
    border-radius: .5rem;
    border: 0.125rem solid var(--white);
    color: var(--gray-2);
    box-sizing: border-box;
    outline: none;
    margin: 0.5rem 0;
}

.input-group input:focus {
	border: 0.125rem solid var(--primary-color);
}

.input-group2 input:focus {
	border: 0.125rem solid var(--primary-color);
}

.quizQuestion {
    display: block;
    width: 50%;
    text-align: left; 
    padding: 0.5rem;
    font-size: 1rem;
    background-color: #D5F0C1;
    border-radius: .5rem;
    border: 0.125rem solid var(--white);
    box-sizing: border-box;
    outline: none;
    margin: 0.1rem;
    color : #ffffff;
}

.horizontal-group {
    display: flex;
    align-items: center;
    gap: 0.1rem; /* 라벨과 셀렉트 박스 사이 간격 */
}

.horizontal-group div {
    width: 30%; /* 라벨의 고정 너비 (필요에 따라 조정) */
    text-align: right; /* 오른쪽 정렬 */
}

.horizontal-group select {
    flex: 1; /* 셀렉트 박스가 나머지 공간 차지 */
}

.form button {
	cursor: pointer;
	width: 100%;
	padding: .6rem 0;
	border-radius: .5rem;
	border: none;
	background-color: var(--primary-color);
	color: var(--white);
	font-size: 1.2rem;
	outline: none;
}

.button2 {
	cursor: pointer;
	width: 100%;
	padding: .6rem 0;
	border-radius: .5rem;
	border: none;
	background-color: var(--primary-color);
	color: var(--white);
	font-size: 1.2rem;
	outline: none;
	margin: 1rem 0;
}

.form p {
	margin: 1rem 0;
	font-size: .7rem;
}

.flex-col {
	flex-direction: column;
}

.social-list {
	margin: 2rem 0;
	padding: 1rem;
	border-radius: 1.5rem;
	width: 100%;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	transform: scale(0);
	transition: .5s ease-in-out;
	transition-delay: 1.2s;
}

.social-list>div {
	color: var(--white);
	margin: 0 .5rem;
	padding: .7rem;
	cursor: pointer;
	border-radius: .5rem;
	cursor: pointer;
	transform: scale(0);
	transition: .5s ease-in-out;
}

.social-list>div:nth-child(1) {
	transition-delay: 1.4s;
}

.social-list>div:nth-child(2) {
	transition-delay: 1.6s;
}

.social-list>div:nth-child(3) {
	transition-delay: 1.8s;
}

.social-list>div:nth-child(4) {
	transition-delay: 2s;
}

.social-list>div>i {
	font-size: 1.5rem;
	transition: .4s ease-in-out;
}

.social-list>div:hover i {
	transform: scale(1.5);
}

.facebook-bg {
	background-color: var(--facebook-color);
}

.google-bg {
	background-color: var(--google-color);
}

.twitter-bg {
	background-color: var(--twitter-color);
}

.insta-bg {
	background-color: var(--insta-color);
}

.pointer {
	cursor: pointer;
}

.container.sign-in .form.sign-in, .container.sign-in .social-list.sign-in,
	.container.sign-in .social-list.sign-in>div, .container.sign-up .social-list.sign-up,
	.container.sign-up .social-list.sign-up>div {
	transform: scale(1);
}

.container.sign-up .form.sign-up, .container.sign-up {
	transform: scale(1);
}

.form.sign-up2 {
	transform: scale(0);
}

.content-row {
	position: absolute;
	top: 0;
	left: 0;
	pointer-events: none;
	z-index: 6;
	width: 100%;
}

.text {
	margin: 4rem;
	color: var(--white);
}

.text h2 {
	font-size: 3.5rem;
	font-weight: 800;
	margin: 2rem 0;
	transition: 1s ease-in-out;
}

.text p {
	font-weight: 600;
	transition: 1s ease-in-out;
	transition-delay: .2s;
}

.img img {
	width: 30vw;
	transition: 1s ease-in-out;
	transition-delay: .4s;
}

.text.sign-in h2, .text.sign-in p, .img.sign-in img {
	transform: translateX(-250%);
}

.text.sign-up h2, .text.sign-up p, .img.sign-up img {
	transform: translateX(250%);
}

.container.sign-in .text.sign-in h2, .container.sign-in .text.sign-in p,
	.container.sign-in .img.sign-in img, .container.sign-up .text.sign-up h2,
	.container.sign-up .text.sign-up p, .container.sign-up .img.sign-up img
	{
	transform: translateX(0);
}

/* BACKGROUND */
.container::before {
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	height: 100vh;
	width: 300vw;
	transform: translate(35%, 0);
	background-image: linear-gradient(-45deg, var(--primary-color) 0%,
		var(--secondary-color) 100%);
	transition: 1s ease-in-out;
	z-index: 6;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	border-bottom-right-radius: max(50vw, 50vh);
	border-top-left-radius: max(50vw, 50vh);
}

.container.sign-in::before {
	transform: translate(0, 0);
	right: 50%;
}

.container.sign-up::before {
	transform: translate(100%, 0);
	right: 50%;
}

/* RESPONSIVE */
@media only screen and (max-width: 425px) {
	.container::before, .container.sign-in::before, .container.sign-up::before
		{
		height: 100vh;
		border-bottom-right-radius: 0;
		border-top-left-radius: 0;
		z-index: 0;
		transform: none;
		right: 0;
	}

	/* .container.sign-in .col.sign-up {
        transform: translateY(100%);
    } */
	.container.sign-in .col.sign-in, .container.sign-up .col.sign-up {
		transform: translateY(0);
	}
	.content-row {
		align-items: flex-start !important;
	}
	.content-row .col {
		transform: translateY(0);
		background-color: unset;
	}
	.col {
		width: 100%;
		position: absolute;
		padding: 2rem;
		background-color: var(--white);
		border-top-left-radius: 2rem;
		border-top-right-radius: 2rem;
		transform: translateY(100%);
		transition: 1s ease-in-out;
	}
	.row {
		align-items: flex-end;
		justify-content: flex-end;
	}
	.form, .social-list {
		box-shadow: none;
		margin: 0;
		padding: 0;
	}
	.text {
		margin: 0;
	}
	.text p {
		display: none;
	}
	.text h2 {
		margin: .5rem;
		font-size: 2rem;
	}
}

.hidden {
	display: none;
	opacity: 0;
	visibility: hidden;
}

.slide-out {
	animation: slideOut 0.5s forwards;
	opacity: 0; /* 애니메이션 도중 투명도 적용 */
	visibility: hidden; /* 애니메이션 완료 후 숨기기 */
}

.slide-in {
	animation: slideIn 0.5s forwards;
}

@
keyframes slideOut {from { transform:translateX(0);
	opacity: 1;
}

to {
	transform: translateX(-100%);
	opacity: 0;
}

}
@
keyframes slideIn {from { transform:translateX(100%);
	opacity: 0;
}

to {
	transform: translateX(0);
	opacity: 1;
}

}
@keyframes slideInRight {
    from {
        transform: translateX(100%);
        opacity: 0;
    }
    to {
        transform: translateX(0);
        opacity: 1;
    }
}

@keyframes slideOutLeft {
    from {
        transform: translateX(0);
        opacity: 1;
    }
    to {
        transform: translateX(-100%);
        opacity: 0;
    }
}

@keyframes slideInLeft {
    from {
        transform: translateX(-100%);
        opacity: 0;
    }
    to {
        transform: translateX(0);
        opacity: 1;
    }
}

@keyframes slideOutRight {
    from {
        transform: translateX(0);
        opacity: 1;
    }
    to {
        transform: translateX(100%);
        opacity: 0;
    }
}


.slide-in-right {
    animation: slideInRight 0.5s forwards;
}

.slide-out-left {
    animation: slideOutLeft 0.5s forwards;
}

.slide-in-left {
    animation: slideInLeft 0.5s forwards;
}

.slide-out-right {
    animation: slideOutRight 0.5s forwards;
}

</style>

</head>
<body>
	<div id="container" class="container">
		<!-- FORM SECTION -->
		<div class="row">
			<!-- SIGN UP -->
			<div class="col align-items-center flex-col sign-up">
				<div class="form-wrapper align-items-center">
					<div class="form sign-up">
						<!-- 영역분할1 -->
						<div class="input-group">
							<i class='bx bxs-user'></i> <input type="text" placeholder="닉네임">
						</div>
						<div class="input-group">
							<i class='bx bxs-user'></i> <input type="text" placeholder="아이디">
						</div>
						<div class="input-group">
							<i class='bx bxs-lock-alt'></i> <input type="password"
								placeholder="패스워드">
						</div>
						<div class="input-group">
							<i class='bx bxs-lock-alt'></i> <input type="password"
								placeholder="패스워드확인">
						</div>
						<div class="input-group">
							<i class='bx bxs-lock-alt'></i> <input type="file" id="profil"
								name="profil" accept="image/*" placeholder="프로필사진">
						</div>
						<div class="input-group">
							<i class='bx bxs-lock-alt'></i> <input type="text"
								placeholder="이름">
						</div>
						<div class="input-group">
							<i class='bx bxs-lock-alt'></i> <input type="text"
								placeholder="생년월일">
						</div>
						<button onclick="showNextForm()">NEXT</button>
					</div>

					<!-- 영역분할2 -->
					<div class="row mb-3">
					<div class="form sign-up2 hidden">
						<div class="input-group2">
							<i class='bx bxs-lock-alt'></i> <input type="text"
								placeholder="전화번호">
						</div>
						<div class="input-group2">
							<i class='bx bx-mail-send'></i> <input type="email"
								placeholder="이메일">
						</div>


						<div class="input-group2 horizontal-group" style="display: flex; width: 100%;">
							<input type="text" name="zip" id="zip" class="form-control"
								placeholder="우편번호" value="${dto.zip}" readonly style="flex: 6;">
							<button class="btn btn-light postal-button" type="button" 
								onclick="daumPostcode();" style="flex: 4; font-size: 1rem;">우편번호 검색</button>
						</div>

						<div class="input-group2">
							<i class='bx bx-mail-send'></i> <input type="text"  name="addr1" id="addr1" 
								placeholder="주소1">
						</div>
						<div class="input-group2">
							<i class='bx bx-mail-send'></i> <input type="text"  name="addr2" id="addr2" 
								placeholder="주소2">
						</div>
						<div class="input-group2 horizontal-group">
						<div class="quizQuestion" style="flex: 3.5;">비밀번호찾기</div>
							<select style="flex: 6.5;" required>
                                <option value="">:: 선택 ::</option>
                                  <option value="추억의 장소">기억에 남는 추억의 장소는?</option>
                                  <option value="선생님 이름">가장 기억에 남는 선생님 성함은?</option>
                             </select>
						</div>
						<div class="input-group2">
							<i class='bx bx-mail-send'></i> <input type="text"
								placeholder="비밀번호찾기 답">
						</div>
						<button class="button2" onclick="showPreviousForm()">PREV</button>

						<button>Sign up</button>
						<p>
							<span> Already have an account? </span> <b onclick="toggle()"
								class="pointer"> Sign in here </b>
						</p>
					</div>
					</div>
				</div>
			</div>

			<!-- END SIGN UP -->
			<!-- SIGN IN -->
			<div class="col align-items-center flex-col sign-in">
				<div class="form-wrapper align-items-center">
					<div class="form sign-in">
						<div class="input-group">
							<i class='bx bxs-user'></i> <input type="text" placeholder="아이디">
						</div>
						<div class="input-group">
							<i class='bx bxs-lock-alt'></i> <input type="password"
								placeholder="비밀번호">
						</div>
						<button>로그인</button>
						<p>
							<b> 비밀번호를 잊으셨나요? </b>
						</p>
						<p>
							<span> 계정이 없으세요? </span> <b onclick="toggle()" class="pointer">
								회원가입하기 </b>
						</p>
					</div>
				</div>
				<div class="form-wrapper"></div>
			</div>
			<!-- END SIGN IN -->
		</div>
		<!-- END FORM SECTION -->
		<!-- CONTENT SECTION -->
		<div class="row content-row">
			<!-- SIGN IN CONTENT -->
			<div class="col align-items-center flex-col">
				<div class="text sign-in">
					<h2>Welcome</h2>

				</div>
				<div class="img sign-in"></div>
			</div>
			<!-- END SIGN IN CONTENT -->
			<!-- SIGN UP CONTENT -->
			<div class="col align-items-center flex-col">
				<div class="img sign-up"></div>
				<div class="text sign-up">
					<h2>Join with us</h2>

				</div>
			</div>
			<!-- END SIGN UP CONTENT -->
		</div>
		<!-- END CONTENT SECTION -->
	</div>

	<!-- 우편번호 -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	  function daumPostcode() {
          new daum.Postcode({
              oncomplete: function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
  
                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var fullAddr = ''; // 최종 주소 변수
                  var extraAddr = ''; // 조합형 주소 변수
  
                  // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      fullAddr = data.roadAddress;
  
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      fullAddr = data.jibunAddress;
                  }
  
                  // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                  if(data.userSelectedType === 'R'){
                      //법정동명이 있을 경우 추가한다.
                      if(data.bname !== ''){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있을 경우 추가한다.
                      if(data.buildingName !== ''){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                      fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                  }
  
                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
                  document.getElementById('addr1').value = fullAddr;
  
                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById('addr2').focus();
              }
          }).open();
      }
      
  
  
  <!-- 슬라이드 -->

  function showNextForm() {
	    const signUpForm1 = document.querySelector('.form.sign-up');
	    const signUpForm2 = document.querySelector('.form.sign-up2');

	    // 현재 폼 슬라이드 아웃
	    signUpForm1.classList.add('slide-out-left');
	    signUpForm1.classList.remove('slide-in-left');

	    // 다음 폼 슬라이드 인
	    setTimeout(() => {
	        signUpForm1.classList.add('hidden');
	        signUpForm1.classList.remove('slide-out-left');

	        signUpForm2.classList.remove('hidden');
	        signUpForm2.classList.add('slide-in-right');
	    }, 500); // 애니메이션 시간과 동일
	}

	function showPreviousForm() {
	    const signUpForm1 = document.querySelector('.form.sign-up');
	    const signUpForm2 = document.querySelector('.form.sign-up2');

	    // 현재 폼 슬라이드 아웃
	    signUpForm2.classList.add('slide-out-right');
	    signUpForm2.classList.remove('slide-in-right');

	    // 이전 폼 슬라이드 인
	    setTimeout(() => {
	        signUpForm2.classList.add('hidden');
	        signUpForm2.classList.remove('slide-out-right');

	        signUpForm1.classList.remove('hidden');
	        signUpForm1.classList.add('slide-in-left');
	    }, 500); // 애니메이션 시간과 동일
	}

	let container = document.getElementById('container');

	toggle = () => {
	    const signUpForm1 = document.querySelector('.form.sign-up');
	    const signUpForm2 = document.querySelector('.form.sign-up2');

	    // 로그인/회원가입 상태 전환
	    container.classList.toggle('sign-in');
	    container.classList.toggle('sign-up');

	    // 회원가입 상태 초기화
	    if (container.classList.contains('sign-up')) {
	        signUpForm1.classList.remove('hidden', 'slide-out');
	        signUpForm2.classList.add('hidden', 'slide-in');
	    } else {
	        signUpForm1.classList.add('hidden', 'slide-out');
	        signUpForm2.classList.add('hidden', 'slide-in');
	    }
	};

	// 초기화
	setTimeout(() => {
	    container.classList.add('sign-in');
	}, 200);
  
 
	  </script>
</body>
</html>