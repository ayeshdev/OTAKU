package com.otaku.webapp.service;

import com.otaku.webapp.entity.User;
import com.otaku.webapp.model.UserDetails;
import com.otaku.webapp.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserService {

    public User getById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(User.class,id);
    };

    public UserDetails getUserByEmail(String email){
//        System.out.println(email);
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            User user =  session.createQuery("select u from User u where u.email=:email", User.class)
                    .setParameter("email",email)
                    .getSingleResult();

            return new UserDetails(user.getId(), user.getEmail(), user.getPassword(),user.getUserType().toString());
        }catch (NoResultException e){
            return null;
        }
    };

    public User getUserByEmailToken(String email){
//        System.out.println(email);
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            User user =  session.createQuery("select u from User u where u.email=:email", User.class)
                    .setParameter("email",email)
                    .getSingleResult();

            return user;
        }catch (NoResultException e){
            return null;
        }
    };

    public void save(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.close();
    }
}
