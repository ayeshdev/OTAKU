package com.otaku.webapp.service;

import com.otaku.webapp.entity.User;
import com.otaku.webapp.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserService {
    public User getById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(User.class,id);
    };

    public User getByEmail(String email){
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("select u from User u where u.email=:email", User.class)
                    .setParameter("email",email)
                    .uniqueResult();
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
