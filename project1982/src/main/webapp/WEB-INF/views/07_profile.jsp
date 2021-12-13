<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/FortAwesome/Font-Awesome@5.14.0/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/7/style/style.css' />" >
    <link rel="stylesheet" href="<c:url value='/resources/css/header.css'/>" >
</head>
<body>
 

        <!--메뉴바  ------------------------------------------------->
        <header class="header" >
         <!-- 로고-->
            
            <a href="#" class="logo">
                <img src=""/>
            </a>
            
            <!--메뉴-->   
            <ul class="menu">
                <li><a href="#">구직자용</a></li>
                <li><a href="#">구인자용</a>
                <!--쎄일 라벨 -->
                    <span class="sale-lable">신규</span>
                </li>
                <li><a href="#">둘러보기</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
            <!-- 오른쪽 메뉴-->
            <div class="right-menu">
                <!--검색 -->
                <a href="#" class="search">
                    <i class="fas fa-search"></i>
                </a>
                <!--유저 -->
                <a href="#" class="user">
                    <i class="far fa-user"></i>
                </a>
                <!--카트  -->
                <a href="#">
                    <i class="fas fa-shopping-cart">
                    <!--카트 상품-->
                    <span class="num-cart-product">0</span>
                    </i>
                </a>
            </div>

        </header>

    <!-- 메인 ---------------------------------------------------------------->
        <main>
            <form action="">
            <ul class="left_nav">
                <li class="left_nav_text"><a class="home" href="#">홈</a></li>
                <li class="left_nav_text"><a href="#">새소식</a></li>
                <li class="left_nav_text"><a href="#">상품</a></li>
                <li class="left_nav_text"><a href="#">회사</a></li>
            </ul>
            <div class="body_container"> <!-- 페이지 컨테이너 시작-->
                
                <div class="body_container_center"> <!-- 중간 메뉴바 시작-->
            <article class="article">
                <div>
                    <p>프로필 수정</p>
                    <div>
                        <img src="" alt="">
                        <button>대표사진변경</button>
                    </div>
                </div>
                <div>
                    <p>자기소개</p>
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                    <button>수정</button>
                </div>
            </article>
            <main class="main">
                <p>이력서 등록/수정</p>
                <div class="main_container">
                    <div>
                        <div class="Hong_img_box">
                            <div>
                                <img src="" alt="">
                                <button>파일첨부</button>
                            </div>
                            <div>
                                <input type="text" placeholder="기본정보">
                                <div><input type="text" placeholder="홍길동"></div>
                                <button>수정</button>
                            </div>
                        </div>
                        <select name="" id="" class="">
                            <option value="">선택사항추가</option>
                            <option value="">2</option>
                            <option value="">3</option>
                            <option value="">4</option>
                        </select>
                        <div><input type="text" placeholder="추가1"></div>
                        <button>이력서 등록 수정</button>


                    </div>  
                    <div class="right_message">
                        <input type="text" placeholder="학력사항">
                        <select name="" id="" class="">
                            <option value="">중학교 졸업</option>
                            <option value="">2</option>
                            <option value="">3</option>
                            <option value="">4</option>
                        </select>
                        <button>삭제</button>
                        <div>
                            <input type="text" placeholder="경력사항">
                            <button>삭제</button>
                        </div>
                        <p>회사명</p>
                        <input type="text" placeholder="한진택배">
                        <p>재직기간</p>
                        <input type="text" placeholder="2020">
                        <input type="text" placeholder="2021">
                        <p>자격증 내역</p>
                        <input type="text" placeholder="원동기 면허">
                        <button>삭제</button>
                        <div>
                        <select name="" id="" class="">
                            <option value="">은행선택</option>
                            <option value="">2</option>
                            <option value="">3</option>
                            <option value="">4</option>
                        </select>
                        </div>
                        <input type="text" placeholder="계좌번호를 입력해주세요">
                    </div>
                </div>  
            </main>
        </div>
        </div>
        </form>
        </main>
        
        
        
        
        
        
        
        
        
        
        
 






<!-- footer --------------------------------------------------------------------->
    <footer>
        <div id="footer">
            <div class="wrap_inner">
                <div class="left_area">
                    <h4 class="rap_inner_h4">
                        일구하자 1982
                    </h4>
                    <div class="left_text">
                        <div class="left_text_margin">
                            <h5>고객센터</h5>
                            <p class="left_phone">1566-1982</p>
                            <p> 
                                <div>평일 AM 09:00 ~ PM 05:30</div>
                                <div>점심 PM 12:00 ~ PM 01:00</div>
                            </p>
                        </div>
                    </div>
                    <div class="footer_icon">
                        <div><a href="#"><i class="fab fa-facebook-f fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                        <div><a href="#"><i class="fab fa-twitter fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                        <div><a href="#"><i class="fab fa-youtube fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                        <div><a href="#"><i class="fab fa-instagram fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                    </div>
                </div>


                <div class="right_area">
                    <div class="right_ul">
                        <p>이용약관 | </p>
                        <p>개인정보처리방침 | </p>
                        <p>일구하자 이용안내 | </p>
                        <p>고객요청</p>
                    </div>
                    <div class="right_address">
                        <p>
                            <span>주식회사 1982 |</span>
                            <a href="#">

                                <span>대표이사 : 한세호 |</span>
                            </a>
                                <span>사업자등록번호 : 123-12-12345</span>
                            </p>
                        <p>
                            <span>통신판매업신고 : 2021-서울가산-1982 |</span>
                            <span>WEBMASTER : 한세호</span>
                        </p>
                        <p>
                            <span>주소 : 00000 서울 금천구 벚꽃로 309 </span>
                        </p>
                        <p>
                            <span>TEL : 1566-1982</span>
                            <span>E - mail : 1982@seho.co.kr</span>
                            <span>호스팅제공자 : 코스모(주)</span>
                        </p>
                    </div>
                    <p class="right_copyright">
                        Copyright by
                        <span>일구하자 1982</span>
                        all rights reserved.
                    </p>
                </div>        
            </div>
        </div>

    </footer>

</body>
</html>