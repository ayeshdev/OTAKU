<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="com.otaku.webapp.util.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.otaku.webapp.entity.Products" %>
<%@ page import="java.util.List" %>
<%@ page import="jakarta.inject.Inject" %>
<%@ page import="com.otaku.webapp.util.JwtTokenUtil" %>
<%@ page import="com.otaku.webapp.entity.User" %>
<%@ page import="com.otaku.webapp.entity.Cart" %>

<%@ taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%

    SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session sessionData = sessionFactory.openSession();

    Cookie cookie = null;
    Cookie[] cookies = null;

    String cookie_value = "";

    String email = "";

    cookies = request.getCookies();

    for (int i = 0; i < cookies.length; i++){
        cookie = cookies[i];
        if(cookie.getName().equals("token")){
            cookie_value = cookie.getValue();
        }
    }

    //get user email using token
    if(cookie_value != ""){
        JwtTokenUtil jwtTokenUtil = new JwtTokenUtil();
        email = jwtTokenUtil.getUsernameFromToken(cookie_value);
    }

    User user = sessionData.createQuery("select u from User u where u.email =: email",User.class).setParameter("email",email).getSingleResult();
    Long user_id = user.getId();

    System.out.println(user_id);

    List<Cart> cartList = sessionData.createQuery("select c from Cart c where c. =: user_id",Cart.class).setParameter("user_id",user_id).getResultList();
    pageContext.setAttribute("cartList",cartList);
//
    System.out.println(cartList);


    List<Products> productDTO = sessionData.createQuery("select p from Products p", Products.class).getResultList();
    pageContext.setAttribute("product", productDTO);
%>

<layout:extends name="base">
    <layout:put block="contents" type="REPLACE">


        <nav aria-label="breadcrumb" class="w-100 float-left">
            <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallax.jpg" style="background-image: url(&quot;img/banner/parallax.jpg&quot;); background-position: 50% 0.809717%;">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">cart</li>

            </ol>
        </nav>

        <div class="cart-area table-area pt-110 pb-95 float-left w-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-12 col-sm-12 float-left cart-wrapper">
                        <div class="table-responsive">
                            <table class="table product-table text-center">
                                <thead>
                                <tr>
                                    <th class="table-remove text-capitalize">remove</th>
                                    <th class="table-image text-capitalize">image</th>
                                    <th class="table-p-name text-capitalize">product</th>
                                    <th class="table-p-price text-capitalize">price</th>
                                    <th class="table-p-qty text-capitalize">quantity</th>
                                    <th class="table-total text-capitalize">total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="table-remove"><button><i class="material-icons">delete</i></button></td>
                                    <td class="table-image"><a href="product-details.html"><img src="img/productDTO/02.jpg" alt=""></a></td>
                                    <td class="table-p-name text-capitalize"><a href="product-details.html">aspetur autodit autfugit</a></td>
                                    <td class="table-p-price"><p>$100.00</p></td>
                                    <td class="table-p-qty"><input value="1" name="cart-qty" type="number"></td>
                                    <td class="table-total"><p>$100.00</p></td>
                                </tr>
                                <tr>
                                    <td class="table-remove"><button><i class="material-icons">delete</i></button></td>
                                    <td class="table-image"><a href="product-details.html"><img src="img/productDTO/03.jpg" alt=""></a></td>
                                    <td class="table-p-name text-capitalize"><a href="product-details.html">magni dolores eosquies</a></td>
                                    <td class="table-p-price"><p>$100.00</p></td>
                                    <td class="table-p-qty"><input value="1" name="cart-qty" type="number"></td>
                                    <td class="table-total"><p>$100.00</p></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="table-bottom-wrapper">
                            <div class="table-coupon d-flex d-xs-block d-lg-flex d-sm-flex fix justify-content-start float-left">
                                <input type="text" placeholder="Coupon code">
                                <button type="submit" class="btn-primary btn">Apply coupon</button>
                            </div>
                            <div class="table-update d-flex d-xs-block d-lg-flex d-sm-flex justify-content-end">
                                <button type="button" class="btn-primary btn">Update cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="table-total-wrapper d-flex justify-content-end pt-60 col-md-12 col-sm-12 col-lg-4 float-left  align-items-center">
                        <div class="table-total-content">
                            <h2 class="pb-20">Cart totals</h2>
                            <div class="table-total-amount">
                                <div class="single-total-content d-flex justify-content-between float-left w-100">
                                    <strong>Subtotal</strong>
                                    <span class="c-total-price">$160.00</span>
                                </div>
                                <div class="single-total-content d-flex justify-content-between float-left w-100">
                                    <strong>Shipping</strong>
                                    <span class="c-total-price"><span>Flat Rate:</span> $5.00</span>
                                </div>
                                <div class="single-total-content d-flex justify-content-end float-left w-100">
                                    <a href="#">Calculate shipping</a>
                                </div>
                                <div class="single-total-content tt-total d-flex justify-content-between float-left w-100">
                                    <strong>Total</strong>
                                    <span class="c-total-price">$165.00</span>
                                </div>
                                <a href="checkout_page.html" class="btn btn-primary float-left w-100 text-center">Proceed to checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

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




    </layout:put>
</layout:extends>