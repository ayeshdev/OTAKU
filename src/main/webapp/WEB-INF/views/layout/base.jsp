<%--
  Created by IntelliJ IDEA.
  User: TUF
  Date: 8/18/2023
  Time: 7:07 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Fashion Template for Bootstrap</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Demo powered by Templatetrip">
    <meta name="author" content="">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="${BASE_URL}assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="${BASE_URL}assets/css/styles.css" rel="stylesheet">
    <link href="${BASE_URL}assets/css/animate.css" rel="stylesheet">
    <link href="${BASE_URL}assets/css/owl-carousel.css" rel="stylesheet">
    <link href="${BASE_URL}assets/css/lightbox.css" rel="stylesheet">

    <!-- Custom styles for this template -->
</head>

<body class="index layout1">

<%--START INCLUDE HEADER--%>

<jsp:include page="../frontend/include/header.jsp"/>

<%--END INCLUDE HEADER--%>


<%--START CONTENT--%>

<layout:block name="contents">

</layout:block>

<%--END CONTENT--%>


<%--START INCLUDE FOOTER--%>

<jsp:include page="../frontend/include/footer.jsp"/>

<%--END INCLUDE FOOTER--%>
<div class="alert text-center cookiealert" role="alert">
    <b>Do you like cookies?</b> We use cookies to ensure you get the best experience on our website. <a href="https://demo.templatetrip.com/Html/HTML001_victoria/" rel="noreferrer">learn more</a>

    <button type="button" class="btn btn-primary btn-sm acceptcookies" aria-label="Close">
        I agree
    </button>
</div>

<!-- Register modal -->
<div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-medium text-left">Sign up</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-4">
                    <input type="text" id="RegisterForm-name" class="form-control validate" placeholder="Your name">
                </div>
                <div class="md-form mb-4">
                    <input type="email" id="RegisterForm-email" class="form-control validate" placeholder="Your email">
                </div>
                <div class="md-form mb-4">
                    <input type="password" id="RegisterForm-pass" class="form-control validate" placeholder="Your password">
                </div>
                <div class="checkbox-link d-flex justify-content-between">
                    <div class="left-col">
                        <input id="remember-me" type="checkbox"><label for="remember_me">Remember Me</label>
                    </div>
                    <div class="right-col"><a href="#">Forget Password?</a></div>
                </div>
            </div>

            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-primary sign-up">Sign up</button>
            </div>
        </div>
    </div>
</div>

<!-- Login modal -->
<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-medium text-left">Sign in</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-4">
                    <input type="text" id="LoginForm-name" class="form-control validate" placeholder="Your name">
                </div>
                <div class="md-form mb-4">
                    <input type="password" id="LoginForm-pass" class="form-control validate" placeholder="Your password">
                </div>
                <div class="checkbox-link d-flex justify-content-between">
                    <div class="left-col">
                        <input type="checkbox" id="remember_me"><label for="remember_me">Remember Me</label>
                    </div>
                    <div class="right-col"><a href="#">Forget Password?</a></div>
                </div>
            </div>

            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-primary">Sign in</button>
            </div>
        </div>
    </div>
</div>

