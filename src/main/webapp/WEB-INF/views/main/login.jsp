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
	<link rel="stylesheet" href="${path}/resources/css/reset.css">
	<link rel="stylesheet" href="${path}/resources/css/login.css">

</head>
<body>

<div id="wrap">
	
		<form action="" id="login">
			<h1>
				<a href="${path}/main"><img src="${path}/resources/images/logo.svg" alt=""></a>
			</h1>
			<input type="text" name="id" id="id" placeholder="아이디를 입력하세요" required>
			<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" required>
			<button type="submit">로그인</button>
			<ul>
				<li><a href="#">회원정보찾기</a></li>
				<li><a href="#">회원가입</a></li>

			</ul>
		</form>
	
	

</div>

</body>
</html>