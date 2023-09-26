package com.otaku.webapp.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.QueryParam;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/product-details")
public class SingleProductController {
    @GET
    public Viewable singleProductView(@QueryParam ("id") String id){

        System.out.println("ProductService Id is : "+id);
        return new Viewable("/frontend/product-details",id);
    }
}
