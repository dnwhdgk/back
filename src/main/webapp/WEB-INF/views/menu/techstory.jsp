<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>techstory</title>
    <link rel="stylesheet" href="${path}/resources/css/main/reset.css" />
    <link rel="stylesheet" href="${path}/resources/css/menu/tech.css" />
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="${path}/resources/js/jquery/jquery.fadethis-tech.js"></script>
    <script src="${path}/resources/js/js.js"></script>
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
            <section class="main_img">
              <img src="${path}/resources/images/techlmain.PNG" alt="">
            </section>
          
            <section class="tech_img">
              <div class="slide-bottom" data-plugin-options='{"speed": 600}'>
                <img src="${path}/resources/images/Screenshot_1.png">
              </div>
              <div class="slide-bottom" data-plugin-options='{"speed": 1100}'>
                <img src="${path}/resources/images/Screenshot_2.png">
              </div>
              <div class="slide-bottom" data-plugin-options='{"speed": 1400}'>
                <img src="${path}/resources/images/Screenshot_3.png">
              </div>
              

              <div class="slide-bottom" data-plugin-options='{"speed": 1700}'>
                <img src="${path}/resources/images/Screenshot_4.png">
              </div>
              <div class="slide-bottom" data-plugin-options='{"speed": 2000}'>
                <img src="${path}/resources/images/Screenshot_5.png">
              </div>
              <div class="slide-bottom" data-plugin-options='{"speed": 2300}'>
                <img src="${path}/resources/images/Screenshot_6.png">
              </div>
            </section>

            <section class="rd">
              <div class="slide-bottom" data-plugin-options='{"offset": -500}'>
                <div class="group">
                    <div class="photo">
                        <img src="${path}/resources/images/Screenshot_7.png" alt="">
                    </div>

                    <div class="txt">
                      <h2>야놀자는<br>
                      전체 인력 중 40%이상의<br>
                      R&D 전문 인력을<br>
                      구축하고 있습니다.</h2>

                      <div class="left_group">
                        <div class="top_txt">
                          <p>15년 이상 업력을<br>
                            기반으로 한 업계에 대한<br>
                            높은 이해도 보유</p>
                        </div>
                        <div class="bottom_txt">
                          <p>다양한 해외 파트너십을 통한<br>
                            글로벌 서비스 운영</p>
                        </div>
                      </div>

                      <div class="right_group">
                        <div class="r_top_txt">
                          <p>혁신적인 서비스 개발 및 현지화<br>
                            가능한 글로벌 R&D<br>
                            조직 구축</p>
                        </div>
                        <div class="r_bottom_txt">
                          <p>호스피탈리티 시장에 최적화된<br>
                            상품 기획, 개발, 영업,<br>
                            운영 역량 및 시스템 보유</p>
                        </div>
                        
                      </div>
                    </div>
                </div>
              </div>
            </section>

            <section id="global">
              <div class="slide-bottom" data-plugin-options='{"offset": -650}'>
                <div class="img">
                  <img src="${path}/resources/images/Screenshot_8.png" alt="">                           
                  <h2>야놀자는 글로벌 트레블 테크<br>
                      기업으로 전 세계 170개국,<br>
                      30,000개 이상의 고객사에<br>
                      60개 언어로 서비스를 제공합니다.</h2>
                </div>
              </div>
            </section>

            <section id="yflux">
              <div class="slide-bottom" data-plugin-options='{"offset": -200}'>
                <div class="yf_img">
                  <img src="${path}/resources/images/YFLUX.png" alt="">
                  <h2>완전 통합된 호텔 자동화 솔루션</h2>
                </div>
              </div>
            </section>

            <section id="kiosk">
              
                <div class="ki_group">
                  <div class="ki_img">
                    <img src="${path}/resources/images/sec2_vid_thumb_1.jpg" alt="">
                  </div>

                  <div class="slide-bottom" data-plugin-options='{"offset": 350}'>
                    <div class="ki_txt">
                      <h2>Y FLUX 키오스크는<br>
                        플랫폼과 실시간으로 연동돼<br>
                        언택트 셀프 체크인을 지원합니다.</h2>
                      <p>고객이 직접 신원을 인증하는 블록체인 예약 방식과<br>
                        QR 코드 및 안면인식 기능을 통한<br>
                        셀프 체크인으로 운영 효율을 높입니다.</p>
                      <span>21년 상용화 예정</span>
                    </div>
                  </div>
                </div>
              
            </section>

            <section id="lot">
                <div class="lot_group">
                    <div class="lot_left">
                        <img src="${path}/resources/images/sec2_vid_thumb_2.jpg" alt="">
                    </div>
                    
                    <div class="lot_right">
                      <div class="right_img">
                        <img src="${path}/resources/images/sec2_vid_thumb_3.jpg" alt="">
                      </div>
                        
                        <div class="slide-bottom" data-plugin-options='{"offset": 300}'>
                          <div class="lot_txt">
                            <h2>loT 센서를 활용해<br>
                                모바일로 편리한<br>
                                객실 제어가 가능합니다.</h2>
                            <p>재실 여부를 실시간으로 트래킹하고<br>
                                안정적인 객실 관리 서비스를 제공합니다.<br>
                                객실 내 전자기기와도 연동해<br>
                                모바일 기반의 컨트롤 기능을 지원합니다.</p>
                          </div>
                        </div>
                    </div>
                </div>
            </section>

            <section id="auto_sys">
                <div class="sys_group">
                    <div class="sys_img">
                      <img src="${path}/resources/images/sec2_vid_thumb_4.jpg" alt="">
                    </div>

                    <div class="slide-bottom" data-plugin-options='{"offset": 400}'>
                      <div class="sys_txt">
                        <h2>자동화된 객실 관리 시스템은<br>
                            고객 편의와 운영 효율을<br>
                            동시에 제고합니다.</h2>
                        <p>예약부터 객실 관리, 사업 운영 등<br>
                            호텔 자산 관리의 전 과정을 자동화해<br>
                            운영 상의 오류를 최소화하고 효율을 높입니다.</p>
                      </div>
                    </div>
                </div>
            </section>

            <section id="live">
              <div class="live_group">
                  <div class="live_img">
                    <img src="${path}/resources/images/sec2_vid_thumb_5.jpg" alt="">
                  </div>

                  <div class="slide-bottom" data-plugin-options='{"offset": 350}'>
                    <div class="live_txt">
                      <h2>실시간으로 객실 현황을<br>
                          관리해 판매 채널을<br>
                          최적화합니다.</h2>
                      <p>온라인 판매 채널 매니저로<br>
                        다양한 판매 채널을 실시간 통합 관리합니다.<br>
                        예약 현황을 실시간으로 연동해 중복 예약을 방지하고<br>
                        채널별 판매 전략도 수립할 수 있습니다.</p>
                    </div>
                  </div>
              </div>
            </section>
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
