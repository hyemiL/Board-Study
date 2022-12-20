<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<body>
	<!-- wrap -->
	<div id="wrap">
		<!-- header -->
		<%@ include file="/WEB-INF/views/include/header.jsp" %>
		<!-- //header -->

		<!-- container -->
		<div id="container">
			<!-- lnb -->
			<%@ include file="/WEB-INF/views/include/lnb.jsp" %>
			<!-- //lnb -->

			<!-- contents -->
			<div class="contents">
				<!-- title_area -->
				<div class="title_area">
					<h3 class="title">게시글 리스트</h3>
					<nav class="breadcrumb">
						<a href="#">Home</a><span><a href="#">게시판</a></span><strong>게시글 리스트</strong>
					</nav>
				</div>
				<!-- //tit_area -->

				<!-- txt_box -->
				<div class="cont">
					<div class="board_ty bl">
						<table>
							<caption>게시글 리스트 조회</caption>
							<colgroup>
								<col span="1" style="width: 15%;">
								<col span="1" style="width: 35%;">
								<col span="1" style="width: 15%;">
								<col span="1" style="width: 35%;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">제목 및 내용</th>
									<td class="left">
										<input type="text" class="input_ty" style="width: 100%;">
									</td>
									<th scope="row">ID</th>
									<td class="left">
										<input type="text" class="input_ty" style="width: 100%;">
									</td>
								</tr>
								<tr>
									<th scope="row">카테고리</th>
									<td class="left">
										<select>
											<option value="">동·식물</option>
											<option value="">운동</option>
											<option value="" selected>개발</option>
											<option value="">음악</option>
											<option value="">기타</option>
										</select>
									</td>
									<td class="right" colspan="2">
										<a href="#" class="btn_xs02"><span class="ico_search">검색</span></a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //board_ty -->
				</div>
				<!-- //txt_box -->

				<!-- 사용자조회 및 관리 -->
				<div class="cont">
					<!-- board_header -->
					<div class="board_header">
						<!-- board_search -->
						<div class="board_search right">
							<select>
								<option value="">10줄씩보기</option>
								<option value="">20줄씩보기</option>
								<option value="" selected>30줄씩보기</option>
								<option value="">50줄씩보기</option>
								<option value="">100줄씩보기</option>
							</select>
						</div>
						<!-- //board_search -->
					</div>
					<!-- //board_header -->
					<!-- board_ty -->
					<div class="board_ty">
						<table>
							<caption>사용자조회 및 관리 목록</caption>
							<colgroup>
								<col span="1" style="width: 70px;">
								<col span="1" style="width: 10%;">
								<col span="1" style="width: 15%;">
								<col span="1" style="">
								<col span="1" style="width: 150px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">No</th>
									<th scope="col">작성자 ID</th>
									<th scope="col">카테고리</th>
									<th scope="col">제목</th>
									<th scope="col">등록일시</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${boardInfo.no}</td>
									<td>${boardInfo.userId}</td>
									<td>${boardInfo.category}</td>
									<td>${boardInfo.title}</td>
									<td>${boardInfo.regDate}</td>
								</tr>
								<tr>
									<td>1,125</td>
									<td>test02</td>
									<td>개발, 동·식물</td>
									<td>오늘 넘 탈개발 하기 좋은 날씨 같네요^^.......</td>
									<td>2022.12.06 23:48:30</td>
								</tr>
								<tr>
									<td>1,124</td>
									<td>test01</td>
									<td>운동, 음악, 기타</td>
									<td>런데이 ** 원래 이렇게 한강에 뛰어 들고 싶게 만드나요?</td>
									<td>2022.12.06 22:30:00</td>
								</tr>
								<!-- 등록된 화면이 없을 경우 -->
								<tr>
									<td colspan="5" class="emp">조회된 데이터가 없습니다.</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //board_ty -->
					<!-- btn_area -->
					<ul class="btn_area">
						<li class="right">
							<a href="#" class="btn_s btn_ty02"><span class="ico_confirm">등록</span></a>
						</li>
					</ul>
					<!-- //btn_area -->
					<!-- paginate -->
					<div class="paginate">
						<a href="#" class="prev02">처음</a> 
						<a href="#" class="prev">이전</a>
						<a href="#" class="on">1</a>
						<!-- 현위치 표시 : class="on" -->
						<a href="#">2</a> 
						<a href="#">3</a> 
						<a href="#">4</a> 
						<a href="#">5</a>
						<a href="#" class="next">다음</a> 
						<a href="#" class="next02">마지막</a>
					</div>
					<!-- //paginate -->
				</div>
				<!-- //사용자조회 및 관리 -->
			</div>
			<!-- //contents -->
		</div>
		<!-- //container -->

		<!-- footer -->
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
		<!-- //footer -->
	</div>
	<!-- wrap -->
	
<script>
	document.querySelector('.btn_xs02').addEventListener('click', e => {
		console.log("안녕하세요");
	});
	
	$('.btn_xs02').on("click", function() {
		console.log("jquery!!");
	});
</script>

</body>
</html>
