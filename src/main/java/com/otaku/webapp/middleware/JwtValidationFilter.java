package com.otaku.webapp.middleware;

import com.otaku.webapp.model.UserDetails;
import com.otaku.webapp.service.UserService;
import com.otaku.webapp.util.JwtTokenUtil;
import io.fusionauth.jwt.JWTException;
import jakarta.annotation.Priority;
import jakarta.inject.Inject;
import jakarta.ws.rs.container.ContainerRequestContext;
import jakarta.ws.rs.container.ContainerRequestFilter;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.Provider;

import java.io.IOException;

@Provider
@Priority(1)
public class JwtValidationFilter implements ContainerRequestFilter {
    @Inject
    private JwtTokenUtil tokenUtil;
    @Inject
    private UserService userService;

    @Override
    public void filter(ContainerRequestContext requestContext) throws IOException {
        System.out.println("JwtValidationFilter.....");


        String path = requestContext.getUriInfo().getPath();
        if (path.equals("auth") || path.equals("refresh-token")) {    //meka dapu nisa auth kiyana path ekata access karanna pluwan filter eken prshnyak wenne nathuwa
            return;
        }
        if (requestContext.getHeaders().getFirst("Authorization") == null) {
            requestContext.abortWith(Response.status(Response.Status.UNAUTHORIZED).build());
        } else {
            String token = requestContext.getHeaders().getFirst("Authorization").split(" ")[1];

            try {
                UserDetails userDetails = userService.getUserByEmail(tokenUtil.getUsernameFromToken(token));
                if (!tokenUtil.validateToken(token, userDetails)) {
                    requestContext.abortWith(Response.status(Response.Status.UNAUTHORIZED).build());
                }

            } catch (JWTException | NullPointerException ex) {
                requestContext.abortWith(Response.status(Response.Status.UNAUTHORIZED).entity("Token Expired....").build());

            } catch (Exception ex) {
//                ex.printStackTrace();
                requestContext.abortWith(Response.status(Response.Status.UNAUTHORIZED).build());
            }
        }
    }
}
