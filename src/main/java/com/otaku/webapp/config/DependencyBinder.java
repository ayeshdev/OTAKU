package com.otaku.webapp.config;

import com.otaku.webapp.dto.AuthResponseDTO;
import com.otaku.webapp.dto.LoginDTO;
import com.otaku.webapp.service.*;
import com.otaku.webapp.util.JwtTokenUtil;
import jakarta.inject.Singleton;
import org.glassfish.hk2.utilities.binding.AbstractBinder;

public class DependencyBinder extends AbstractBinder {
    @Override
    protected void configure() {
        System.out.println("DependencyBinder.......");
        bind(JwtTokenUtil.class).to(JwtTokenUtil.class).in(Singleton.class);
        bind(UserService.class).to(UserService.class).in(Singleton.class);
        bind(CartService.class).to(CartService.class).in(Singleton.class);
        bind(ProductService.class).to(ProductService.class).in(Singleton.class);
        bind(JwtTokenUtil.class).to(JwtTokenUtil.class).in(Singleton.class);
        bind(GMailer.class).to(GMailer.class).in(Singleton.class);
    }
}
