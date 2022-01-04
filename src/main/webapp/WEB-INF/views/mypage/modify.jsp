<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="${path}/resources/css/main/reset.css" />
    <link rel="stylesheet" href="${path}/resources/css/mypage/modify.css" />
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery.min.js" charset="UTF-8"></script>
    <script src="${path}/resources/js/modify.js" charset="UTF-8"></script>
    
  </head>
  <body>
    <div id="wrap">
      <form action="./modifyAction" method="POST" id="join">
        <!-- 로고 -->
        <h1>회원정보 변경하기</h1>
        <!-- 아이디 입력창 -->
        <div id="id_box">
        	${user_id }
        </div>
        <input type="hidden" name="user_id" value="${user_id }"/>
        <!-- 비밀번호 입력창 -->
        <input
          type="password"
          name="user_pw"
          id="user_pw"
          placeholder="비밀번호를 입력하세요"
          required
        />
        <input
          type="password"
          name="user_pw2"
          id="user_pw2"
          placeholder="비밀번호 확인"
          required
        />
        <div id="pass_ch">
          <h6 id="diff_pw">비밀번호가 서로 다릅니다.</h6>
          <h6 id="equal_pw">확인되었습니다.</h6>
        </div>
        <!-- 이름 입력창 -->
        <div id="name">
          <input
            type="text"
            name="user_name"
            id="user_name"
            placeholder="이름을 입력하세요"
            required
          />
        </div>

        <!-- 수정버튼 -->
        <button type="submit" id="join_btn">수정하기</button>
      </form>
    </div>
  </body>
</html>
