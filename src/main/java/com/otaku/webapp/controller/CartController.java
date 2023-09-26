package com.otaku.webapp.controller;

import com.otaku.webapp.dto.AuthResponseDTO;
import com.otaku.webapp.dto.LoginDTO;
import com.otaku.webapp.dto.ProductDTO;
import com.otaku.webapp.entity.Cart;
import com.otaku.webapp.entity.Products;
import com.otaku.webapp.entity.User;
import com.otaku.webapp.model.Product;
import com.otaku.webapp.model.UserDetails;
import com.otaku.webapp.service.CartService;
import com.otaku.webapp.service.ProductService;
import com.otaku.webapp.service.UserService;
import com.otaku.webapp.util.JwtTokenUtil;
import jakarta.inject.Inject;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.apache.tomcat.util.json.JSONParser;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.Base64;

@Path("/cart")
public class CartController {
    @Inject
    private CartService cartService;

    @Inject
    private UserService userService;

    @Inject
    private JwtTokenUtil jwtTokenUtil;

    private static String decode(String encodedString) {
        return new String(Base64.getUrlDecoder().decode(encodedString));
    }

    @GET
    public Viewable cartView() {
        return new Viewable("/frontend/cart");
    }


    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCartDetails(@CookieParam("token") String token, ProductDTO productDTO) {


        //get product id
        Long p = productDTO.getId();

        //get product details
        Products products = ProductService.getProductById(p);

        //get user email from token
        String email = jwtTokenUtil.getUsernameFromToken(token);

        //get user id
        User user = userService.getUserByEmailToken(email);

        //set product details
        Product product = cartService.setCartDetails(products);
        product.setName(products.getName());
        product.setPrice(products.getPrice());
        product.setId(products.getId());

        //add cart details
        Cart cart = new Cart();
        cart.setSize(products.getSize());
        cart.setId(products.getId());
        cart.setProducts(products);
        cart.setQty(productDTO.getQty_id());
//        cart.setQty(qty);
        cart.setUser(user);

        //persist cart details to the database
        cartService.save(cart);

        return Response.ok().entity("Response good").build();
    }
}
