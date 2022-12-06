<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
	<h1 class="logo">
		<a href="#">게시판 연습하기~!</a>
	</h1>
	<!-- tier -->
	<div class="tier">
		<p class="ad_info">
			<strong>홍길동[honggingdong]</strong>님 반갑습니다.
		</p>
		<div class="tier_btn">
			<a href="#">정보수정</a> <a href="#">로그아웃</a>
		</div>
	</div>
	<!-- //tier -->
	<!-- gnb -->
	<nav id="gnb">
		<h2 class="blind">GNB</h2>
		<!-- gnb_nav -->
		<ul class="gnb_nav">
			<!-- 통계조회 -->
			<li class="dep"><a href="#" class="dep_m">통계조회</a>
				<div class="dep2">
					<ul class="li_dep">
						<li class="li"><a href="#" class="dep_m2">통계조회</a></li>
					</ul>
				</div></li>
			<!-- //통계조회 -->
			<!-- 사용자관리 -->
			<li class="dep"><a href="#" class="dep_m on">게시판</a> <!-- 활성화 class="on" -->
				<div class="dep2">
					<ul class="li_dep">
						<li class="li"><a href="#" class="dep_m2">게시글 리스트</a></li>
						<li class="li"><a href="#" class="dep_m2">게시글 등록</a></li>
					</ul>
				</div></li>
			<!-- //사용자관리 -->
			<!-- 도메인/라이선스 -->
			<li class="dep"><a href="#" class="dep_m">관리자</a>
				<div class="dep2">
					<ul class="li_dep">
						<li class="li"><a href="#" class="dep_m2">사용자 리스트</a></li>
						<li class="li"><a href="#" class="dep_m2">사용자 등록</a></li>
					</ul>
				</div></li>
			<!-- //도메인/라이선스 -->
		</ul>
		<!-- //gnb_nav -->
	</nav>
	<!-- //gnb -->
</header>