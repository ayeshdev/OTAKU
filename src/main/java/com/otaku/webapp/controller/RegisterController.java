package com.otaku.webapp.controller;

import com.otaku.webapp.dto.RegisterDTO;
import com.otaku.webapp.entity.User;
import com.otaku.webapp.model.UserDetails;
import com.otaku.webapp.service.Encryption;
import com.otaku.webapp.service.UserService;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.UUID;

@Path("/register")
public class RegisterController {
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(RegisterDTO registerDTO){
        UserService userService = new UserService();
        UserDetails byEmail = userService.getUserByEmail(registerDTO.getEmail());

        if (byEmail != null){
            return Response.status(Response.Status.BAD_REQUEST).entity("Email already exists").build();
        }else{
            User user = new User();
            user.setName(registerDTO.getName());
            user.setEmail(registerDTO.getEmail());
            user.setPassword(Encryption.encrypt(registerDTO.getPassword()));

            System.out.println(user);

            String verificationCode = UUID.randomUUID().toString();
            user.setVerification_code(verificationCode);

            userService.save(user);

            return Response.ok().entity("User Registration is Success...").build();

        }
    }

}
