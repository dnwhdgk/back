<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Yanolja</title>
    <link rel="stylesheet" href="${path}/resources/css/main/reset.css" />
    <link rel="stylesheet" href="${path}/resources/css/main/css.css" />
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${path}/resources/js/jquery/jquery.fadethis.js"></script>
    <script src="${path}/resources/js/js.js"></script>
    <script src="${path}/resources/js/jquery/jquery.easeScroll.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.js"></script>
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

      <section id="contents">
        <!-- 메인페이지 1번째 -->
        <section id="container">
          <video muted="" playsinline="" loop="" autoplay="">
            <source src="${path}/resources/video/index.mp4" type="video/mp4" />
          </video>
          <div class="txt">
            <span class="slide-bottom"
              >누구나<br />
              마음 편히<br />
              놀 수 있게
            </span>
          </div>
        </section>

        <!-- 메인페이지 2번째 -->
        <section id="container2">
          <div id="platform">
            <div class="plat_txt">
              <span>Platform business</span>
              <h2 class="slide-bottom">
                세상의<br />
                모든 여행
              </h2>
              <p class="slide-bottom" data-plugin-options='{"distance":100}'>
                Yanolja app만 있으면<br />
                누구나 언제 어디서든<br />
                여행을 즐길 수 있습니다.
              </p>
              <p id="con2_ho">Platform business</p>
            </div>

            <video muted="" playsinline="" loop="" autoplay="">
              <source src="${path}/resources/video/index_platform.mp4" type="video/mp4" />
            </video>
          </div>
        </section>

        <!-- 메인페이지 3번째 -->
        <section id="container3">
          <img src="${path}/resources/images/sec2_2.jpg" alt="" />
          <div class="hos_txt">
            <span>Hospitality solution</span>
            <h2 class="slide-bottom">
              편리하게 즐기는<br />
              여행 기술
            </h2>
            <p class="slide-bottom" data-plugin-options='{"distance":100}'>
              클라우드 기반 호텔 자동화 솔루션<br />
              Y FLUX를 통해 체크인부터 체크아웃까지<br />
              마음 편히 즐길 수 있는 똑똑한 여행 기술을 고민합니다.
            </p>
            <p id="con3_ho">Hospitality solution</p>
          </div>
        </section>

        <!-- 메인페이지 4번째 -->
        <section id="container4">
          <div class="space_txt">
            <span>Space business</span>
            <h2 class="slide-bottom">
              여가 생활의<br />
              가치를 극대화하는<br />
              공간 디자인
            </h2>
            <p class="slide-bottom" data-plugin-options='{"distance":100}'>
              호텔부터 문화·주거 공간까지<br />
              공간에 대한 모든 서비스를 제공합니다.
            </p>
            <p id="con4_ho">Space business</p>
          </div>
          <div class="space_img">
              <div class="box1 page loading"><img src="${path}/resources/images/sec3_1.jpg"  alt="" /></div>
              <div class="box2 page loading"><img src="${path}/resources/images/sec3_2.jpg"  alt="" /></div>
              <div class="box3 page loading"><img src="${path}/resources/images/sec3_3.jpg"  alt="" /></div>
              <div class="box4 page loading"><img src="${path}/resources/images/sec3_4.jpg"  alt="" /></div>
              <div class="box5 page loading"><img src="${path}/resources/images/sec3_5.jpg"  alt="" /></div>
              <!-- <img src="images/sec3_5.jpg"  alt="" /> -->
          </div>
          
        </section>
        

        <!-- 메인페이지 5번째 -->
        <section id="container5">
          <div class="group">
            <div class="careers">
              <div class="car_cont">
                <h3>Careers</h3>
                <p>야놀자만의 기업문화와 채용정보를 확인해보세요.</p>
                <p class="ca">Careers</p>
                <div id="con5_L">
                  <div id="con5_L_img"></div>
              </div>
              </div>
            </div>

            <div class="partnership">
              <div class="par_cont">
                <h3>Partnership</h3>
                <p>야놀자와 함께 성장할 기업을 모십니다.</p>
                <p class="pa">Partnership</p>
                <div id="con5_R">
                  <div id="con5_R_img"></div>
              </div>
              </div>
            </div>
          </div>
        </section>
      </section>

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
