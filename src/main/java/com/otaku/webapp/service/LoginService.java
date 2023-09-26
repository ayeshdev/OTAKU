package com.otaku.webapp.service;

import com.otaku.webapp.entity.User;
import com.otaku.webapp.model.UserDetails;
import com.otaku.webapp.util.HibernateUtil;
import org.hibernate.Session;

public class LoginService {
    public UserDetails getUserByEmail(String email){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = session.createQuery("select u from User u where u.email=:email", User.class).setParameter("email",email).uniqueResult();
        return new UserDetails(user.getId(), user.getEmail(), user.getPassword(),user.getUserType().toString());
    }
}
