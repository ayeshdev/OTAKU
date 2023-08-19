package com.otaku.webapp.listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.setAttribute("BASE_URL",context.getContextPath()+"/");
        System.out.println("ContextInitialized...");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
