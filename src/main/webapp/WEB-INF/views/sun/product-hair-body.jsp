<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link href="/css/sun/list.css"  rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/d66ae73db8.js" crossorigin="anonymous"></script>



</head>
<body>
<jsp:include page="../header.jsp" />

<section class="contents">
    <div class="product-header">
        <div class="product-text">
            <h2 class="product-title">헤어/바디</h2>
            <div class="product-desc">
                <pre>도비스프리 헤어/바디 전체 제품 페이지 입니다.
그린티 프레시 샴푸, 퍼퓸드 바디&헤어 미스트, 제주 라이프 퍼퓸드 핸드크림 등 다양한 도비스프리 헤어/바디 제품들을 샴푸, 바디로션, 핸드크림, 여성청결제, 핸드워시, 바디스크럽 등 제품 유형별로 확인해보세요. </pre>
            </div>
        </div>

        <img src="/img/sun/product-image/hair-body_main.jpg" alt="헤어/바디 메인사진"/>

    </div>

    <div class="product-contents">
        <div class="sort-contents">
            <p class="product-length">
                총
                <strong class="num">
                    4개
                </strong>
                의 도비스프리
                <strong class="cate">
                    헤어바디
                </strong>
                제품이 있습니다.
            </p>

            <div class="product-sort-click">
                <ul>
                    <li>
                        <label >최신순</label>
                    </li>
                    <li>
                       <label>높은 가격순</label>
                    </li>
                </ul>
            </div>

        </div>



        <!-- 상품 리스트 -->
        <div class="product-list">
            <c:forEach var="hairbody" items="${hairBodyProducts}">
                <div class="product">
                    <div class="product-img">
                        <img src="${hairbody.rep_img}" alt="헤어바디 상품 이미지" />
<%--                        <div class="cart_icon">--%>
<%--                            <img class="icon" src="/img/main/003.png"  />--%>
<%--                        </div>--%>
                    </div>
                    <div class="product-info">
                        <span class="product-name">${hairbody.prod_nm}</span>
                        <p class="price">
                            <c:choose>
                                <c:when test="${hairbody.dc_yn == 'N'}">
                                    <strong class="discount-price">${hairbody.amt}</strong>
                                    <span class="original-price"></span>
                                    <span class="discount-rate"></span>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="dc" items="${Products_DC}">
                                        <c:if test="${hairbody.prod_id == dc.prod_id}">
                                            <strong class="discount-price">${dc.dc_price}</strong>
                                            <span class="discount-rate">${dc.dc_rate}%</span>
                                        </c:if>
                                    </c:forEach>
                                    <span class="original-price">${hairbody.amt}</span>
                                </c:otherwise>
                            </c:choose>
                        </p>

                        <div class="tag-wrap"></div>
                        <div class="star-wrap">
                            <i class="fas fa-star"></i>
                            <span class="star-rating">${hairbody.avg_ascr} (${hairbody.revw_ncnt})</span>
                            <span class="heart-icon">
                        <i class="far fa-heart"></i>
                                <i class="fa-solid fa-cart-shopping"></i>
                    </span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

<%--        <div class="product-list">--%>
<%--            <!-- 첫 번째 상품 행 -->--%>
<%--            <div class="product-row">--%>
<%--                <!--상품 내용 전체-->--%>
<%--                <!--상품1-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <!-- 다른 상품들 -->--%>
<%--                <!--상품2-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


<%--                <!--상품3-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <!--상품4-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <!-- 두 번째 상품 행 -->--%>
<%--            <div class="product-row">--%>
<%--                <!--상품5-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


<%--                <!--상품6-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


<%--                <!--상품7-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <!--상품8-->--%>
<%--                <div class="product">--%>
<%--                    <img src="https://via.placeholder.com/200x200" alt="상품 이미지"/>--%>

<%--                    <div class="product-info">--%>
<%--                        <span class="product-name">상품 이름</span>--%>
<%--                        <p class="price">--%>
<%--                            <strong class="unit">가격</strong>--%>
<%--                            <span class="original-price">할인 전 가격</span>--%>
<%--                            <span class="discount-rate">할인율</span>--%>
<%--                        </p>--%>
<%--                        <div class="tag-wrap"></div>--%>
<%--                        <div class="star-wrap">--%>
<%--                            <i class="fas fa-star"></i>--%>
<%--                            <span class="star-rating">평점 (리뷰 수)</span>--%>
<%--                            <span class="heart-icon">--%>
<%--                       <i class="far fa-heart"></i>--%>
<%--                     </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>


    </div><!--prod-contents 끝-->


    </div>


</section>


<jsp:include page="../footer.jsp" />
</body>
</html>