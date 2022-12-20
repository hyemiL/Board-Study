<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp"%>
<body>
	<!-- wrap -->
	<div id="wrap">
		<!-- header -->
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
		<!-- //header -->

		<!-- container -->
		<div id="container">
			<!-- lnb -->
			<%@ include file="/WEB-INF/views/include/lnb.jsp"%>
			<!-- //lnb -->

			<!-- contents -->
			<div class="contents">
				<!-- title_area -->
				<div class="title_area">
					<h3 class="title">게시글 등록</h3>
					<nav class="breadcrumb">
						<a href="#">Home</a><span><a href="#">게시판</a></span><strong>게시글 등록</strong>
					</nav>
				</div>
				<!-- //tit_area -->

				<!-- 사용자등록 -->
				<div class="cont">
					<p class="txt_board_guide">
						<span class="ico_es txt_red">* </span>표시는 필수 입력내용입니다.
					</p>
					<!-- 상단우측 게시판 정보-->
					<!-- board_ty -->
					<div class="board_ty">
						<form action = "/board/insert" method="POST" id = "insertFrm">
						<table>
							<caption>게시글 등록</caption>
							<colgroup>
								<col span="1" style="width: 15%;">
								<col span="1" style="width: 85%;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span class="ico_es txt_red">*</span>글 제목</th>
									<td class="left">
										<input type="text" class="input_ty" id = "title" name = "title" style="width: 100%;">
								</tr>
								<tr>
									<th scope="row"><span class="ico_es txt_red">* </span>글 내용</th>
 									<td><textarea id="summernote" name="editordata"></textarea></td>
								</tr>
								<tr>
									<th scope="row"><span class="ico_es txt_red">* </span>전체 공개 허용</th>
									<td class="left">
										<div style="display: inline-block; width: 250px;">
											<span class="pdr02"> <input type="radio" name="use01" id="use01_1" class="radio_ty" checked> 
												<label for="use01_1">Yes</label>
											</span> 
											<span class="pdr02"> <input type="radio" name="use01" id="use01_2" class="radio_ty"> 
												<label for="use01_2">No</label>
											</span>
										</div> 
										<span class="txt">* No로 변경할 경우, 작성자만 확인할 수 있습니다.</span>
									</td>
								</tr>
							</tbody>
						</table>
						</form>
					</div>
					<!-- //board_ty -->
					<!-- btn_area -->
					<ul class="btn_area">
						<li class="right">
							<a href="#" class="btn_s btn_ty02" onclick="insertBoard();"><span class="ico_confirm">저장</span></a> 
					<!--<a href="#" class="btn_s btn_ty02"><span class="ico_write">수정</span></a>-->
							<a href="#" class="btn_s btn_ty"><span class="ico_delete">삭제</span></a>
					<!--<a href="#" class="btn_s btn_ty"><span class="ico_list">목록</span></a>-->
						</li>
					</ul>
					<!-- //btn_area -->
				</div>
				<!-- //사용자등록 -->
			</div>
			<!-- //contents -->
		</div>
		<!-- //container -->

		<!-- footer -->
		<%@ include file="/WEB-INF/views/include/footer.jsp"%>
		<!-- //footer -->
	</div>
	<!-- wrap -->
	
	<script>	
/*  	function insertBoard() {
 		var title = $("input#title").val();
 		var editordata = $("textarea#summernote").val();
 		
		$.ajax({
			url: "/board/insert",
			type: "POST",
			data: {
				title: title,
				editordata: editordata
			},
			success: function(data) {
				alert("success", data);
			},
			error: function(request, status, error) {
				alert("error" + error);
				console.log(title); 
				console.log(editordata);
			}
		})
	}; */
	
	function insertBoard() {
		
	var data = {};
	data["title"] = $('input#title').val();
	data["editordata"] = $('textarea#summernote').val();

	
		$.ajax({
			url: "/board/insert",
			type: "POST",
			contentType: "application/json", 
			data: JSON.stringify(data),
			success: function(data) {
				console.log(data);
				console.log("success");
				/* console.log(title);
				console.log(editordata); */
				console.log(data.title);
				console.log(data.editordata);
			},
			error: function(request, status, error, data) {
				console.log(data);
				console.log("error" + error);
/* 				console.log(title); 
				console.log(editordata); */
			}
		})
	};
	
	
	$(document).ready(function() {
		//여기 아래 부분
		$('#summernote').summernote({
			  height: 500,                 // 에디터 높이
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
			  tabsize : 2, 						//탭사이즈
			  lang: "ko-KR",					// 한글 설정
			  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
			  toolbar: [
							    // 글꼴 설정
							    ['fontname', ['fontname']],
							    // 글자 크기 설정
							    ['fontsize', ['fontsize']],
							    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
							    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
							    // 글자색
							    ['color', ['forecolor','color']],
							    // 표만들기
							    ['table', ['table']],
							    // 글머리 기호, 번호매기기, 문단정렬
							    ['para', ['ul', 'ol', 'paragraph']],
							    // 줄간격
							    ['height', ['height']],
							    // 그림첨부, 링크만들기, 동영상첨부
							    ['insert',['picture','link','video']],
							    // 코드보기, 확대해서보기, 도움말
							    ['view', ['codeview','fullscreen', 'help']]
							  ],
				  // 추가한 글꼴
				fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
				 // 추가한 폰트사이즈
				fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	          
		});
	});
	</script>
</body>
</html>
