<%--
  Created by IntelliJ IDEA.
  User: TUF
  Date: 8/5/2023
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
  <title>Fashion Template for Bootstrap</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Bootstrap core CSS -->
  <link href="css/styles.css" rel="stylesheet">
  <link href="css/animate.css" rel="stylesheet">
  <link href="css/owl-carousel.css" rel="stylesheet">
  <link href="css/lightbox.css" rel="stylesheet">

  <!-- Custom styles for this template -->
</head>

<body id="about-us">

<header class="header-area header-sticky text-center header-default">
  <div class="header-main-sticky">
    <div class="header-nav">
      <div class="container">
        <div class="nav-left float-left">
          <div class="ttheader-service">Wants to explore Upcoming Deals on Weekends?</div>
        </div>
        <div class="nav-right float-right d-flex">
          <div class="ttheader-mail"><a href="mailto:demo.store@gmail.com">demo.store@gmail.com</a></div>
        </div>
      </div>
    </div>
    <div class="header-main-head">

      <div class="header-main">
        <div class="container">
          <div class="header-left float-left d-flex d-lg-flex d-md-block d-xs-block">
            <div class="language-wrapper toggle">
              <button type="button" class="btn text-capitalize dropdown-toggle"><img src="img/banner/en.png" alt="en" /><span>English</span></button>
              <div id="language-dropdown" class="language">
                <ul>
                  <li><img src="img/banner/en.png" alt="en" /><span>English</span></li>
                  <li><img src="img/banner/fr.png" alt="fr" /><span>French</span></li>
                </ul>
              </div>
            </div>
            <div class="currency-wrapper toggle">
              <button type="button" class="btn text-capitalize dropdown-toggle"><span>€ Euro</span></button>
              <div id="currency-dropdown" class="currency">
                <ul>
                  <li><span>€ Euro</span></li>
                  <li><span>£ Pound Sterling</span></li>
                  <li><span>$ US Dollar</span></li>
                </ul>
              </div>
            </div>
            <div class="contact">
              <i class="material-icons">phone</i>
              <span>1234567890</span>
            </div>
          </div>
          <div class="header-middle float-left">
            <div class="logo">
              <a href="index.html"><img src="img/logos/logo.png" alt="NatureCircle"></a>
            </div>
          </div>
          <div class="header-right d-flex d-xs-block d-sm-flex justify-content-end float-right">
            <div class="search-wrapper">
              <a>
                <i class="material-icons search">search</i>
                <i class="material-icons close">close</i>
              </a>
              <form autocomplete="off" action="/action_page.php" class="search-form">
                <div class="autocomplete" style="width:300px;">
                  <input id="myInput" type="text" name="myCountry" placeholder="Search here">
                  <button type="button"><i class="material-icons">search</i></button>
                </div>
              </form>
            </div>
            <div class="user-info">
              <button type="button" class="btn">
                <i class="material-icons">perm_identity</i>
              </button>
              <div id="user-dropdown" class="user-menu">
                <ul>
                  <li><a href="my-account.html" class="text-capitalize">my account</a></li>
                  <li><a href="#" class="modal-view button" data-toggle="modal" data-target="#modalRegisterForm">Register</a></li>
                  <li><a href="#" class="modal-view button" data-toggle="modal" data-target="#modalLoginForm">login</a></li>
                </ul>
              </div>
            </div>
            <div class="cart-wrapper">
              <button type="button" class="btn">
                <i class="material-icons">shopping_cart</i>
                <span class="ttcount">2</span>
              </button>
              <div id="cart-dropdown" class="cart-menu">
                <ul class="w-100 float-left">
                  <li>
                    <table class="table table-striped">
                      <tbody>
                      <tr>
                        <td class="text-center">
                          <a href="#"><img src="img/products/01.jpg" alt="01" title="01"></a>
                        </td>
                        <td class="text-left product-name"><a href="#">aliquam quaerat voluptatem</a>
                          <div class="quantity float-left w-100">
                            <span class="cart-qty">1 × </span>
                            <span class="text-left price"> $20.00</span>
                          </div>
                        </td>
                        <td class="text-center close"><a class="close-cart"><i class="material-icons">close</i></a></td>
                      </tr>

                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table class="table price mb-30">
                      <tbody>
                      <tr>
                        <td class="text-left"><strong>Total</strong></td>
                        <td class="text-right"><strong>$2,122.00</strong></td>
                      </tr>
                      </tbody>
                    </table>
                  </li>
                  <li class="buttons w-100 float-left">
                    <form action="cart_page.html">
                      <input class="btn pull-left mt_10 btn-primary btn-rounded w-100" value="View cart" type="submit">
                    </form>
                    <form action="checkout_page.html">
                      <input class="btn pull-right mt_10 btn-primary btn-rounded w-100" value="Checkout" type="submit">
                    </form>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="menu">
        <div class="container">
          <!-- Navbar -->
          <nav class="navbar navbar-expand-lg navbar-light d-sm-none d-xs-none d-lg-block navbar-full">

            <!-- Navbar brand -->
            <a class="navbar-brand text-uppercase d-none" href="#">Navbar</a>

            <!-- Collapse button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse">

              <!-- Links -->
              <ul class="navbar-nav m-auto justify-content-center">
                <li class="nav-item dropdown active">
                  <a class="nav-link dropdown-toggle text-uppercase" href="category.html">
                    Home
                    <span class="sr-only">(current)</span>        </a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
                    <div class="sub-menu mb-xl-0 mb-4">
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="index.html">
                            Home 1                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index2.html">
                            Home 2                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index3.html">
                            Home 3                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index4.html">
                            Home 4                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index5.html">
                            Home 5                  </a> </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown mega-dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" href="category.html">Category</a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
                    <div class="row">
                      <div class="col-md-12 col-xl-4 sub-menu mb-xl-0 mb-4">
                        <h6 class="sub-title text-uppercase font-weight-bold white-text">Variation 1</h6>
                        <!--Featured image-->
                        <ul class="list-unstyled">

                          <li>
                            <a class="menu-item pl-0" href="filter-toggle.html">
                              filter toggle                  </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="off-canvas-left.html">
                              off canvas left                </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="off-canvas-right.html">
                              off canvas right                </a> </li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-xl-4 sub-menu mb-md-0 mb-4">
                        <h6 class="sub-title text-uppercase font-weight-bold white-text">Variation 2</h6>
                        <ul class="list-unstyled">
                          <li>
                            <a class="menu-item pl-0" href="category-5-col.html">
                              5 columns mode                 </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="category-6-col.html">
                              6 columns mode                     </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="category-7-col.html">
                              7 columns mode                     </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="category-8-col.html">
                              8 columns mode                 </a> </li>

                        </ul>
                      </div>
                      <div class="col-md-6 col-xl-4 sub-menu mb-0">

                        <ul class="list-unstyled">
                          <li>
                            <span class="menu-banner"><img src="img/banner/menu-banner.jpg" alt="menu-banner" /></span> </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" href="category.html">
                    Shop
                    <span class="sr-only">(current)</span>        </a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
                    <div class="sub-menu mb-xl-0 mb-4">
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="product-grid.html">
                            product grid                </a> </li>
                        <li>

                          <a class="menu-item pl-0" href="product-sticky-right.html">
                            sticky right                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="product-extended-layout.html">
                            Extended layout                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="product-details.html">
                            Default layout                </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="product-compact.html">
                            compact layout           </a> </li>
                      </ul>

                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" href="category.html">Blog</a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
                    <div class="sub-menu">
                      <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">Featured</h6>
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="blog-2-column.html">
                            blog 2 column                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-3-column.html">
                            blog 3 column                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-2-column-masonary.html">
                            blog masonary                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-list.html">
                            blog list                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-details.html">
                            blog details                  </a> </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" href="category.html">Pages</a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
                    <div class="sub-menu">
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="about-us.html">
                            About us                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="accordions.html">
                            Accordions                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="buttons.html">
                            Buttons              </a> </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link text-uppercase" href="contact-us.html">contact us</a> </li>
              </ul>
              <!-- Links -->
            </div>
            <!-- Collapsible content -->

          </nav>
          <!-- Navbar -->
          <nav class="navbar navbar-expand-lg navbar-light d-lg-none navbar-responsive">

            <!-- Navbar brand -->
            <a class="navbar-brand text-uppercase d-none" href="#">Navbar</a>

            <!-- Collapse button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"><i class='material-icons'>sort</i></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent2">

              <!-- Links -->
              <ul class="navbar-nav m-auto justify-content-center">

                <!-- Features -->
                <li class="nav-item dropdown active">
                  <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu1" aria-controls="menu1" aria-expanded="false" aria-label="Toggle navigation" href="#">
                    Home
                    <span class="sr-only">(current)</span>        </a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu1">
                    <div class="sub-menu mb-xl-0 mb-4">
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="index.html">
                            Home 1                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index2.html">
                            Home 2                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index3.html">
                            Home 3                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index4.html">
                            Home 4                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="index5.html">
                            Home 5                  </a> </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown mega-dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu3" aria-controls="menu3" aria-expanded="false" aria-label="Toggle navigation" href="#">Category</a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu3">
                    <div class="row">
                      <div class="col-md-12 col-xl-4 sub-menu mb-xl-0 mb-4">
                        <h6 class="sub-title text-uppercase font-weight-bold white-text">Variation 1</h6>
                        <!--Featured image-->
                        <ul class="list-unstyled">
                          <li>
                            <a class="menu-item pl-0" href="filter-toggle.html">
                              filter toggle                  </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="off-canvas-left.html">
                              off canvas left                </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="off-canvas-right.html">
                              off canvas right                </a> </li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-xl-4 sub-menu mb-md-0 mb-4">
                        <h6 class="sub-title text-uppercase font-weight-bold white-text">Variation 2</h6>
                        <ul class="list-unstyled">
                          <li>
                            <a class="menu-item pl-0" href="category-5-col.html">
                              grid 5 column                 </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="category-6-col.html">
                              grid 6 column                  </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="category-7-col.html">
                              grid 7 column                   </a> </li>
                          <li>
                            <a class="menu-item pl-0" href="category-8-col.html">
                              grid 8 column                </a> </li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-xl-4 sub-menu mb-0">

                        <ul class="list-unstyled">
                          <li>
                            <span class="menu-banner"><img src="img/banner/menu-banner.jpg" alt="menu-banner" /></span> </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </li>

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu2" aria-controls="menu2" aria-expanded="false" aria-label="Toggle navigation" href="#">
                    Shop
                    <span class="sr-only">(current)</span>        </a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu2">
                    <div class="sub-menu mb-xl-0 mb-4">
                      <h6 class="sub-title text-uppercase font-weight-bold white-text">Featured</h6>
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="product-grid.html">
                            product grid                </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="product-sticky-right.html">
                            sticky right                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="product-extended-layout.html">
                            Extended layout                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="product-details.html">
                            Default layout                </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="product-compact.html">
                            compact layout           </a> </li>
                      </ul>
                    </div>
                  </div>
                </li>
                <!-- Technology -->

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu4" aria-controls="menu4" aria-expanded="false" aria-label="Toggle navigation" href="#">Blog</a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu4">
                    <div class="sub-menu">
                      <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">Featured</h6>
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="blog-2-column.html">
                            blog 2 column                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-3-column.html">
                            blog 3 column                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-2-column-masonary.html">
                            blog masonary                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-list.html">
                            blog list                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="blog-details.html">
                            blog details                  </a> </li>
                      </ul>
                    </div>
                  </div>
                </li>

                <li class="nav-item dropdown">
                  <a class="nav-link text-uppercase" href="contact-us.html">contact us</a> </li>

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse" data-target="#menu5" aria-controls="menu5" aria-expanded="false" aria-label="Toggle navigation" href="#">Pages</a>
                  <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3" id="menu5">
                    <div class="sub-menu">
                      <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">Featured</h6>
                      <ul class="list-unstyled">
                        <li>
                          <a class="menu-item pl-0" href="about-us.html">
                            About us                 </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="accordions.html">
                            Accordions                  </a> </li>
                        <li>
                          <a class="menu-item pl-0" href="buttons.html">
                            Buttons              </a> </li>
                      </ul>
                    </div>
                  </div>
                </li>
              </ul>
              <!-- Links -->
            </div>
            <!-- Collapsible content -->

          </nav>
        </div>
      </div>
    </div>
  </div>
