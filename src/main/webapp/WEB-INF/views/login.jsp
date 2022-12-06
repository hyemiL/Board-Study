<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=1920">
<meta name="format-detection" content="telephone=no">
<meta name="theme-color" content="#516df6">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>로그인 화면</title>
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css">
<script src="../../resources/js/jquery-1.12.4.min.js"></script>
<script src="../../resources/js/ui.js"></script>
<script src="../../resources/js/jquery-ui.min.js"></script>
<script src="../../resources/js/template.js"></script>
</head>

<body class="login">
<!-- login_area -->
<div class="login_area">
    <!-- login_cont -->
    <div class="login_cont">
        <!-- login_cont_box -->
        <div class="login_cont_box">
            <form action = "/board/list" method = "POST" id = "loginFrm">
                <fieldset>
                <legend>연습용 로그인</legend>
					<h1 class="title">아무거나 입력하면 됨</h1>
                    <ul class="login_box">
                        <li><input type="text" id="user_id" name="ID" class="input_ty" placeholder="아이디" title="아이디 입력"></li>
                        <li><input type="password" id="user_pass" name="PASS" class="input_ty" placeholder="비밀번호" title="비밀번호 입력"></li>
                    </ul>
                    <div class="login_g">
						<input type="checkbox" id="id_save" class="chk_ty">
						<label for="id_save">아이디 저장</label>
					</div>
					<a href="#" class="btn" onclick = "return login();">저장</a>
                </fieldset>
            </form>
        </div>
        <!-- //login_cont_box -->
    </div>
    <!-- //login_cont -->
</div>
<!-- //login_area -->
</body>
<script>
	var login = function () {
		var id = $('#user_id').val();
		var password = $('#user_pass').val();
		
		if(id != '' && password != '') {
			$('#loginFrm').submit();
		} else {
			alert("아이디와 비밀번호를 모두 입력하세요");
		}
	};
</script>
</html>
