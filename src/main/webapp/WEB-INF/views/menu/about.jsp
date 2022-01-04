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
    <link rel="stylesheet" href="${path}/resources/css/menu/about.css" />
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
          <article class="back_img"></article>
          <div class="txt">
            <span 
              >쉼 없는 일상 속에서<br />
              휴식과 영감을 얻기 위해<br />
              놀고 싶은 순간,<br/>
              망설임 없이
            </span>
          </div>
        </section>


        <!-- 메인페이지 2번째 -->
        <section id="container2">
          <h1>Brand mission</h1>
        <div class="txt">
          <span class="slide-bottom">
            누구나<br>
          </span>
          <span class="slide-bottom">
            마음 편히<br>
          </span>
          <span class="slide-bottom">
            놀 수 있게
          </span>
        </div> 
        </section>


        <!-- 메인페이지 3번째 -->
        <section id="container3">
          <h1>Technology</h1>
          <div class="explain">
            <div><img src="${path}/resources/images/sec1_1.jpg" alt=""><br></div>
            <h3 class="slide-bottom">누구나 마음 편히 놀 수 있게</h3>
            <h2 class="slide-bottom">기술을 개발하는 회사</h2>
            <p class="slide-bottom">야놀자는 자체 개발한 클라우드 기반</p>
            <p class="slide-bottom">자동화 솔루션을 호텔, 레저시설, 레스토랑 등</p>
            <p class="slide-bottom"> 여가산업에 적용해 글로벌 호스피탈리티 시장의</p>
            <p class="slide-bottom">기술혁신을 선도합니다.</p>
          </div>
        </section>
        
        
        <!-- 메인페이지 4번째 -->
        <section id="container4">
          <h1 >Information</h1>
          <div class="explain">
            <div><img src="${path}/resources/images/sec1_2.jpg" alt=""><br></div>
            <h3 class="slide-bottom">누구나 마음 편히 놀 수 있게</h3>
            <h2 class="slide-bottom">정보를 주는 회사</h2>
            <p class="slide-bottom">야놀자는 국내 최다 여행 및 여가관련 DB를</p>
            <p class="slide-bottom">보유하고 있습니다. 위치정보를 활용해</p>
            <p class="slide-bottom">다양한 국내외 여가 상품을 쉽게 빠르게 검색,</p>
            <p class="slide-bottom">예약할 수 있으며 고객 편의 서비스를 통해</p>
            <p class="slide-bottom">안심하고 즐기는 여가 환경을 제공합니다.</p>
          </div>
        </section>

        <!-- 메인페이지 5번째 -->
        <section id="container5">
          <h1>Space</h1>
          <div class="explain">
            <div><img src="${path}/resources/images/sec1_3.jpg" alt=""><br></div>
            <h3 class="slide-bottom">누구나 마음 편히 놀 수 있게</h3>
            <h2 class="slide-bottom">공간을 만드는 회사</h2>
            <p class="slide-bottom">야놀자는 숙박·문화·주거·상업 공간까지</p>
            <p class="slide-bottom">다양한 영역에서 재충전(Refresh),</p>
            <p class="slide-bottom">오락(Entertain), 숙박(Stay), 여행(Travel)을,</p>
            <p class="slide-bottom">아우르는 R.E.S.T. 플레이스 구축에</p>
            <p class="slide-bottom">앞장서고 있습니다.</p>
          </div>
        </section>
      
       <!-- 메인페이지 6번째 -->
        <section id="container6">
          <h1>Brand vision</h1>
           <div class="txt">
          <span class="slide-bottom"
          >여가의 패러다임을 전환하는<br />
          글로벌 트래블 플랫폼<br />
          
          </span>
        </div> 

        <div class="explain">
        
          <ul class="img">
            <li><img src="${path}/resources/images/sec2_1.jpg" alt=""></li>
            <li><img src="${path}/resources/images/sec2_2_2.jpg" alt=""></li>
          </ul>
          <ul class="font">
            <li>
              <p class="slide-bottom">여가를 위한 모든 서비스를</p>
              <p class="slide-bottom">제공하는 No.1 슈퍼앱</p>
            </li>
            <li>
              <p class="slide-bottom">여가를 위한 모든 서비스를</p>
              <p class="slide-bottom">제공하는 No.1 슈퍼앱</p>
            </li>  
          </ul>

          <ul class="img">
            <li><img src="${path}/resources/images/sec2_3.jpg" alt=""></li>
            <li><img src="${path}/resources/images/sec2_4.jpg" alt=""></li>
          </ul>
          <ul class="font">
            <li>
              <p class="slide-bottom">전 세계 시장 공략하는</p>
              <p class="slide-bottom">채널링 솔루션(IDS)</p>
            </li>
            <li>
              <p class="slide-bottom">호텔 운영의 모든 측면을</p>
              <p class="slide-bottom">완전 자동화하는</p>
              <p class="slide-bottom">독보적인 언택트 혁신기업</p>
            </li>  
          </ul>
        </div>
      </section>

      <!-- 메인페이지 6번째 -->
      <section id="container7">
        <h1 >History</h1>
        <ul class="table" >

          <li class="slide-bottom">
            <ul class="in_table">
              
              <li ><h2>2021</h2></li>

              <li>
                <ul class="inner_table">
                  <li>4</li>
                  <li>3</li>
                  <li>2</li>
                </ul>

                <ul class="inner_table2">
                  <li>국내 1위 호텔 솔루션기업 기업 </li>
                  <li>국내 1위 호텔 솔루션기업 기업 산하정보기술 연수</li>
                  <li>국내 1위 호텔 솔루션기업 기업 산하정보기술 연수</li>
                </ul>
              </li>

              <li class="icon">
                <img src="${path}/resources/images/premium-icon-add-2723640.png" alt="">
              </li>

            </ul>
          </li>
          
          
          <li class="slide-bottom">
            <ul class="in_table">
              
              <li><h2>2021</h2></li>

              <li>
                <ul class="inner_table">
                  <li>4</li>
                  <li>3</li>
                  <li>2</li>
                </ul>

                <ul class="inner_table2">
                  <li>국내 1위 호텔 솔루션기업 기업 </li>
                  <li>국내 1위 호텔 솔루션기업 기업 산하정보기술 연수</li>
                  <li>국내 1위 호텔 솔루션기업 기업 산하정보기술 연수</li>
                </ul>
              </li>

              <li class="icon">
                <img src="${path}/resources/images/premium-icon-add-2723640.png" alt="">
              </li>

            </ul>
          </li>
          
          
          <li class="slide-bottom">
            <ul class="in_table">
              
              <li><h2>2021</h2></li>

              <li>
                <ul class="inner_table">
                  <li>4</li>
                  <li>3</li>
                  <li>2</li>
                </ul>

                <ul class="inner_table2">
                  <li>국내 1위 호텔 솔루션기업 기업 </li>
                  <li>국내 1위 호텔 솔루션기업 기업 산하정보기술 연수</li>
                  <li>국내 1위 호텔 솔루션기업 기업 산하정보기술 연수</li>
                </ul>
              </li>

              <li class="icon">
                <img src="${path}/resources/images/premium-icon-add-2723640.png" alt="">
              </li>

            </ul>
          </li>

        </ul>
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
