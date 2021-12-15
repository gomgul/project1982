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
    <link rel="stylesheet" href="<c:url value='/resources/css/6_my_store.css' />" >
</head>
<body>
 

        <!--메뉴바  ------------------------------------------------->
        <header class="header" >
         <!-- 로고-->
            
            <a href="#" class="logo">
                <img src="./3.jpg"/>
            </a>
            
            <!--메뉴-->   
            <h1>업체 상세 페이지</h1>
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
      <section class="section">
          <h1>위치로 업체 검색</h1>
          <div class="select">
          <select name="" id="" >
              <option value="">1</option>
              <option value="">2</option>
              <option value="">3</option>
          </select>
          <select name="" id="">
            <option value="">1</option>
            <option value="">2</option>
            <option value="">3</option>
          </select>
          <select name="" id="">
            <option value="">1</option>
            <option value="">2</option>
            <option value="">3</option>
          </select>
          <select name="" id="">
            <option value="">1</option>
            <option value="">2</option>
            <option value="">3</option>
        </select>
        <button>검색</button>
        </div>
    </section>
      <main>
        <div>
            <div class="table_title">내가 찜한 점포</div>   
            <table border='1'>
                <tr>
                  <td>업체명</td>
                  <td>Price</td>
                  <td>Product</td>
                  <td>Price</td>
                  <td>Product</td>
                  
                </tr>
                <tr>
                  <td>
                    <button class="store_button">gs25</button>
                  </td>
                  <td>3000</td>
                  <td>Product</td>
                  <td><a href="#">Price</a></td>
                  <td>
                    <button class="store_button">gs25</button>
                    <button class="store_button">gs25</button>
                  </td>
               
                </tr>
                <tr>
                  <td>
                    <button class="store_button">gs25</button> 
                  </td>
                  <td>2000</td>
                  <td>Product</td>
                  <td><a href="#">Price</a></td>
                  <td>
                    <button class="store_button">gs25</button>
                    <button class="store_button">gs25</button>
                  </td>
                 
                </tr>
                <tr>
                    <td>
                        <button class="store_button">gs25</button>
                    </td>
                    <td>2000</td>
                    <td>Product</td>
                    <td><a href="#">Price</a></td>
                    <td>
                        <button class="store_button">gs25</button>
                        <button class="store_button">gs25</button>
                      </td>
                </tr>                    
              </table>
              
        </div>
      </main>
      <article>
        <div>
            <div class="table_title">내가 찜한 점포</div>   
            <table border='1'>
                <tr>
                  <td>업체명</td>
                  <td>Price</td>
                  <td>Product</td>
                  <td>Price</td>
                  <td>Product</td>
                  
                </tr>
                <tr>
                  <td>
                    <button class="store_button">gs25</button>
                  </td>
                  <td>3000</td>
                  <td>Product</td>
                  <td><a href="#">Price</a></td>
                  <td>
                    <button class="store_button">gs25</button>
                    <button class="store_button">gs25</button>
                  </td>
               
                </tr>
                <tr>
                  <td>
                    <button class="store_button">gs25</button> 
                  </td>
                  <td>2000</td>
                  <td>Product</td>
                  <td><a href="#">Price</a></td>
                  <td>
                    <button class="store_button">gs25</button>
                    <button class="store_button">gs25</button>
                  </td>
                 
                </tr>
                <tr>
                    <td>
                        <button class="store_button">gs25</button>
                    </td>
                    <td>2000</td>
                    <td>Product</td>
                    <td><a href="#">Price</a></td>
                    <td>
                        <button class="store_button">gs25</button>
                        <button class="store_button">gs25</button>
                      </td>
                </tr>                    
              </table>
              
        </div>
      </article>
      <div class="chart_number">
        <i class="fas fa-chevron-left"></i>
        <p>1</p>
        <p>2</p>
        <p>3</p>
        <i class="fas fa-chevron-right"></i>
      </div>








        <!-- -------------------------------------------------------------------->












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