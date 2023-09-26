package com.otaku.webapp.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/admin-panel")
public class AdminPanelController {
    @GET
    public Viewable goToAdminPanel(){
        System.out.println("Admin Panel Redirector.......");
        return new Viewable("/backend/admin/html/index");
    }
}
