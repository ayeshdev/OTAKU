<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="com.otaku.webapp.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.otaku.webapp.entity.Products" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: TUF
  Date: 8/18/2023
  Time: 7:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session sessionData = sessionFactory.openSession();

    List<Products> products = sessionData.createQuery("select p from Products p", Products.class).getResultList();
    pageContext.setAttribute("product", products);

%>

<layout:extends name="base">
    <layout:put block="contents" type="REPLACE">
        <main>

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="slider-wrapper my-40 my-sm-25 float-left w-100">
                <div class="container">
                    <div class="ttloading-bg"></div>
                    <div class="slider slider-for owl-carousel">
                        <div>
                            <a href="#">
                                <img src="${BASE_URL}assets/img/slider/banner_1.jpg" alt="" height="800" width="1600"/>
                            </a>
                            <div class="slider-content-wrap center effect_top">
                                <div class="slider-title mb-20 text-capitalize float-left w-100">Step into the World of
                                    Anime Fashion at Otaku!
                                </div>
                                <div class="slider-subtitle mb-50 text-capitalize float-left w-100">"Unleash Your Inner
                                    Otaku Style!"
                                </div>
                                <div class="slider-button text-uppercase float-left w-100"><a href=" #">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        <div>
                            <a href="#">
                                <img src="${BASE_URL}assets/img/slider/banner_2.jpg" alt="" height="800" width="1600"/>
                            </a>
                            <div class="slider-content-wrap center effect_bottom">
                                <div class="slider-title mb-20 text-capitalize float-left w-100" style="color: black;">
                                    Express Your Otaku Style: Dive into Our Anime Clothing Collection
                                </div>
                                <div class="slider-subtitle text-capitalize float-left w-100"
                                     style="margin-bottom: -100px;">"Embrace Your Inner Otaku: Wear Your Passion!"
                                </div>
                                <div class="slider-button text-uppercase float-left w-100"
                                     style="margin-top: 160px; margin-bottom: -80px;"><a href=" #">Shop Now</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-content">
                <div id="ttcmsbanner" class="ttcmsbanner my-40 my-sm-25">
                    <div class="ttbannerblock container text-center">
                        <div class="row">
                            <div class="ttbanner1 ttbanner col-sm-6 col-xs-6 left-to-right hb-animate-element">
                                <div class="ttbanner-img"><a href="#"><img src="${BASE_URL}assets/img/banner/black.jpg"
                                                                           alt="cms-01" height="1000" width="1000"></a>
                                </div>
                                <div class="ttbanner-inner d-inline-block align-top float-none">
                                    <div class="ttbanner-desc float-left w-100">
                                        <h2 class="ttbanner-heading text-uppercase float-left w-100">Black</h2>
                                        <span class="title text-uppercase float-left w-100 pb-3">collection</span>
                                        <span class="subtitle float-left w-100 py-20">"Elevate Your Anime Style with Our Black T-Shirt Collection!"</span>
                                        <span class="shop-now float-left w-100"><a href="#"
                                                                                   class="d-inline-block align-top float-none btn-primary">Shop Now</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="ttbanner2 ttbanner col-sm-6 col-xs-6 right-to-left hb-animate-element">
                                <div class="ttbanner-img"><a href="#"><img src="${BASE_URL}assets/img/banner/white.jpg"
                                                                           alt="cms-02" height="1000" width="1000"></a>
                                </div>
                                <div class="ttbanner-inner d-inline-block align-top float-none">
                                    <div class="ttbanner-desc">
                                        <h2 class="ttbanner-heading text-uppercase">White</h2>
                                        <span class="title text-uppercase float-left w-100 pb-3">collection</span>
                                        <span class="subtitle float-left w-100 py-20">"Elevate Your Anime Style with Our White T-Shirt Collection!"</span>
                                        <span class="shop-now float-left w-100"><a href="#"
                                                                                   class="d-inline-block align-top float-none btn-primary">Shop Now</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div id="main">
                    <div id="hometab" class="home-tab my-40 my-sm-25 bottom-to-top hb-animate-element">
                        <div class="container">


                                <%--        START - TRENDING PRODUCT SECTION ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||--%>

                            <div class="row">
                                <div class="tt-title d-inline-block float-none w-100 text-center">Trending Products
                                </div>
                                <div class="tabs">
                                    <ul class="nav nav-tabs justify-content-center">
                                        <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                                href="#ttfeatured-main" id="featured-tab">
                                            <div class="tab-title">Featured</div>
                                        </a></li>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#ttnew-main"
                                                                id="new-tab">
                                            <div class="tab-title">Latest</div>
                                        </a></li>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                                                href="#ttbestseller-main" id="bestseller-tab">
                                            <div class="tab-title">Bestseller</div>
                                        </a></li>
                                    </ul>
                                </div>


                                <div class="tab-content float-left w-100">

                                        <%--                                    Featured Slider--%>

                                    <div class="tab-pane active float-left w-100" id="ttfeatured-main" role="tabpanel"
                                         aria-labelledby="featured-tab">
                                        <section id="ttfeatured" class="ttfeatured-products">
                                            <div class="ttfeatured-content products grid owl-carousel" id="owl1">


                                                <c:forEach var="product" items="${product}">

                                                    <div class="product-layouts">
                                                        <div class="product-thumb">
                                                            <div class="image zoom">
                                                                <a href="product-details/?id=${product.id}">

                                                                    <c:forEach var="prod_imgs"
                                                                               items="${product.images[0]}">
                                                                        <img src="${BASE_URL}${prod_imgs}" alt="01"
                                                                             height="501" width="385"/>
                                                                    </c:forEach>

                                                                    <c:forEach var="prod_imgs"
                                                                               items="${product.images[1]}">
                                                                        <img src="${BASE_URL}${prod_imgs}"
                                                                             alt="02"
                                                                             class="second_image img-responsive"
                                                                             height="501"
                                                                             width="385"/>
                                                                    </c:forEach>
                                                                </a>
                                                                <ul class="countdown1 countdown">
                                                                    <li><span class="days">00</span>
                                                                        <p class="days_text">Days</p></li>
                                                                    <li><span class="hours">00</span>
                                                                        <p class="hours_text">Hours</p></li>
                                                                    <li><span class="minutes">00</span>
                                                                        <p class="minutes_text">Minutes</p></li>
                                                                    <li><span class="seconds">00</span>
                                                                        <p class="seconds_text">Seconds</p></li>
                                                                </ul>
                                                            </div>
                                                            <div class="thumb-description">
                                                                <div class="caption">
                                                                    <h4 class="product-title text-capitalize"><a
                                                                            href="${BASE_URL}assets/product-details.html">${product.name}</a>
                                                                    </h4>
                                                                </div>
                                                                <div class="rating">
                                                                    <div class="product-ratings d-inline-block align-middle">
                                                                        <span class="fa fa-stack"><i
                                                                                class="material-icons">star</i></span>
                                                                        <span class="fa fa-stack"><i
                                                                                class="material-icons">star</i></span>
                                                                        <span class="fa fa-stack"><i
                                                                                class="material-icons">star</i></span>
                                                                        <span class="fa fa-stack"><i
                                                                                class="material-icons off">star</i></span>
                                                                        <span class="fa fa-stack"><i
                                                                                class="material-icons off">star</i></span>
                                                                    </div>
                                                                </div>
                                                                <div class="price">
                                                                    <div class="regular-price">${product.price}</div>
                                                                    <div class="old-price">$150.00</div>
                                                                </div>
                                                                <div class="button-wrapper">
                                                                    <div class="button-group text-center">
                                                                        <button type="button"
                                                                                class="btn btn-primary btn-cart"
                                                                                data-target="#cart-pop"
                                                                                data-toggle="modal"
                                                                                disabled="disabled"><i
                                                                                class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                        </button>
                                                                        <a href="wishlist.html"
                                                                           class="btn btn-primary btn-wishlist"><i
                                                                                class="material-icons">favorite</i><span>wishlist</span></a>
                                                                        <button type="button"
                                                                                class="btn btn-primary btn-compare"><i
                                                                                class="material-icons">equalizer</i><span>Compare</span>
                                                                        </button>
                                                                        <button type="button"
                                                                                class="btn btn-primary btn-quickview"
                                                                                data-toggle="modal"
                                                                                data-target="#product_view"><i
                                                                                class="material-icons">visibility</i><span>Quick View</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>

                                                    <%--                        <div class="product-layouts">--%>
                                                    <%--                          <div class="product-thumb">--%>
                                                    <%--                            <div class="image zoom">--%>
                                                    <%--                              <a href="${BASE_URL}product-details">--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/2.jpg" alt="02" height="501" width="385"/>--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/2.jpg" alt="03" class="second_image img-responsive" height="501" width="385"/>										</a>--%>
                                                    <%--                              <div class="flags">--%>
                                                    <%--                                <div class="sale">sale</div>--%>
                                                    <%--                                <div class="new">new</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <ul class="countdown countdown2">--%>
                                                    <%--                                <li><span class="days">00</span><p class="days_text">Days</p></li>--%>
                                                    <%--                                <li><span class="hours">00</span><p class="hours_text">Hours</p></li>--%>
                                                    <%--                                <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>--%>
                                                    <%--                                <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>--%>
                                                    <%--                              </ul>--%>
                                                    <%--                            </div>--%>
                                                    <%--                            <div class="thumb-description">--%>
                                                    <%--                              <div class="caption">--%>
                                                    <%--                                <h4 class="product-title text-capitalize"><a href="product-details.jsp">Tropical Shirt Dress</a></h4>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="rating">--%>
                                                    <%--                                <div class="product-ratings d-inline-block align-middle">--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>										</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="price">--%>
                                                    <%--                                <div class="regular-price">$100.00</div>--%>
                                                    <%--                                <div class="old-price">$150.00</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="button-wrapper">--%>
                                                    <%--                                <div class="button-group text-center">--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>--%>
                                                    <%--                                  <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>--%>
                                                    <%--                                </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                            </div>--%>
                                                    <%--                          </div>--%>
                                                    <%--                        </div>--%>
                                                    <%--                        <div class="product-layouts">--%>
                                                    <%--                          <div class="product-thumb">--%>
                                                    <%--                            <div class="image zoom">--%>
                                                    <%--                              <a href="product-details.jsp">--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/3.jpg" alt="03" height="501" width="385"/>--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/3.jpg" alt="04" class="second_image img-responsive" height="501" width="385"/></a></div>--%>
                                                    <%--                            <div class="thumb-description">--%>
                                                    <%--                              <div class="caption">--%>
                                                    <%--                                <h4 class="product-title text-capitalize"><a href="${BASE_URL}assets/product-details.html">Shoulder Embroidered Bodysuit</a></h4>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="rating">--%>
                                                    <%--                                <div class="product-ratings d-inline-block align-middle">--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>										   </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="price">--%>
                                                    <%--                                <div class="regular-price">$100.00</div>--%>
                                                    <%--                                <div class="old-price">$150.00</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="button-wrapper">--%>
                                                    <%--                                <div class="button-group text-center">--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>--%>
                                                    <%--                                  <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>--%>
                                                    <%--                                </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                            </div>--%>
                                                    <%--                          </div>--%>
                                                    <%--                        </div>--%>
                                                    <%--                        <div class="product-layouts">--%>
                                                    <%--                          <div class="product-thumb">--%>
                                                    <%--                            <div class="image zoom">--%>
                                                    <%--                              <a href="product-details.jsp">--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/ds-1.jpg" alt="04" height="501" width="385"/>--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/ds-1.jpg" alt="05" class="second_image img-responsive" height="501" width="385"/>										</a>									</div>--%>
                                                    <%--                            <div class="thumb-description">--%>
                                                    <%--                              <div class="caption">--%>
                                                    <%--                                <h4 class="product-title text-capitalize"><a href="${BASE_URL}assets/product-details.html">Checked Polo Collar T-shirt</a></h4>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="rating">--%>
                                                    <%--                                <div class="product-ratings d-inline-block align-middle">--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>										   </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="price">--%>
                                                    <%--                                <div class="regular-price">$100.00</div>--%>
                                                    <%--                                <div class="old-price">$150.00</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="button-wrapper">--%>
                                                    <%--                                <div class="button-group text-center">--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>--%>
                                                    <%--                                  <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>--%>
                                                    <%--                                </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                            </div>--%>
                                                    <%--                          </div>--%>
                                                    <%--                        </div>--%>
                                                    <%--                        <div class="product-layouts">--%>
                                                    <%--                          <div class="product-thumb">--%>
                                                    <%--                            <div class="image zoom">--%>
                                                    <%--                              <a href="product-details.jsp">--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/n (1).jpg" alt="05" height="501" width="385"/>--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/n (1).jpg" alt="06" class="second_image img-responsive" height="501" width="385"/></a></div>--%>
                                                    <%--                            <div class="thumb-description">--%>
                                                    <%--                              <div class="caption">--%>
                                                    <%--                                <h4 class="product-title text-capitalize"><a href="${BASE_URL}assets/product-details.html">Crochet Detail Lightweight Top</a></h4>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="rating">--%>
                                                    <%--                                <div class="product-ratings d-inline-block align-middle">--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>										   </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="price">--%>
                                                    <%--                                <div class="regular-price">$100.00</div>--%>
                                                    <%--                                <div class="old-price">$150.00</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="button-wrapper">--%>
                                                    <%--                                <div class="button-group text-center">--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>--%>
                                                    <%--                                  <a href="${BASE_URL}assets/wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>--%>
                                                    <%--                                </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                            </div>--%>
                                                    <%--                          </div>--%>
                                                    <%--                        </div>--%>
                                                    <%--                        <div class="product-layouts">--%>
                                                    <%--                          <div class="product-thumb">--%>
                                                    <%--                            <div class="image zoom">--%>
                                                    <%--                              <a href="product-details.jsp">--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/n (2).jpg" alt="06" height="501" width="385"/>--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/n (2).jpg" alt="07" class="second_image img-responsive" height="501" width="385"/>										</a>									</div>--%>
                                                    <%--                            <div class="thumb-description">--%>
                                                    <%--                              <div class="caption">--%>
                                                    <%--                                <h4 class="product-title text-capitalize"><a href="product-details.jsp">Girls Floral Print Jumpsuit</a></h4>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="rating">--%>
                                                    <%--                                <div class="product-ratings d-inline-block align-middle">--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>										   </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="price">--%>
                                                    <%--                                <div class="regular-price">$100.00</div>--%>
                                                    <%--                                <div class="old-price">$150.00</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="button-wrapper">--%>
                                                    <%--                                <div class="button-group text-center">--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>--%>
                                                    <%--                                  <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>--%>
                                                    <%--                                </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                            </div>--%>
                                                    <%--                          </div>--%>
                                                    <%--                        </div>--%>
                                                    <%--                        <div class="product-layouts">--%>
                                                    <%--                          <div class="product-thumb">--%>
                                                    <%--                            <div class="image zoom">--%>
                                                    <%--                              <a href="product-details.jsp">--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/n (3).jpg" alt="07" height="501" width="385"/>--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/n (3).jpg" alt="08" class="second_image img-responsive" height="501" width="385"/>										</a>									</div>--%>
                                                    <%--                            <div class="thumb-description">--%>
                                                    <%--                              <div class="caption">--%>
                                                    <%--                                <h4 class="product-title text-capitalize"><a href="product-details.jsp">Girls Striped Fit and Flare Dress</a></h4>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="rating">--%>
                                                    <%--                                <div class="product-ratings d-inline-block align-middle">--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>										   </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="price">--%>
                                                    <%--                                <div class="regular-price">$100.00</div>--%>
                                                    <%--                                <div class="old-price">$150.00</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="button-wrapper">--%>
                                                    <%--                                <div class="button-group text-center">--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal" disabled="disabled"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>--%>
                                                    <%--                                  <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>--%>
                                                    <%--                                </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                            </div>--%>
                                                    <%--                          </div>--%>
                                                    <%--                        </div>--%>
                                                    <%--                        <div class="product-layouts">--%>
                                                    <%--                          <div class="product-thumb">--%>
                                                    <%--                            <div class="image zoom">--%>
                                                    <%--                              <a href="product-details.jsp">--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/op.jpg" alt="03" height="501" width="385"/>--%>
                                                    <%--                                <img src="${BASE_URL}assets/img/products/op.jpg" alt="09" class="second_image img-responsive" height="501" width="385"/></a></div>--%>
                                                    <%--                            <div class="thumb-description">--%>
                                                    <%--                              <div class="caption">--%>
                                                    <%--                                <h4 class="product-title text-capitalize"><a href="product-details.jsp">Juventus Henley Neck Jersey</a></h4>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="rating">--%>
                                                    <%--                                <div class="product-ratings d-inline-block align-middle">--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>--%>
                                                    <%--                                  <span class="fa fa-stack"><i class="material-icons off">star</i></span>										   </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="price">--%>
                                                    <%--                                <div class="regular-price">$100.00</div>--%>
                                                    <%--                                <div class="old-price">$150.00</div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                              <div class="button-wrapper">--%>
                                                    <%--                                <div class="button-group text-center">--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>Add to cart</span></button>--%>
                                                    <%--                                  <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>--%>
                                                    <%--                                  <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>--%>
                                                    <%--                                </div>--%>
                                                    <%--                              </div>--%>
                                                    <%--                            </div>--%>
                                                    <%--                          </div>--%>
                                                    <%--                        </div>--%>
                                            </div>
                                        </section>
                                    </div>
                                        <%--                                    Featured Slider--%>

                                    <div class="tab-pane float-left w-100" id="ttnew-main" role="tabpanel"
                                         aria-labelledby="new-tab">
                                        <section id="ttnew" class="ttnew-products">
                                            <div class="ttnew-content products grid owl-carousel" id="owl2">
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/4.1.jpg"
                                                                     alt="01" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/4.1.jpg"
                                                                     alt="02" class="second_image img-responsive"
                                                                     height="501" width="385"/> </a>
                                                            <ul class="countdown1 countdown">
                                                                <li><span class="days">00</span>
                                                                    <p class="days_text">Days</p></li>
                                                                <li><span class="hours">00</span>
                                                                    <p class="hours_text">Hours</p></li>
                                                                <li><span class="minutes">00</span>
                                                                    <p class="minutes_text">Minutes</p></li>
                                                                <li><span class="seconds">00</span>
                                                                    <p class="seconds_text">Seconds</p></li>
                                                            </ul>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Printed Dugaree with
                                                                    T-Shirt</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"
                                                                            disabled="disabled"><i
                                                                            class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/02.jpg"
                                                                     alt="02" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/${BASE_URL}assets/img/products/03.jpg"
                                                                     alt="03" class="second_image img-responsive"
                                                                     height="501" width="385"/> </a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Printed Polo Collar
                                                                    T-shirt</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/4.1.jpg"
                                                                     alt="03" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/4.1.jpg"
                                                                     alt="04" class="second_image img-responsive"
                                                                     height="501" width="385"/> </a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Burgundy Small
                                                                    Dresss</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/04.jpg"
                                                                     alt="04" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/05.jpg"
                                                                     alt="05" class="second_image img-responsive"
                                                                     height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Merino Small
                                                                    Dress</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/05.jpg"
                                                                     alt="05" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/06.jpg"
                                                                     alt="06" class="second_image img-responsive"
                                                                     height="501" width="385"/></a>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Arkun Bordeaux
                                                                    Blouse</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/06.jpg"
                                                                     alt="06" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/07.jpg"
                                                                     alt="07" class="second_image img-responsive"
                                                                     height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Medium Denim
                                                                    Overshirt</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/07.jpg"
                                                                     alt="03" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/08.jpg"
                                                                     alt="08" class="second_image img-responsive"
                                                                     height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a href="#">Long
                                                                    Sleeves Cotton Polo</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"
                                                                            disabled="disabled"><i
                                                                            class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/08.jpg"
                                                                     alt="08" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/09.jpg"
                                                                     alt="09" class="second_image img-responsive"
                                                                     height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Long Sleeves Cotton
                                                                    Polo</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                    <div class="tab-pane float-left w-100" id="ttbestseller-main" role="tabpanel"
                                         aria-labelledby="bestseller-tab">
                                        <section id="ttbestseller" class="ttbestseller-products">
                                            <div class="ttbestseller-content products grid owl-carousel" id="owl3">
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/01.jpg"
                                                                     alt="01" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/02.jpg"
                                                                     alt="02" class="second_image img-responsive"
                                                                     height="501" width="385"/> </a>
                                                            <ul class="countdown1 countdown">
                                                                <li><span class="days">00</span>
                                                                    <p class="days_text">Days</p></li>
                                                                <li><span class="hours">00</span>
                                                                    <p class="hours_text">Hours</p></li>
                                                                <li><span class="minutes">00</span>
                                                                    <p class="minutes_text">Minutes</p></li>
                                                                <li><span class="seconds">00</span>
                                                                    <p class="seconds_text">Seconds</p></li>
                                                            </ul>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Slim-fit Leaf-Print
                                                                    Linen Shirt</a></h4>
                                                            </div>

                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"
                                                                            disabled="disabled"><i
                                                                            class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/02.jpg"
                                                                     alt="02" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/03.jpg"
                                                                     alt="03" class="second_image img-responsive"
                                                                     height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Women Floral Print
                                                                    Lounge T-Shirt</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/03.jpg"
                                                                     alt="03" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/04.jpg"
                                                                     alt="04" class="second_image img-responsive"
                                                                     height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Women Striped Shirt
                                                                    Dress</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/04.jpg"
                                                                     alt="03" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/05.jpg"
                                                                     alt="05" class="second_image img-responsive"
                                                                     height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Women Solid Bodycon
                                                                    Dress</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/05.jpg"
                                                                     alt="03" height="501" width="385"/>
                                                                <img src="${BASE_URL}assets/img/products/06.jpg"
                                                                     alt="06" class="second_image img-responsive"
                                                                     height="501" width="385"/> </a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Printed V-Neck
                                                                    T-shirt</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/06.jpg"
                                                                     alt="03" height="501" width="385"/> </a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Solid Straight
                                                                    Kurta</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/07.jpg"
                                                                     alt="03" height="501" width="385"/> </a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Tropical Shirt
                                                                    Dress</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"
                                                                            disabled="disabled"><i
                                                                            class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.jsp">
                                                                <img src="${BASE_URL}assets/img/products/08.jpg"
                                                                     alt="03" height="501" width="385"/></a></div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.jsp">Shoulder Embroidered
                                                                    Bodysuit</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal">
                                                                        <i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                                    </button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span>
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal"
                                                                            data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick View</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>


                                <%--        END - TRENDING PRODUCT SECTION ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||--%>

                        </div>
                    </div>
                    <div id="ttcmstestimonial" class="my-40 my-sm-25 bottom-to-top hb-animate-element">
                        <div class="tttestimonial-content container">
                            <div class="tttestimonial-inner">
                                <div class="tttestimonial owl-carousel">
                                    <div>
                                        <div class="testimonial-block">
                                            <div class="testimonial-image"><img alt=""
                                                                                src="${BASE_URL}assets/img/banner/user1.jpg"
                                                                                height="120" width="120"/></div>
                                            <div class="testimonial-content">
                                                <div class="testimonial-desc">
                                                    <p>"I've been on the hunt for high-quality anime t-shirts, and I finally found a reliable source in this company. The shirts fit perfectly, and the prints are vibrant and durable. The range of anime themes they offer is impressive. The only reason I'm not giving them five stars is that I'd love to see even more classic series in their collection. Keep up the great work!"
                                                    </p>
                                                </div>
                                                <div class="testimonial-user-title">
                                                    <h4> Kenji K.</h4>
                                                    <div class="user-designation">CEO</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="testimonial-block">
                                            <div class="testimonial-image"><img alt=""
                                                                                src="${BASE_URL}assets/img/banner/user2.jpg"
                                                                                height="120" width="120"/></div>
                                            <div class="testimonial-content">
                                                <div class="testimonial-desc">
                                                    <p>"As a lifelong Otaku, I've collected anime shirts from various sources, but this company is an absolute gem! The quality of their t-shirts is top-notch, and the designs are so unique. I can't resist buying a new one every time they release a new collection. Plus, their customer service is outstanding. They've won my loyalty!"
                                                    </p>
                                                </div>
                                                <div class="testimonial-user-title">
                                                    <h4>Emily S.</h4>
                                                    <div class="user-designation">Marketing Manager</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="testimonial-block">
                                            <div class="testimonial-image"><img alt=""
                                                                                src="${BASE_URL}assets/img/banner/user3.jpg"
                                                                                height="120" width="120"/></div>
                                            <div class="testimonial-content">
                                                <div class="testimonial-desc">
                                                    <p>"I'm a self-proclaimed anime fanatic, and this company is my go-to place for all things anime-related. The t-shirts are not just cool; they're comfortable too. What really sets them apart is their commitment to customer satisfaction. I had an issue with an order once, and their support team resolved it quickly and efficiently. I've recommended them to all my fellow Otaku friends!"
                                                    </p>
                                                </div>
                                                <div class="testimonial-user-title">
                                                    <h4>Sarah L.</h4>
                                                    <div class="user-designation">Sales Exuctive</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ttcmssubbanner" class="ttcmssubbanner my-40 my-sm-25 bottom-to-top hb-animate-element">
                        <div class="ttbannerblock container">
                            <div class="row">
                                <div class="ttbanner1 ttbanner col-sm-6 col-xs-6">
                                    <div class="ttbanner-img"><a href="#"><img
                                            src="${BASE_URL}assets/img/banner/aot.jpg" alt="cms-03" height="600"
                                            width="400"></a></div>
                                    <div class="ttbanner-inner">
                                        <div class="ttbanner-desc text-center">
                                            <span class="title text-uppercase">aot shop</span>
                                            <span class="subtitle text-uppercase py-20">up to 70% off</span>
                                            <span class="shop-now text-capitalize"><a href="#" class="btn-primary">shop now</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="ttbanner2 ttbanner col-sm-6">
                                    <div class="ttbanner-img"><a href="#"><img
                                            src="${BASE_URL}assets/img/banner/naruto.jpg" alt="cms-04" height="600"
                                            width="400"></a></div>
                                    <div class="ttbanner-inner">
                                        <div class="ttbanner-desc text-center">
                                            <span class="title text-uppercase">naruto shop</span>
                                            <span class="subtitle text-uppercase py-20">up to 70% off</span>
                                            <span class="shop-now text-capitalize"><a href="#" class="btn-primary">shop now</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ttspecial" class="ttspecial my-40 bottom-to-top hb-animate-element">
                        <div class="container">
                            <div class="row">
                                <div class="tt-title d-inline-block float-none w-100 text-center">special products</div>
                                <div class="ttspecial-content products grid owl-carousel">
                                    <div class="product-layouts">
                                        <div class="product-thumb">
                                            <div class="image zoom">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/products/01.jpg" alt="01"
                                                         height="501" width="385"/>
                                                    <img src="${BASE_URL}assets/img/products/02.jpg" alt="02"
                                                         class="second_image img-responsive" height="501" width="385"/>
                                                </a>
                                                <ul class="countdown3 countdown">
                                                    <li><span class="days">00</span>
                                                        <p class="days_text">Days</p></li>
                                                    <li><span class="hours">00</span>
                                                        <p class="hours_text">Hours</p></li>
                                                    <li><span class="minutes">00</span>
                                                        <p class="minutes_text">Minutes</p></li>
                                                    <li><span class="seconds">00</span>
                                                        <p class="seconds_text">Seconds</p></li>
                                                </ul>
                                            </div>
                                            <div class="thumb-description">
                                                <div class="caption">
                                                    <h4 class="product-title text-capitalize"><a
                                                            href="product-details.jsp">Checked Polo Collar T-shirt</a>
                                                    </h4>
                                                </div>
                                                <div class="rating">
                                                    <div class="product-ratings d-inline-block align-middle">
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <div class="regular-price">$100.00</div>
                                                    <div class="old-price">$150.00</div>
                                                </div>
                                                <div class="button-wrapper">
                                                    <div class="button-group text-center">
                                                        <button type="button" class="btn btn-primary btn-cart"
                                                                data-toggle="modal" data-target="#product_view"
                                                                disabled="disabled"><i class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                        </button>
                                                        <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i
                                                                class="material-icons">favorite</i><span>wishlist</span></a>
                                                        <button type="button" class="btn btn-primary btn-compare"><i
                                                                class="material-icons">equalizer</i><span>Compare</span>
                                                        </button>
                                                        <button type="button" class="btn btn-primary btn-quickview"
                                                                data-toggle="modal" data-target="#product_view"><i
                                                                class="material-icons">visibility</i><span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-layouts">
                                        <div class="product-thumb">
                                            <div class="image zoom">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/products/02.jpg" alt="02"
                                                         height="501" width="385"/>
                                                    <img src="${BASE_URL}assets/img/products/03.jpg" alt="03"
                                                         class="second_image img-responsive" height="501" width="385"/></a>
                                            </div>
                                            <div class="thumb-description">
                                                <div class="caption">
                                                    <h4 class="product-title text-capitalize"><a
                                                            href="product-details.jsp">Crochet Detail Lightweight
                                                        Top</a></h4>
                                                </div>
                                                <div class="rating">
                                                    <div class="product-ratings d-inline-block align-middle">
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <div class="regular-price">$100.00</div>
                                                    <div class="old-price">$150.00</div>
                                                </div>
                                                <div class="button-wrapper">
                                                    <div class="button-group text-center">
                                                        <button type="button" class="btn btn-primary btn-cart"
                                                                data-target="#cart-pop" data-toggle="modal"><i
                                                                class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                        </button>
                                                        <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i
                                                                class="material-icons">favorite</i><span>wishlist</span></a>
                                                        <button type="button" class="btn btn-primary btn-compare"><i
                                                                class="material-icons">equalizer</i><span>Compare</span>
                                                        </button>
                                                        <button type="button" class="btn btn-primary btn-quickview"
                                                                data-toggle="modal" data-target="#product_view"><i
                                                                class="material-icons">visibility</i><span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-layouts">
                                        <div class="product-thumb">
                                            <div class="image zoom">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/products/03.jpg" alt="03"
                                                         height="501" width="385"/>
                                                    <img src="${BASE_URL}assets/img/products/04.jpg" alt="04"
                                                         class="second_image img-responsive" height="501" width="385"/></a>
                                            </div>
                                            <div class="thumb-description">
                                                <div class="caption">
                                                    <h4 class="product-title text-capitalize"><a
                                                            href="product-details.jsp">Girls Floral Print Jumpsuit</a>
                                                    </h4>
                                                </div>
                                                <div class="rating">
                                                    <div class="product-ratings d-inline-block align-middle">
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <div class="regular-price">$100.00</div>
                                                    <div class="old-price">$150.00</div>
                                                </div>
                                                <div class="button-wrapper">
                                                    <div class="button-group text-center">
                                                        <button type="button" class="btn btn-primary btn-cart"
                                                                data-target="#cart-pop" data-toggle="modal"><i
                                                                class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                        </button>
                                                        <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i
                                                                class="material-icons">favorite</i><span>wishlist</span></a>
                                                        <button type="button" class="btn btn-primary btn-compare"><i
                                                                class="material-icons">equalizer</i><span>Compare</span>
                                                        </button>
                                                        <button type="button" class="btn btn-primary btn-quickview"
                                                                data-toggle="modal" data-target="#product_view"><i
                                                                class="material-icons">visibility</i><span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-layouts">
                                        <div class="product-thumb">
                                            <div class="image zoom">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/products/04.jpg" alt="04"
                                                         height="501" width="385"/>
                                                    <img src="${BASE_URL}assets/img/products/05.jpg" alt="05"
                                                         class="second_image img-responsive" height="501" width="385"/></a>
                                            </div>
                                            <div class="thumb-description">
                                                <div class="caption">
                                                    <h4 class="product-title text-capitalize"><a
                                                            href="product-details.jsp">Girls Striped Fit and Flare
                                                        Dress</a></h4>
                                                </div>
                                                <div class="rating">
                                                    <div class="product-ratings d-inline-block align-middle">
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <div class="regular-price">$100.00</div>
                                                    <div class="old-price">$150.00</div>
                                                </div>
                                                <div class="button-wrapper">
                                                    <div class="button-group text-center">
                                                        <button type="button" class="btn btn-primary btn-cart"
                                                                data-target="#cart-pop" data-toggle="modal"><i
                                                                class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                        </button>
                                                        <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i
                                                                class="material-icons">favorite</i><span>wishlist</span></a>
                                                        <button type="button" class="btn btn-primary btn-compare"><i
                                                                class="material-icons">equalizer</i><span>Compare</span>
                                                        </button>
                                                        <button type="button" class="btn btn-primary btn-quickview"
                                                                data-toggle="modal" data-target="#product_view"><i
                                                                class="material-icons">visibility</i><span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-layouts">
                                        <div class="product-thumb">
                                            <div class="image zoom">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/products/05.jpg" alt="05"
                                                         height="501" width="385"/>
                                                    <img src="${BASE_URL}assets/img/products/06.jpg" alt="06"
                                                         class="second_image img-responsive" height="501" width="385"/>
                                                </a></div>
                                            <div class="thumb-description">
                                                <div class="caption">
                                                    <h4 class="product-title text-capitalize"><a
                                                            href="product-details.jsp">Juventus Henley Neck Jersey</a>
                                                    </h4>
                                                </div>
                                                <div class="rating">
                                                    <div class="product-ratings d-inline-block align-middle">
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <div class="regular-price">$100.00</div>
                                                    <div class="old-price">$150.00</div>
                                                </div>
                                                <div class="button-wrapper">
                                                    <div class="button-group text-center">
                                                        <button type="button" class="btn btn-primary btn-cart"
                                                                data-target="#cart-pop" data-toggle="modal"><i
                                                                class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                        </button>
                                                        <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i
                                                                class="material-icons">favorite</i><span>wishlist</span></a>
                                                        <button type="button" class="btn btn-primary btn-compare"><i
                                                                class="material-icons">equalizer</i><span>Compare</span>
                                                        </button>
                                                        <button type="button" class="btn btn-primary btn-quickview"
                                                                data-toggle="modal" data-target="#product_view"><i
                                                                class="material-icons">visibility</i><span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-layouts">
                                        <div class="product-thumb">
                                            <div class="image zoom">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/products/06.jpg" alt="06"
                                                         height="501" width="385"/>
                                                    <img src="${BASE_URL}assets/img/products/07.jpg" alt="07"
                                                         class="second_image img-responsive" height="501" width="385"/></a>
                                            </div>
                                            <div class="thumb-description">
                                                <div class="caption">
                                                    <h4 class="product-title text-capitalize"><a
                                                            href="product-details.jsp">Printed Dugaree with T-Shirt</a>
                                                    </h4>
                                                </div>
                                                <div class="rating">
                                                    <div class="product-ratings d-inline-block align-middle">
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i
                                                                class="material-icons">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <div class="regular-price">$100.00</div>
                                                    <div class="old-price">$150.00</div>
                                                </div>
                                                <div class="button-wrapper">
                                                    <div class="button-group text-center">
                                                        <button type="button" class="btn btn-primary btn-cart"
                                                                data-target="#cart-pop" data-toggle="modal"><i
                                                                class="material-icons">shopping_cart</i><span>Add to cart</span>
                                                        </button>
                                                        <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i
                                                                class="material-icons">favorite</i><span>wishlist</span></a>
                                                        <button type="button" class="btn btn-primary btn-compare"><i
                                                                class="material-icons">equalizer</i><span>Compare</span>
                                                        </button>
                                                        <button type="button" class="btn btn-primary btn-quickview"
                                                                data-toggle="modal" data-target="#product_view"><i
                                                                class="material-icons">visibility</i><span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ttsmartblog" class="my-40 my-sm-25 bottom-to-top hb-animate-element">
                        <div class="tt-title d-inline-block float-none w-100 text-center text-capitalize">latest news
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="smartblog-content owl-carousel">
                                    <div class="ttblog">
                                        <div class="item">
                                            <div class="ttblog_image_holder">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/banner/blog-01.jpg" alt="blog-01"
                                                         width="415" height="269"> </a>
                                                <span class="blogicons">
                                        <a title="Click to view Full Image"
                                           href="${BASE_URL}assets/img/banner/blog-01.jpg" data-lightbox="example-set"
                                           class="icon zoom"><i class="material-icons">search</i></a>							</span>
                                            </div>
                                            <div class="blog-content-wrap float-left w-100">
                                                <div class="blog_inner">
                                                    <h4 class="blog-title"><span>Share the Love</span></h4>
                                                    <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit.
                                                    </div>
                                                    <div class="read-more text-capitalize">
                                                        <a title="Click to view Read More" class="readmore">read
                                                            more</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ttblog">
                                        <div class="item">
                                            <div class="ttblog_image_holder">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/banner/blog-02.jpg" alt="blog-02"
                                                         width="415" height="269"> </a>
                                                <span class="blogicons">
                                        <a title="Click to view Full Image"
                                           href="${BASE_URL}assets/img/banner/blog-02.jpg" data-lightbox="example-set"
                                           class="icon zoom"><i class="material-icons">search</i></a>							</span>
                                            </div>
                                            <div class="blog-content-wrap float-left w-100">
                                                <div class="blog_inner">
                                                    <h4 class="blog-title"><span>Upon of seasons earth</span></h4>
                                                    <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit.
                                                    </div>
                                                    <div class="read-more text-capitalize">
                                                        <a title="Click to view Read More" class="readmore">read
                                                            more</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ttblog">
                                        <div class="item">
                                            <div class="ttblog_image_holder">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/banner/blog-03.jpg" alt="blog-03"
                                                         width="415" height="269"> </a>
                                                <span class="blogicons">
                                        <a title="Click to view Full Image"
                                           href="${BASE_URL}assets/img/banner/blog-03.jpg" data-lightbox="example-set"
                                           class="icon zoom"><i class="material-icons">search</i></a>							</span>
                                            </div>
                                            <div class="blog-content-wrap float-left w-100">
                                                <div class="blog_inner">
                                                    <h4 class="blog-title"><span>From Now we are certified web</span>
                                                    </h4>
                                                    <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit.
                                                    </div>
                                                    <div class="read-more text-capitalize">
                                                        <a title="Click to view Read More" class="readmore">read
                                                            more</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ttblog">
                                        <div class="item">
                                            <div class="ttblog_image_holder">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/banner/blog-04.jpg" alt="blog-04"
                                                         width="415" height="269"> </a>
                                                <span class="blogicons">
                                        <a title="Click to view Full Image"
                                           href="${BASE_URL}assets/img/banner/blog-04.jpg" data-lightbox="example-set"
                                           class="icon zoom"><i class="material-icons">search</i></a>							</span>
                                            </div>
                                            <div class="blog-content-wrap float-left w-100">
                                                <div class="blog_inner">
                                                    <h4 class="blog-title"><span>Viderer voluptatum te eum</span></h4>
                                                    <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit.
                                                    </div>
                                                    <div class="read-more text-capitalize">
                                                        <a title="Click to view Read More" class="readmore">read
                                                            more</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ttblog">
                                        <div class="item">
                                            <div class="ttblog_image_holder">
                                                <a href="#">
                                                    <img src="${BASE_URL}assets/img/banner/blog-05.jpg" alt="blog-05"
                                                         width="415" height="269"> </a>
                                                <span class="blogicons">
                                        <a title="Click to view Full Image"
                                           href="${BASE_URL}assets/img/banner/blog-05.jpg" data-lightbox="example-set"
                                           class="icon zoom"><i class="material-icons">search</i></a>							</span>
                                            </div>
                                            <div class="blog-content-wrap float-left w-100">
                                                <div class="blog_inner">
                                                    <h4 class="blog-title"><span>Share the Love</span></h4>
                                                    <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit.
                                                    </div>
                                                    <div class="read-more text-capitalize">
                                                        <a title="Click to view Read More" class="readmore">read
                                                            more</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ttbrandlogo" class="my-40 my-sm-25 bottom-to-top hb-animate-element">
                        <div class="container">
                            <div class="tt-brand owl-carousel">
                                <div class="item">
                                    <a href="#"><img src="${BASE_URL}assets/img/logos/brand-logo-01.png"
                                                     alt="brand-logo-01" width="140" height="100"></a>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="${BASE_URL}assets/img/logos/brand-logo-02.png"
                                                     alt="brand-logo-02" width="140" height="100"></a>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="${BASE_URL}assets/img/logos/brand-logo-03.png"
                                                     alt="brand-logo-03" width="140" height="100"></a>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="${BASE_URL}assets/img/logos/brand-logo-04.png"
                                                     alt="brand-logo-04" width="140" height="100"></a>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="${BASE_URL}assets/img/logos/brand-logo-05.png"
                                                     alt="brand-logo-05" width="140" height="100"></a>
                                </div>
                                <div class="item">
                                    <a href="#"><img src="${BASE_URL}assets/img/logos/brand-logo-06.png"
                                                     alt="brand-logo-06" width="140" height="100"></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </main>
    </layout:put>
</layout:extends>

