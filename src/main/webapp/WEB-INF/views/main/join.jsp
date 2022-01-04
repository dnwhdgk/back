<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="${path}/resources/css/main/reset.css">
	<link rel="stylesheet" href="${path}/resources/css/main/join.css">
	<link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery.min.js" charset="UTF-8"></script>
	<script src="${path}/resources/js/join.js" charset="UTF-8"></script>
	<script src="${path}/resources/js/bootstrap/bootstrap.js"></script>
</head>
<body>

<div id="wrap">
	
		<form action="./joinAction" method="POST" id="join">
            <!-- 로고 -->
			<h1>
				<a href="form.html"><img src="${path}/resources/images/logo.svg" alt=""></a>
			</h1>
            <!-- 아이디 입력창 -->
            <div id="id_box">
			    <input type="text" name="user_id" id="user_id" placeholder="아이디를 입력하세요" required>
            </div>
            <button type="button" id="id_check">중복확인</button>
            <!-- 비밀번호 입력창 -->
			<input type="password" name="user_pw" id="user_pw" placeholder="비밀번호를 입력하세요" required>
            <input type="password" name="user_pw2" id="user_pw2" placeholder="비밀번호 확인" required>
            <div id="pass_ch">
                <h6 id="diff_pw">비밀번호가 서로 다릅니다.</h6>
                <h6 id="equal_pw">확인되었습니다.</h6>
            </div>
            <!-- 이름 입력창 -->
            <div id="name">
                <input type="text" name="user_name" id="user_name" placeholder="이름을 입력하세요" required>
            </div>
            <!-- 성별 -->
            <div class="gender">
                <input type="radio" id="gender_m" name="user_gender" value="m">
                <label for="gender_m">남자</label>
                <input type="radio" id="gender_w" name="user_gender" value="w">
                <label for="gender_w">여자</label>
            </div>
            <!-- 이메일 입력창 -->
            <div id="email">
                <input type="email" name="user_email" id="user_email" placeholder="이메일을 입력하세요" required>
            </div>
            <button type="button" id="email_btn" data-toggle="modal" data-target="#emailAuthModal">인증</button>
           
            <!-- 가입버튼 -->
			<button type="submit" id="join_btn">회원가입</button>
		</form>
		
		
	<!-- 이메일 인증 모달 -->
<div id="emailAuthModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">이메일 인증</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-lg-8">
						<input type="email" class="form-control" id="user_mail_modal" placeholder="이메일">
					</div>
					<div class="col-lg-4">
						<button type="button" class="btn btn-success btn-block" id="sendAuthBtn">인증번호 전송</button>
					</div>
				</div>
				<div class="row" id="authDiv" style="margin-top: 15px; display: none;">
					<div class="col-lg-4">
						<input type="text" class="form-control" id="auth_num" placeholder="인증번호">
					</div>
					<div class="col-lg-4">
						<button type="button" class="btn btn-primary btn-block" id="authMailBtn">인증</button>
					</div>
					<div class="col-lg-4"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 이메일 인증 모달 종료 -->
	

</div>

<script>
$(document).ready(function(){
	var msg = '${msg}';
	if(msg != null && msg != '') alert(msg);
});
</script>

</body>
</html>