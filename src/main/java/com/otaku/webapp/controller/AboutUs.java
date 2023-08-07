package com.otaku.webapp.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/about-us")
public class AboutUs {
    @GET
    public Viewable index(){
        return new Viewable("/about-us");
    }
}