<!-- product_view modal -->
<div class="modal fade product_view" id="product_view" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title w-100w-100w-100 font-weight-bold d-none">Quick view</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6 left-columm">
                        <div class="product-large-image tab-content">
                            <div class="tab-pane active" id="product-1" role="tabpanel" aria-labelledby="product-tab-1">
                                <div class="single-img img-full">
                                    <a href="img/products/01.jpg"><img src="img/products/01.jpg" class="img-fluid" alt="" width="368" height="478"></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="product-2" role="tabpanel" aria-labelledby="product-tab-2">
                                <div class="single-img">
                                    <a href="img/products/02.jpg"><img src="img/products/02.jpg" class="img-fluid" alt="" width="368" height="478"></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="product-3" role="tabpanel" aria-labelledby="product-tab-3">
                                <div class="single-img">
                                    <a href="img/products/03.jpg"><img src="img/products/03.jpg" class="img-fluid" alt="" width="368" height="478"></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="product-4" role="tabpanel" aria-labelledby="product-tab-4">
                                <div class="single-img">
                                    <a href="img/products/04.jpg"><img src="img/products/04.jpg" class="img-fluid" alt="" width="368" height="478"></a>
                                </div>
                            </div>
                            <div class="tab-pane" id="product-5" role="tabpanel" aria-labelledby="product-tab-5">
                                <div class="single-img">
                                    <a href="img/products/05.jpg"><img src="img/products/05.jpg" class="img-fluid" alt="" width="368" height="478"></a>
                                </div>
                            </div>
                        </div>
                        <div class="small-image-list float-left w-100">
                            <div class="nav-add small-image-slider-single-product-tabstyle-3 owl-carousel" role="tablist">
                                <div class="single-small-image img-full">
                                    <a data-toggle="tab" id="product-tab-1" href="#product-1" class="img active"><img src="img/products/01.jpg" class="img-fluid" alt=""></a>
                                </div>
                                <div class="single-small-image img-full">
                                    <a data-toggle="tab" id="product-tab-2" href="#product-2" class="img"><img src="img/products/02.jpg" class="img-fluid" alt=""></a>
                                </div>
                                <div class="single-small-image img-full">
                                    <a data-toggle="tab" id="product-tab-3" href="#product-3" class="img"><img src="img/products/03.jpg" class="img-fluid" alt=""></a>
                                </div>
                                <div class="single-small-image img-full">
                                    <a data-toggle="tab" id="product-tab-4" href="#product-4" class="img"><img src="img/products/04.jpg" class="img-fluid" alt=""></a>
                                </div>
                                <div class="single-small-image img-full">
                                    <a data-toggle="tab" id="product-tab-5" href="#product-5" class="img"><img src="img/products/05.jpg" class="img-fluid" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 product_content">
                        <h4 class="product-title text-capitalize">Printed Polo Collar T-shirt</h4>
                        <div class="rating">
                            <div class="product-ratings d-inline-block align-middle">
                                <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                <span class="fa fa-stack"><i class="material-icons off">star</i></span>			</div>							</div>
                        <span class="description float-left w-100">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
                        <h3 class="price float-left w-100"><span class="regular-price align-middle">$75.00</span><span class="old-price align-middle">$60.00</span></h3>

                        <div class="product-variants float-left w-100">
                            <div class="col-md-4 col-sm-6 col-xs-12 size-options d-flex align-items-center">
                                <h5>Size:</h5>

                                <select class="form-control" name="select">
                                    <option value="" selected="">Size</option>
                                    <option value="black">Medium</option>
                                    <option value="white">Large</option>
                                    <option value="gold">Small</option>
                                    <option value="rose gold">Extra large</option>
                                </select>
                            </div>
                            <div class="color-option d-flex align-items-center">
                                <h5>color :</h5>
                                <ul class="color-categories">
                                    <li class="active">
                                        <a class="tt-pink" href="#" title="Pink"></a>                                            </li>
                                    <li>
                                        <a class="tt-blue" href="#" title="Blue"></a>                                            </li>
                                    <li>
                                        <a class="tt-yellow" href="#" title="Yellow"></a>                                            </li>
                                </ul>
                            </div>
                        </div>
                        <div class="btn-cart d-flex align-items-center float-left w-100">
                            <h5>qty:</h5>
                            <input value="1" type="number">
                            <button type="button" class="btn btn-primary"><i class="material-icons">shopping_cart</i> Add To Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- cart-pop modal -->