</header>
<nav aria-label="breadcrumb" class="w-100 float-left mb-150 mb-sm-30">
  <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallax.jpg" style="background-image: url(&quot;img/banner/parallax.jpg&quot;); background-position: 50% 0.809717%;">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">about us</li>
  </ol>
</nav>
<div class="main-content w-100 float-left">
  <div id="about-main-1" class="float-left w-100 mb-150 mb-sm-30">
    <div class="container">
      <div class="row align-items-center about-main">
        <div class="col-12 col-lg-5 text-center col-left">
          <img src="img/banner/about-us.jpg" alt="" class="border-radius-6 w-100" data-no-retina="">
        </div>
        <div class="col-12 col-lg-7 col-right">
          <span class="d-inline-block title mb-10">Don’t worry, you’re in safe hands.</span>
          <h6 class="d-inline-block desc mb-30 font-weight-bold">We are committed to our customers’ success from start to finish. Our input helps make their solutions.</h6>
          <p class="m-0 sub-desc ">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. Lorem Ipsum has been the industry's standard dummy text ever since. Lorem Ipsum is printing and typesetting simply dummy text.</p>

        </div>
      </div>
    </div>
  </div>
  <div id="about-main-2" class="float-left w-100 mb-150 mb-sm-30">
    <div class="d-flex d-lg-flex d-sm-block d-xs-block align-items-center about-main-2 bg-light">
      <div class="col-12 col-lg-6 col-right px-100">
        <span class="d-inline-block title text-capitalize mb-150 text-center">some reason to work together.</span>
        <div class="row text-center text-md-left">
          <!-- start feature box item-->
          <div class="col-12 col-xl-6 col-lg-12 col-md-6 mb-30">
            <div class="subtitle mb-10"><span class="title-no">01.</span>We believe in creativity</div>
            <p class="desc">Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
          <!-- end feature box item-->
          <!-- start feature box item-->
          <div class="col-12 col-xl-6 col-lg-12 col-md-6 mb-30">
            <div class="subtitle mb-10"><span class="title-no">02.</span>We believe in quality</div>
            <p class="desc">Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
          <!-- end feature box item-->
          <!-- start feature box item-->
          <div class="col-12 col-xl-6 col-lg-12 col-md-6 mb-30">
            <div class="subtitle mb-10"><span class="title-no">03.</span>We believe in abilities</div>
            <p class="desc">Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
          <!-- end feature box item-->
          <!-- start feature box item-->
          <div class="col-12 col-xl-6 col-lg-12 col-md-6 mb-30">
            <div class="subtitle mb-10"><span class="title-no">04.</span>We believe in relation</div>
            <p class="desc">Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard dummy text.</p>
          </div>
          <!-- end feature box item-->
        </div>
      </div>
      <div class="col-12 col-lg-6 text-center col-left p-0">
        <img src="img/banner/about-us1.jpg" alt="" class="border-radius-6 w-100" data-no-retina="">
      </div>
    </div>
  </div>
  <div id="about-main-3" class="float-left w-100 mb-150 mb-sm-30">
    <div class="container">
      <div class="about-us-team">
        <div class="team-block col-sm-6 col-md-3 col-lg-3 float-left mb-sm-30">
          <div class="team-block-inner position-relative">
            <div class="team-image text-center">
              <img src="img/banner/team-01.jpg" alt="team-01" />
              <div class="overlay"></div>

            </div>
            <div class="team-content text-center float-left w-100">
              <div class="team-name text-capitalize font-weight-bold">john duff</div>
              <div class="team-designation text-capitalize">web developer</div>
              <div class="social-sharing float-left w-100">
                <ul class="d-flex justify-content-center">
                  <li class="facebook">
                    <a href="#" target="_blank" class="facebook_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M11.344,5.71c0-0.73,0.074-1.122,1.199-1.122h1.502V1.871h-2.404c-2.886,0-3.903,1.36-3.903,3.646v1.765h-1.8V10h1.8v8.128h3.601V10h2.403l0.32-2.718h-2.724L11.344,5.71z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="twitter">
                    <a href="#" target="_blank" class="twitter_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="google">
                    <a href="#" target="_blank" class="google_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M8.937,10.603c-0.383-0.284-0.741-0.706-0.754-0.837c0-0.223,0-0.326,0.526-0.758c0.684-0.56,1.062-1.297,1.062-2.076c0-0.672-0.188-1.273-0.512-1.71h0.286l1.58-1.196h-4.28c-1.717,0-3.222,1.348-3.222,2.885c0,1.587,1.162,2.794,2.726,2.858c-0.024,0.113-0.037,0.225-0.037,0.334c0,0.229,0.052,0.448,0.157,0.659c-1.938,0.013-3.569,1.309-3.569,2.84c0,1.375,1.571,2.373,3.735,2.373c2.338,0,3.599-1.463,3.599-2.84C10.233,11.99,9.882,11.303,8.937,10.603 M5.443,6.864C5.371,6.291,5.491,5.761,5.766,5.444c0.167-0.192,0.383-0.293,0.623-0.293l0,0h0.028c0.717,0.022,1.405,0.871,1.532,1.89c0.073,0.583-0.052,1.127-0.333,1.451c-0.167,0.192-0.378,0.293-0.64,0.292h0C6.273,8.765,5.571,7.883,5.443,6.864 M6.628,14.786c-1.066,0-1.902-0.687-1.902-1.562c0-0.803,0.978-1.508,2.093-1.508l0,0l0,0h0.029c0.241,0.003,0.474,0.04,0.695,0.109l0.221,0.158c0.567,0.405,0.866,0.634,0.956,1.003c0.022,0.097,0.033,0.194,0.033,0.291C8.752,14.278,8.038,14.786,6.628,14.786 M14.85,4.765h-1.493v2.242h-2.249v1.495h2.249v2.233h1.493V8.502h2.252V7.007H14.85V4.765z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="pinterest">
                    <a href="#" target="_blank" class="pinterest_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M9.797,2.214C9.466,2.256,9.134,2.297,8.802,2.338C8.178,2.493,7.498,2.64,6.993,2.935C5.646,3.723,4.712,4.643,4.087,6.139C3.985,6.381,3.982,6.615,3.909,6.884c-0.48,1.744,0.37,3.548,1.402,4.173c0.198,0.119,0.649,0.332,0.815,0.049c0.092-0.156,0.071-0.364,0.128-0.546c0.037-0.12,0.154-0.347,0.127-0.496c-0.046-0.255-0.319-0.416-0.434-0.62C5.715,9.027,5.703,8.658,5.59,8.101c0.009-0.075,0.017-0.149,0.026-0.224C5.65,7.254,5.755,6.805,5.948,6.362c0.564-1.301,1.47-2.025,2.931-2.458c0.327-0.097,1.25-0.252,1.734-0.149c0.289,0.05,0.577,0.099,0.866,0.149c1.048,0.33,1.811,0.938,2.218,1.888c0.256,0.591,0.33,1.725,0.154,2.483c-0.085,0.36-0.072,0.667-0.179,0.993c-0.397,1.206-0.979,2.323-2.295,2.633c-0.868,0.205-1.519-0.324-1.733-0.869c-0.06-0.151-0.161-0.418-0.101-0.671c0.229-0.978,0.56-1.854,0.815-2.831c0.243-0.931-0.218-1.665-0.943-1.837C8.513,5.478,7.816,6.312,7.579,6.858C7.39,7.292,7.276,8.093,7.426,8.672c0.047,0.183,0.269,0.674,0.23,0.844c-0.174,0.755-0.372,1.568-0.587,2.31c-0.223,0.771-0.344,1.562-0.56,2.311c-0.1,0.342-0.096,0.709-0.179,1.066v0.521c-0.075,0.33-0.019,0.916,0.051,1.242c0.045,0.209-0.027,0.467,0.076,0.621c0.002,0.111,0.017,0.135,0.052,0.199c0.319-0.01,0.758-0.848,0.917-1.094c0.304-0.467,0.584-0.967,0.816-1.514c0.208-0.494,0.241-1.039,0.408-1.566c0.12-0.379,0.292-0.824,0.331-1.24h0.025c0.066,0.229,0.306,0.395,0.485,0.52c0.56,0.4,1.525,0.77,2.573,0.523c1.188-0.281,2.133-0.838,2.755-1.664c0.457-0.609,0.804-1.313,1.07-2.112c0.131-0.392,0.158-0.826,0.256-1.241c0.241-1.043-0.082-2.298-0.384-2.981C14.847,3.35,12.902,2.17,9.797,2.214"></path>
                      </svg>
                    </a>
                  </li>

                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="team-block col-sm-6 col-md-3 col-lg-3 float-left mb-sm-30">
          <div class="team-block-inner position-relative">
            <div class="team-image text-center">
              <img src="img/banner/team-02.jpg" alt="team-02" />
              <div class="overlay"></div>
            </div>
            <div class="team-content text-center float-left w-100">
              <div class="team-name text-capitalize font-weight-bold">john duff</div>
              <div class="team-designation text-capitalize">web developer</div>
              <div class="social-sharing float-left w-100">
                <ul class="d-flex justify-content-center">
                  <li class="facebook">
                    <a href="#" target="_blank" class="facebook_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M11.344,5.71c0-0.73,0.074-1.122,1.199-1.122h1.502V1.871h-2.404c-2.886,0-3.903,1.36-3.903,3.646v1.765h-1.8V10h1.8v8.128h3.601V10h2.403l0.32-2.718h-2.724L11.344,5.71z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="twitter">
                    <a href="#" target="_blank" class="twitter_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="google">
                    <a href="#" target="_blank" class="google_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M8.937,10.603c-0.383-0.284-0.741-0.706-0.754-0.837c0-0.223,0-0.326,0.526-0.758c0.684-0.56,1.062-1.297,1.062-2.076c0-0.672-0.188-1.273-0.512-1.71h0.286l1.58-1.196h-4.28c-1.717,0-3.222,1.348-3.222,2.885c0,1.587,1.162,2.794,2.726,2.858c-0.024,0.113-0.037,0.225-0.037,0.334c0,0.229,0.052,0.448,0.157,0.659c-1.938,0.013-3.569,1.309-3.569,2.84c0,1.375,1.571,2.373,3.735,2.373c2.338,0,3.599-1.463,3.599-2.84C10.233,11.99,9.882,11.303,8.937,10.603 M5.443,6.864C5.371,6.291,5.491,5.761,5.766,5.444c0.167-0.192,0.383-0.293,0.623-0.293l0,0h0.028c0.717,0.022,1.405,0.871,1.532,1.89c0.073,0.583-0.052,1.127-0.333,1.451c-0.167,0.192-0.378,0.293-0.64,0.292h0C6.273,8.765,5.571,7.883,5.443,6.864 M6.628,14.786c-1.066,0-1.902-0.687-1.902-1.562c0-0.803,0.978-1.508,2.093-1.508l0,0l0,0h0.029c0.241,0.003,0.474,0.04,0.695,0.109l0.221,0.158c0.567,0.405,0.866,0.634,0.956,1.003c0.022,0.097,0.033,0.194,0.033,0.291C8.752,14.278,8.038,14.786,6.628,14.786 M14.85,4.765h-1.493v2.242h-2.249v1.495h2.249v2.233h1.493V8.502h2.252V7.007H14.85V4.765z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="pinterest">
                    <a href="#" target="_blank" class="pinterest_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M9.797,2.214C9.466,2.256,9.134,2.297,8.802,2.338C8.178,2.493,7.498,2.64,6.993,2.935C5.646,3.723,4.712,4.643,4.087,6.139C3.985,6.381,3.982,6.615,3.909,6.884c-0.48,1.744,0.37,3.548,1.402,4.173c0.198,0.119,0.649,0.332,0.815,0.049c0.092-0.156,0.071-0.364,0.128-0.546c0.037-0.12,0.154-0.347,0.127-0.496c-0.046-0.255-0.319-0.416-0.434-0.62C5.715,9.027,5.703,8.658,5.59,8.101c0.009-0.075,0.017-0.149,0.026-0.224C5.65,7.254,5.755,6.805,5.948,6.362c0.564-1.301,1.47-2.025,2.931-2.458c0.327-0.097,1.25-0.252,1.734-0.149c0.289,0.05,0.577,0.099,0.866,0.149c1.048,0.33,1.811,0.938,2.218,1.888c0.256,0.591,0.33,1.725,0.154,2.483c-0.085,0.36-0.072,0.667-0.179,0.993c-0.397,1.206-0.979,2.323-2.295,2.633c-0.868,0.205-1.519-0.324-1.733-0.869c-0.06-0.151-0.161-0.418-0.101-0.671c0.229-0.978,0.56-1.854,0.815-2.831c0.243-0.931-0.218-1.665-0.943-1.837C8.513,5.478,7.816,6.312,7.579,6.858C7.39,7.292,7.276,8.093,7.426,8.672c0.047,0.183,0.269,0.674,0.23,0.844c-0.174,0.755-0.372,1.568-0.587,2.31c-0.223,0.771-0.344,1.562-0.56,2.311c-0.1,0.342-0.096,0.709-0.179,1.066v0.521c-0.075,0.33-0.019,0.916,0.051,1.242c0.045,0.209-0.027,0.467,0.076,0.621c0.002,0.111,0.017,0.135,0.052,0.199c0.319-0.01,0.758-0.848,0.917-1.094c0.304-0.467,0.584-0.967,0.816-1.514c0.208-0.494,0.241-1.039,0.408-1.566c0.12-0.379,0.292-0.824,0.331-1.24h0.025c0.066,0.229,0.306,0.395,0.485,0.52c0.56,0.4,1.525,0.77,2.573,0.523c1.188-0.281,2.133-0.838,2.755-1.664c0.457-0.609,0.804-1.313,1.07-2.112c0.131-0.392,0.158-0.826,0.256-1.241c0.241-1.043-0.082-2.298-0.384-2.981C14.847,3.35,12.902,2.17,9.797,2.214"></path>
                      </svg>
                    </a>
                  </li>

                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="team-block col-sm-6 col-md-3 col-lg-3 float-left mb-sm-30">
          <div class="team-block-inner position-relative">
            <div class="team-image text-center">
              <img src="img/banner/team-03.jpg" alt="team-03" />
              <div class="overlay"></div>
            </div>
            <div class="team-content text-center float-left w-100">
              <div class="team-name text-capitalize font-weight-bold">john duff</div>
              <div class="team-designation text-capitalize">web developer</div>
              <div class="social-sharing float-left w-100">
                <ul class="d-flex justify-content-center">
                  <li class="facebook">
                    <a href="#" target="_blank" class="facebook_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M11.344,5.71c0-0.73,0.074-1.122,1.199-1.122h1.502V1.871h-2.404c-2.886,0-3.903,1.36-3.903,3.646v1.765h-1.8V10h1.8v8.128h3.601V10h2.403l0.32-2.718h-2.724L11.344,5.71z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="twitter">
                    <a href="#" target="_blank" class="twitter_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="google">
                    <a href="#" target="_blank" class="google_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M8.937,10.603c-0.383-0.284-0.741-0.706-0.754-0.837c0-0.223,0-0.326,0.526-0.758c0.684-0.56,1.062-1.297,1.062-2.076c0-0.672-0.188-1.273-0.512-1.71h0.286l1.58-1.196h-4.28c-1.717,0-3.222,1.348-3.222,2.885c0,1.587,1.162,2.794,2.726,2.858c-0.024,0.113-0.037,0.225-0.037,0.334c0,0.229,0.052,0.448,0.157,0.659c-1.938,0.013-3.569,1.309-3.569,2.84c0,1.375,1.571,2.373,3.735,2.373c2.338,0,3.599-1.463,3.599-2.84C10.233,11.99,9.882,11.303,8.937,10.603 M5.443,6.864C5.371,6.291,5.491,5.761,5.766,5.444c0.167-0.192,0.383-0.293,0.623-0.293l0,0h0.028c0.717,0.022,1.405,0.871,1.532,1.89c0.073,0.583-0.052,1.127-0.333,1.451c-0.167,0.192-0.378,0.293-0.64,0.292h0C6.273,8.765,5.571,7.883,5.443,6.864 M6.628,14.786c-1.066,0-1.902-0.687-1.902-1.562c0-0.803,0.978-1.508,2.093-1.508l0,0l0,0h0.029c0.241,0.003,0.474,0.04,0.695,0.109l0.221,0.158c0.567,0.405,0.866,0.634,0.956,1.003c0.022,0.097,0.033,0.194,0.033,0.291C8.752,14.278,8.038,14.786,6.628,14.786 M14.85,4.765h-1.493v2.242h-2.249v1.495h2.249v2.233h1.493V8.502h2.252V7.007H14.85V4.765z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="pinterest">
                    <a href="#" target="_blank" class="pinterest_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M9.797,2.214C9.466,2.256,9.134,2.297,8.802,2.338C8.178,2.493,7.498,2.64,6.993,2.935C5.646,3.723,4.712,4.643,4.087,6.139C3.985,6.381,3.982,6.615,3.909,6.884c-0.48,1.744,0.37,3.548,1.402,4.173c0.198,0.119,0.649,0.332,0.815,0.049c0.092-0.156,0.071-0.364,0.128-0.546c0.037-0.12,0.154-0.347,0.127-0.496c-0.046-0.255-0.319-0.416-0.434-0.62C5.715,9.027,5.703,8.658,5.59,8.101c0.009-0.075,0.017-0.149,0.026-0.224C5.65,7.254,5.755,6.805,5.948,6.362c0.564-1.301,1.47-2.025,2.931-2.458c0.327-0.097,1.25-0.252,1.734-0.149c0.289,0.05,0.577,0.099,0.866,0.149c1.048,0.33,1.811,0.938,2.218,1.888c0.256,0.591,0.33,1.725,0.154,2.483c-0.085,0.36-0.072,0.667-0.179,0.993c-0.397,1.206-0.979,2.323-2.295,2.633c-0.868,0.205-1.519-0.324-1.733-0.869c-0.06-0.151-0.161-0.418-0.101-0.671c0.229-0.978,0.56-1.854,0.815-2.831c0.243-0.931-0.218-1.665-0.943-1.837C8.513,5.478,7.816,6.312,7.579,6.858C7.39,7.292,7.276,8.093,7.426,8.672c0.047,0.183,0.269,0.674,0.23,0.844c-0.174,0.755-0.372,1.568-0.587,2.31c-0.223,0.771-0.344,1.562-0.56,2.311c-0.1,0.342-0.096,0.709-0.179,1.066v0.521c-0.075,0.33-0.019,0.916,0.051,1.242c0.045,0.209-0.027,0.467,0.076,0.621c0.002,0.111,0.017,0.135,0.052,0.199c0.319-0.01,0.758-0.848,0.917-1.094c0.304-0.467,0.584-0.967,0.816-1.514c0.208-0.494,0.241-1.039,0.408-1.566c0.12-0.379,0.292-0.824,0.331-1.24h0.025c0.066,0.229,0.306,0.395,0.485,0.52c0.56,0.4,1.525,0.77,2.573,0.523c1.188-0.281,2.133-0.838,2.755-1.664c0.457-0.609,0.804-1.313,1.07-2.112c0.131-0.392,0.158-0.826,0.256-1.241c0.241-1.043-0.082-2.298-0.384-2.981C14.847,3.35,12.902,2.17,9.797,2.214"></path>
                      </svg>
                    </a>
                  </li>

                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="team-block col-sm-6 col-md-3 col-lg-3 float-left mb-sm-30">
          <div class="team-block-inner position-relative">
            <div class="team-image text-center">
              <img src="img/banner/team-04.jpg" alt="team-04" />
              <div class="overlay"></div>
            </div>
            <div class="team-content text-center float-left w-100">
              <div class="team-name text-capitalize font-weight-bold">john duff</div>
              <div class="team-designation text-capitalize">web developer</div>
              <div class="social-sharing float-left w-100">
                <ul class="d-flex justify-content-center">
                  <li class="facebook">
                    <a href="#" target="_blank" class="facebook_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M11.344,5.71c0-0.73,0.074-1.122,1.199-1.122h1.502V1.871h-2.404c-2.886,0-3.903,1.36-3.903,3.646v1.765h-1.8V10h1.8v8.128h3.601V10h2.403l0.32-2.718h-2.724L11.344,5.71z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="twitter">
                    <a href="#" target="_blank" class="twitter_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M18.258,3.266c-0.693,0.405-1.46,0.698-2.277,0.857c-0.653-0.686-1.586-1.115-2.618-1.115c-1.98,0-3.586,1.581-3.586,3.53c0,0.276,0.031,0.545,0.092,0.805C6.888,7.195,4.245,5.79,2.476,3.654C2.167,4.176,1.99,4.781,1.99,5.429c0,1.224,0.633,2.305,1.596,2.938C2.999,8.349,2.445,8.19,1.961,7.925C1.96,7.94,1.96,7.954,1.96,7.97c0,1.71,1.237,3.138,2.877,3.462c-0.301,0.08-0.617,0.123-0.945,0.123c-0.23,0-0.456-0.021-0.674-0.062c0.456,1.402,1.781,2.422,3.35,2.451c-1.228,0.947-2.773,1.512-4.454,1.512c-0.291,0-0.575-0.016-0.855-0.049c1.588,1,3.473,1.586,5.498,1.586c6.598,0,10.205-5.379,10.205-10.045c0-0.153-0.003-0.305-0.01-0.456c0.7-0.499,1.308-1.12,1.789-1.827c-0.644,0.28-1.334,0.469-2.06,0.555C17.422,4.782,17.99,4.091,18.258,3.266"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="google">
                    <a href="#" target="_blank" class="google_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M8.937,10.603c-0.383-0.284-0.741-0.706-0.754-0.837c0-0.223,0-0.326,0.526-0.758c0.684-0.56,1.062-1.297,1.062-2.076c0-0.672-0.188-1.273-0.512-1.71h0.286l1.58-1.196h-4.28c-1.717,0-3.222,1.348-3.222,2.885c0,1.587,1.162,2.794,2.726,2.858c-0.024,0.113-0.037,0.225-0.037,0.334c0,0.229,0.052,0.448,0.157,0.659c-1.938,0.013-3.569,1.309-3.569,2.84c0,1.375,1.571,2.373,3.735,2.373c2.338,0,3.599-1.463,3.599-2.84C10.233,11.99,9.882,11.303,8.937,10.603 M5.443,6.864C5.371,6.291,5.491,5.761,5.766,5.444c0.167-0.192,0.383-0.293,0.623-0.293l0,0h0.028c0.717,0.022,1.405,0.871,1.532,1.89c0.073,0.583-0.052,1.127-0.333,1.451c-0.167,0.192-0.378,0.293-0.64,0.292h0C6.273,8.765,5.571,7.883,5.443,6.864 M6.628,14.786c-1.066,0-1.902-0.687-1.902-1.562c0-0.803,0.978-1.508,2.093-1.508l0,0l0,0h0.029c0.241,0.003,0.474,0.04,0.695,0.109l0.221,0.158c0.567,0.405,0.866,0.634,0.956,1.003c0.022,0.097,0.033,0.194,0.033,0.291C8.752,14.278,8.038,14.786,6.628,14.786 M14.85,4.765h-1.493v2.242h-2.249v1.495h2.249v2.233h1.493V8.502h2.252V7.007H14.85V4.765z"></path>
                      </svg>
                    </a>
                  </li>

                  <li class="pinterest">
                    <a href="#" target="_blank" class="pinterest_link">
                      <svg class="svg-icon" viewBox="0 0 20 20" width="18px" height="18px">
                        <path fill="#666" d="M9.797,2.214C9.466,2.256,9.134,2.297,8.802,2.338C8.178,2.493,7.498,2.64,6.993,2.935C5.646,3.723,4.712,4.643,4.087,6.139C3.985,6.381,3.982,6.615,3.909,6.884c-0.48,1.744,0.37,3.548,1.402,4.173c0.198,0.119,0.649,0.332,0.815,0.049c0.092-0.156,0.071-0.364,0.128-0.546c0.037-0.12,0.154-0.347,0.127-0.496c-0.046-0.255-0.319-0.416-0.434-0.62C5.715,9.027,5.703,8.658,5.59,8.101c0.009-0.075,0.017-0.149,0.026-0.224C5.65,7.254,5.755,6.805,5.948,6.362c0.564-1.301,1.47-2.025,2.931-2.458c0.327-0.097,1.25-0.252,1.734-0.149c0.289,0.05,0.577,0.099,0.866,0.149c1.048,0.33,1.811,0.938,2.218,1.888c0.256,0.591,0.33,1.725,0.154,2.483c-0.085,0.36-0.072,0.667-0.179,0.993c-0.397,1.206-0.979,2.323-2.295,2.633c-0.868,0.205-1.519-0.324-1.733-0.869c-0.06-0.151-0.161-0.418-0.101-0.671c0.229-0.978,0.56-1.854,0.815-2.831c0.243-0.931-0.218-1.665-0.943-1.837C8.513,5.478,7.816,6.312,7.579,6.858C7.39,7.292,7.276,8.093,7.426,8.672c0.047,0.183,0.269,0.674,0.23,0.844c-0.174,0.755-0.372,1.568-0.587,2.31c-0.223,0.771-0.344,1.562-0.56,2.311c-0.1,0.342-0.096,0.709-0.179,1.066v0.521c-0.075,0.33-0.019,0.916,0.051,1.242c0.045,0.209-0.027,0.467,0.076,0.621c0.002,0.111,0.017,0.135,0.052,0.199c0.319-0.01,0.758-0.848,0.917-1.094c0.304-0.467,0.584-0.967,0.816-1.514c0.208-0.494,0.241-1.039,0.408-1.566c0.12-0.379,0.292-0.824,0.331-1.24h0.025c0.066,0.229,0.306,0.395,0.485,0.52c0.56,0.4,1.525,0.77,2.573,0.523c1.188-0.281,2.133-0.838,2.755-1.664c0.457-0.609,0.804-1.313,1.07-2.112c0.131-0.392,0.158-0.826,0.256-1.241c0.241-1.043-0.082-2.298-0.384-2.981C14.847,3.35,12.902,2.17,9.797,2.214"></path>
                      </svg>
                    </a>
                  </li>

                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="ttbrandlogo" class="my-40 my-sm-25 bottom-to-top hb-animate-element py-100 mb-150 py-sm-20 mb-sm-30">
    <div class="container">
      <div class="tt-brand owl-carousel">
        <div class="item">
          <a href="#"><img src="img/logos/brand-logo-01.png" alt="brand-logo-01"></a>
        </div>
        <div class="item">
          <a href="#"><img src="img/logos/brand-logo-02.png" alt="brand-logo-02"></a>
        </div>
        <div class="item">
          <a href="#"><img src="img/logos/brand-logo-03.png" alt="brand-logo-03"></a>
        </div>
        <div class="item">
          <a href="#"><img src="img/logos/brand-logo-04.png" alt="brand-logo-04"></a>
        </div>
        <div class="item">
          <a href="#"><img src="img/logos/brand-logo-05.png" alt="brand-logo-05"></a>
        </div>
        <div class="item">
          <a href="#"><img src="img/logos/brand-logo-06.png" alt="brand-logo-06"></a>
        </div>
        <div class="item">
          <a href="#"><img src="img/logos/brand-logo-07.png" alt="brand-logo-07"></a>
        </div>
      </div>
    </div>
  </div>
  <div id="ttcmstestimonial" class="my-40 my-sm-25 bottom-to-top hb-animate-element mb-150 mb-sm-30">
    <div class="tttestimonial-content container">
      <div class="tttestimonial-inner">
        <ul class="tttestimonial tttesti owl-carousel p-0">
          <li>
            <div class="testimonial-block">
              <div class="testimonial-image"><img alt="" src="img/banner/user1.jpg" /></div>
              <div class="testimonial-content">
                <div class="testimonial-desc">
                  <div class="rating">
                    <div class="product-ratings d-inline-block align-middle">
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                    </div>
                  </div>
                  <p>Duis faucibus enim vitae nunc molestie, nec facilisis arcu pulvinar. Nullam mattis arcu convallis, bibendum dui ac, laoreet est.Vivamus interdum egastas rutrum. Quisque laoreet ante sed placerat imperdiet.
                  </p>
                </div>
                <div class="testimonial-user-title">
                  <h4>John Duff</h4>
                  <div class="user-designation">SEO & founder</div>
                </div>
              </div>
            </div>
          </li>
          <li>
            <div class="testimonial-block">
              <div class="testimonial-image"><img alt="" src="img/banner/user2.jpg" /></div>
              <div class="testimonial-content">
                <div class="testimonial-desc">
                  <div class="rating">
                    <div class="product-ratings d-inline-block align-middle">
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                    </div>
                  </div>
                  <p>Duis faucibus enim vitae nunc molestie, nec facilisis arcu pulvinar. Nullam mattis arcu convallis, bibendum dui ac, laoreet est.Vivamus interdum egastas rutrum. Quisque laoreet ante sed placerat imperdiet.
                  </p>
                </div>
                <div class="testimonial-user-title">
                  <h4>John Duff</h4>
                  <div class="user-designation">SEO & founder</div>
                </div>
              </div>
            </div>
          </li>
          <li>
            <div class="testimonial-block">
              <div class="testimonial-image"><img alt="" src="img/banner/user3.jpg" /></div>
              <div class="testimonial-content">
                <div class="testimonial-desc">
                  <div class="rating">
                    <div class="product-ratings d-inline-block align-middle">
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                      <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                    </div>
                  </div>
                  <p>Duis faucibus enim vitae nunc molestie, nec facilisis arcu pulvinar. Nullam mattis arcu convallis, bibendum dui ac, laoreet est.Vivamus interdum egastas rutrum. Quisque laoreet ante sed placerat imperdiet.
                  </p>
                </div>
                <div class="testimonial-user-title">
                  <h4>John Duff</h4>
                  <div class="user-designation">SEO & founder</div>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>

