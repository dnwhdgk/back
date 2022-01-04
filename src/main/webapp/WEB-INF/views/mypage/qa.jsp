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
     <link rel="stylesheet" href="${path}/resources/css/main/reset.css" />
    <link rel="stylesheet" href="${path}/resources/css/mypage/qa.css" />
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="${path}/resources/js/mypage.js"></script>
    <script src="${path}/resources/js/jquery/jquery.easeScroll.js"></script>
</head>
<body>
    <!-- 네비게이션 -->
    <nav>
      <div class="sub_mn">
        <!-- 네비게이션 로고 -->
        <div><a href="${path}/"><img src="${path}/resources/images/logo.svg" alt="" /></a></div>
        <li>
          <a href="${path}/about">About</a>
          <ul class="sub_nav">
            <li><a href="#">sub1</a></li>
            <li><a href="#">sub2</a></li>
          </ul>
        </li>
        <li>
          <a href="${path}/techstory">techstory</a>
          <ul class="sub_nav">
            <li><a href="#">sub1</a></li>
            <li><a href="#">sub2</a></li>
          </ul>
        </li>

        <li>
          <a href="${path}/reservation">reservation</a>
          <ul class="sub_nav">
            <li><a href="#">sub1</a></li>
            <li><a href="#">sub2</a></li>
          </ul>
        </li>
        <!-- 로그인 회원가입 -->
        <c:if test="${empty user_id }">
        <ul class="member">
          <li><a href="${path}/login">로그인</a></li>
          <li>&#124;</li>
          <li><a href="${path}/join">회원가입</a></li>
        </ul>
        </c:if>
        
        <c:if test="${not empty user_id }">
          <ul class="member">
         <li><a href="${path}/mypage">${user_id }</a></li>
          <li>&#124;</li>
          <li><a href="${path }/logout">로그아웃</a></li>
        </ul>
        </c:if>
      </div>
    </nav>
      
   
    <div id="wrap">
      <div class="nav"></div>
      <header id="header">

        </header>
        <div id="contents">
          <table>
              <tr class="table_t">
                  <th>No.</th>
                  <th>작성자</th>
                  <th>제목</th>
                  <th>작성일</th>
              </tr>
               <c:forEach var="getQna" items="${map.qnaList}">
	              <tr class="table_c">
	                  <td>${getQna.qna_id}</td>
	                  <td>${getQna.user_id}</td>
	                  <td><a href="${path}/qa_v?qna_id=${getQna.qna_id}">${getQna.qna_tit}</a></td>
	                  <td>${getQna.qna_date}</td>
	              </tr>
              </c:forEach>
          </table>
         <a href="${path}/qa_w">글쓰기</a>
      </div>
        <!-- 하단 -->
      <footer id="footer">
        <div id="foot_L">
            <div id="foot_logo">
                <img src="${path}/resources/images/ya_bla.svg">
            </div>
        </div>
        <div id="foot_R">
            <div id="family">
                <ul id="f_s">
                    <li><a href="">Family site</a>
                        <ul class="family_sub">
                            <li><a href="#">야놀자</a></li>
                            <li><a href="#">야놀자 비즈니스</a></li>
                            <li><a href="#">이지테크노시스</a></li>
                            <li><a href="#">젠룸스</a></li>
                            <li><a href="#">산하정보기술</a></li>
                            <li><a href="#">데일리호텔</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="sns">
                    <p>Follow us</p>
                    <li><a href="#"><img src="${path}/resources/images/in.svg"></a></li>
                    <li><a href="#"><img src="${path}/resources/images/face.svg"></a></li>
                    <li><a href="#"><img src="${path}/resources/images/insta.svg"></a></li>
                    <li><a href="#"><img src="${path}/resources/images/naver.svg"></a></li>
                    <li><a href="#"><img src="${path}/resources/images/youtube.svg"></a></li>
                </ul>
            </div>
        </div>
        <div id="foot_m">
            <div id="foot_m_h">
                <ul>
                    <li><a href="#"><span>TEL</span><span>1644-1346</span></a></li>
                    <li><span>FAX</span><span>02-548-1886</span></li>
                    <li><a href="#"><span>contact@yanolja.com</span></a></li>
                </ul>
                <div class="copyright">
                    <a href="#">
                        서울특별시 강남구 테헤란로 108길 42 (대치동 1003)<br/>
                        © Yanolja Co., Ltd.
                    </a>
                </div>
            </div>
        </div>
            
    </footer>
</body>
</html>