<div class="modal fade" id="cart-pop" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header alert-success">
                <h4 class="modal-title w-100w-100w-100">Product successfully added to your shopping cart</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6 divide-right">
                        <div class="row">
                            <div class="col-md-5 col-sm-4 col-xs-12 product-img float-left">
                                <img src="img/products/01.jpg" class="img-responsive" alt="01">
                            </div>
                            <div class="col-md-7 col-sm-8 col-xs-12 product-desc float-left">
                                <h4 class="product-title text-capitalize">Burgundy Small Dress</h4>
                                <div class="rating">
                                    <div class="product-ratings d-inline-block align-middle">
                                        <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                        <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                        <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                        <span class="fa fa-stack"><i class="material-icons off">star</i></span></div></div>
                                <h3 class="price float-left w-100"><span class="regular-price align-middle">$75.00</span><span class="old-price align-middle">$60.00</span></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 divide-left">
                        <p class="cart-products-count">There are 2 items in your cart.</p>
                        <p class="total-products float-left w-100">
                            <strong>Total products:</strong> $150.00
                        </p>
                        <p class="shipping float-left w-100">
                            <strong>Total shipping:</strong> free
                        </p>
                        <p class="total-price float-left w-100">
                            <strong>Total:</strong> $150.00(tax incl.)
                        </p>
                        <div class="cart-content-btn float-left w-100">
                            <form action="#">
                                <input class="btn pull-right mt_10 btn-primary" value="Continue shopping" type="submit">
                            </form>
                            <form action="checkout_page.html">
                                <input class="btn pull-right mt_10 btn-secondary" value="Proceed to checkout" type="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="compare-wrapper float-left w-100">
    <div class="compare-inner d-flex align-items-center p-20">
		<span class="close"><i class='material-icons'>
  close
</i></span>
        <div class="col-xs-12 col-sm-2 col-md-3 float-left d-flex align-items-center flex-column compare-left">
            <h2>compare products</h2>
            <div class="compare-btn">show all</div>
        </div>
        <div class="col-xs-12 col-sm-10 col-md-9 d-flex float-left align-items-center compare-right">
            <div class="compare-close-btn"></div>
            <div class="compare-products d-flex col-sm-7 col-lg-5">
                <div class="row">
                    <div class="single-item col-sm-4 col-xs-4">
                        <div class="remove"></div>
                        <div class="image"><img src="img/products/01.jpg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="single-item col-sm-4 col-xs-4">
                        <div class="remove"></div>
                        <div class="image"><img src="img/products/02.jpg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="single-item col-sm-4 col-xs-4">
                        <div class="remove"></div>
                        <div class="image"><img src="img/products/03.jpg" class="img-fluid" alt=""></div>
                    </div>
                </div>
            </div>
            <div class="buttons col-sm-5 col-lg-2">
                <a href="compare.html" class="compare-btn btn btn-secondary float-left w-100 mb-15">compare</a>
                <div class="clear-btn btn btn-primary float-left w-100">clear</div>
            </div>
        </div>
    </div>
</div>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${BASE_URL}assets/js/jquery.min.js"></script>
<script src="${BASE_URL}assets/js/bootstrap.min.js"></script>
<script src="${BASE_URL}assets/js/owl.carousel.min.js"></script>
<script src="${BASE_URL}assets/js/custom.js"></script>
<script src="${BASE_URL}assets/js/parallax.js"></script>
<script src="${BASE_URL}assets/js/lightbox-2.6.min.js"></script>
<script src="${BASE_URL}assets/js/ResizeSensor.min.js"></script>
<script src="${BASE_URL}assets/js/theia-sticky-sidebar.min.js"></script>
<script src="${BASE_URL}assets/js/inview.js"></script>
<script src="${BASE_URL}assets/js/cookiealert.js"></script>
<script src="${BASE_URL}assets/js/jquery.countdown.min.js"></script>
<script src="${BASE_URL}assets/js/masonry.pkgd.min.js"></script>
<script src="${BASE_URL}assets/js/imagesloaded.pkgd.min.js"></script>
<script src="${BASE_URL}assets/js/jquery.zoom.min.js"></script>
<script src="${BASE_URL}assets/js/jquery.lazy.min.js"></script>

<script type="text/javascript">
    let e = document.getElementsByClassName('sign-up').item(0).addEventListener('click',()=>{
        let name = document.getElementById('RegisterForm-name').value;
        let email = document.getElementById('RegisterForm-email').value;
        let password = document.getElementById('RegisterForm-pass').value;

        fetch('${BASE_URL}register',{
            method:'post',
            headers:{
                'Content-Type':'application/json'
            },
            body:JSON.stringify({
                name:name,
                email:email,
                password:password
            })
        }).then(response => response.text()).then(text=>console.log(text))
    });
</script>
</body>
</html>