</div>

<!-- Footer -->
<div class="block-newsletter">
  <div class="parallax" data-source-url="img/banner/parallax.jpg" style="background-image:url(img/banner/parallax.jpg); background-position:50% 65.8718%;">
    <div class="container">
      <div class="tt-newsletter col-sm-7">
        <h2 class="text-uppercase">Subscribe to our Newsletter</h2>
      </div>
      <div class="block-content col-sm-5">
        <form method="post" action="contact-us.html">
          <div class="input-group">
            <input type="email" name="email" value="" placeholder="Email address.." required="" class="form-control">
            <span class="input-group-btn">
			 <button class="btn btn-theme text-uppercase btn-primary" type="submit">Subscribe</button>
			 </span>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<footer class="page-footer font-small footer-default">
  <div class="container text-center text-md-left">
    <div class="row">
      <div class="col-md-2 footer-cms footer-column">
        <div class="ttcmsfooter">
          <div class="footer-logo"><img src="img/logos/footer-logo.png" alt="footer-logo"></div>
          <div class="footer-desc">At vero eos et accusamus et iusto odio dignissimos ducimus, duis faucibus enim vitae</div>
        </div>
      </div>
      <div class="col-md-2 footer-column">
        <div class="title">
          <a href="#company" class="font-weight-normal text-capitalize mb-10" data-toggle="collapse" aria-expanded="false">company</a> </div>
        <ul id="company" class="list-unstyled collapse">
          <li>
            <a href="#">search</a> </li>
          <li>
            <a href="#">New Products</a> </li>
          <li>
            <a href="category.html">Best Collection</a> </li>
          <li>
            <a href="wishlist.html">wishlist</a> </li>
        </ul>
      </div>
      <div class="col-md-2 footer-column">
        <div class="title">
          <a href="#products" class="font-weight-normal text-capitalize mb-10" data-toggle="collapse" aria-expanded="false">products</a> </div>
        <ul id="products" class="list-unstyled collapse">
          <li>
            <a href="blog-details.html">blog</a> </li>
          <li>
            <a href="about-us.html">about us</a> </li>
          <li>
            <a href="contact-us.html">contact us</a> </li>
          <li>
            <a href="my-account.html">my account</a> </li>
        </ul>

      </div>
      <div class="col-md-2 footer-column">
        <div class="title">
          <a href="#account" class="font-weight-normal text-capitalize mb-10" data-toggle="collapse" aria-expanded="false">your account</a> </div>
        <ul id="account" class="list-unstyled collapse">
          <li>
            <a href="blog-details.html">personal info</a> </li>
          <li>
            <a href="#">orders</a> </li>
          <li>
            <a href="contact-us.html">addresses</a> </li>
          <li>
            <a href="my-account.html">my wishlists</a> </li>
        </ul>

      </div>
      <div class="col-md-2 footer-column">
        <div class="title">
          <a href="#information" class="font-weight-normal text-capitalize mb-10" data-toggle="collapse" aria-expanded="false">store information</a> </div>
        <ul id="information" class="list-unstyled collapse">
          <li class="contact-detail links">
                            <span class="address">
			  		<span class="icon"><i class="material-icons">location_on</i></span>
                            <span class="data"> 4030, Central Bazzar, opp. Varachha Police Station, Varachha Main Road, Surat, Gujarat 395006, India</span> </span>
          </li>
          <li class="links">
                            <span class="contact">
			  		<span class="icon"><i class="material-icons">phone</i></span>
                            <span class="data"><a href="tel:(99)55669999">+ (99) 55-669-999</a></span> </span>
          </li>
          <li class="links">
                            <span class="email">
			  		<span class="icon"><i class="material-icons">email</i></span>
                            <span class="data"><a href="mailto:demo.store@gmail.com">demo.store@gmail.com</a></span> </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- Copyright -->
  <div class="footer-bottom-wrap">
    <div class="container">
      <div class="row">
        <div class="footer-copyright text-center py-3">
          © 2019 - Boostrap theme by store™
        </div>
      </div>
    </div>
  </div>
  <a href="#" id="goToTop" title="Back to top" class="btn-primary"><i class="material-icons arrow-up">keyboard_arrow_up</i></a>

</footer>
<!-- Footer -->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/parallax.js"></script>
<script src="js/lightbox-2.6.min.js"></script>
<script src="js/ResizeSensor.min.js"></script>
<script src="js/theia-sticky-sidebar.min.js"></script>
<script src="js/inview.js"></script>
<script src="js/cookiealert.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/masonry.pkgd.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<!--Start of Tawk.to Script-->
<!--Start of Tawk.to Script-->
<script type="text/javascript">
  var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
  (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/5ac1aabb4b401e45400e4197/default';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
  })();
</script>
<!--End of Tawk.to Script-->

</body>

</html>
