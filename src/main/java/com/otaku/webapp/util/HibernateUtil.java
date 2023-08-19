package com.otaku.webapp.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static SessionFactory sessionFactory = buiSessionFactory();
    private static SessionFactory buiSessionFactory(){
        try {
            return new Configuration().configure().buildSessionFactory();
        }catch(Exception ex){
            throw new ExceptionInInitializerError();
        }
    }

    public static SessionFactory getSessionFactory(){
        return sessionFactory;
    }
}
