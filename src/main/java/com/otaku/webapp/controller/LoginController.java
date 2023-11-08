package com.otaku.webapp.controller;


import com.otaku.webapp.dto.AuthResponseDTO;
import com.otaku.webapp.dto.LoginDTO;
import com.otaku.webapp.entity.User;
import com.otaku.webapp.entity.UserType;
import com.otaku.webapp.model.UserDetails;
import com.otaku.webapp.service.Encryption;
import com.otaku.webapp.service.UserService;
import com.otaku.webapp.util.HibernateUtil;
import com.otaku.webapp.util.JwtTokenUtil;
import jakarta.inject.Inject;
import jakarta.persistence.NoResultException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.Date;
import java.util.Random;
import java.util.UUID;

@Path("/login")
public class LoginController {
    @Inject
    private JwtTokenUtil jwtTokenUtil;

    @Inject
    private UserService userService;

    @Context
    HttpServletResponse httpServletResponse;

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response login(LoginDTO loginDTO) {

        String email = loginDTO.getEmail();
        String password = Encryption.encrypt(loginDTO.getPassword());

        System.out.println(password);

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();

        Query<User> query = session.createQuery("select u from User u where u.email=:email and u.password=:password", User.class);
        query.setParameter("email",email);
        query.setParameter("password",password);


        try {
            User user = query.getSingleResult();
            System.out.println(user.getName());

            if(user!=null){

//||||||||||||| GENERATE TOKEN ||||||||||||||

                UserDetails userDetails = userService.getUserByEmail(user.getEmail());
                String accessToken = jwtTokenUtil.generateAccessToken(userDetails);
                String refreshToken = jwtTokenUtil.generateRefreshToken(userDetails);
                Date expireDate = jwtTokenUtil.getExpireDateFromToken(accessToken);

                System.out.println(userDetails.getUserType());

                AuthResponseDTO authResponseDTO = new AuthResponseDTO();
                authResponseDTO.setAccessToken(accessToken);
                authResponseDTO.setRefreshToken(refreshToken);
                authResponseDTO.setExpireIn(expireDate.toString());

                Cookie cookie = new Cookie("token",accessToken);
                httpServletResponse.addCookie(cookie);


                if (userDetails.getUserType().equals("ADMIN")){
                    return Response.status(Response.Status.CREATED).entity("ADMIN").header("Authorization",accessToken).build();
//                    return Response.ok().entity("admin-panel").build();
                } else if (userDetails.getUserType().equals("USER")) {
                    return Response.ok().entity("USER").build();
                }else{
                    return Response.status(Response.Status.UNAUTHORIZED).entity("UnAuthorized User").build();
                }

//                return Response.ok().entity(authResponseDTO.getAccessToken()).build();
//                return Response.ok().build();


            }else{
                return Response.status(Response.Status.UNAUTHORIZED).entity("Check you Login Details Again!").build();
            }
        }catch (NoResultException e){
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

    }


    @Path("refresh-token")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response refreshToken(@FormParam("refreshToken") String refreshToken) {
        UserDetails userDetails = userService.getUserByEmail(jwtTokenUtil.getUsernameFromToken(refreshToken));
        if (!jwtTokenUtil.validateToken(refreshToken, userDetails)) {
            return Response.status(Response.Status.UNAUTHORIZED).entity("Invalid refresh token").build();
        } else {
            String accessToken = jwtTokenUtil.generateAccessToken(userDetails);
            Date expireDate = jwtTokenUtil.getExpireDateFromToken(accessToken);

            AuthResponseDTO dto = new AuthResponseDTO();
            dto.setAccessToken(accessToken);
            dto.setRefreshToken(refreshToken);
            dto.setExpireIn(expireDate.toString());

            return Response.ok().entity(dto).build();
        }
    }
}
