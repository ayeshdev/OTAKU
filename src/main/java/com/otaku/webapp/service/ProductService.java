package com.otaku.webapp.service;

import com.otaku.webapp.entity.Category;
import com.otaku.webapp.entity.Color;
import com.otaku.webapp.entity.Products;
import com.otaku.webapp.entity.Size;
import com.otaku.webapp.model.Product;
import com.otaku.webapp.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ProductService {

    public static Products getProductById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Products products = session.createQuery("select p from Products p where p.id=:id",Products.class).setParameter("id",id).getSingleResult();
        return products;
    };

    public static Size getSizeById(Integer id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Size size = session.createQuery("select s from Size s where s.id=:id",Size.class).setParameter("id",id).getSingleResult();
        return size;
    }

    public static Category getCategoryById(Integer id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Category category = session.createQuery("select c from Category c where c.id=:id", Category.class).setParameter("id",id).getSingleResult();
        return category;
    }

    public static Color getColorById(Integer id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Color color = session.createQuery("select cl from Color cl where cl.id=:id",Color.class).setParameter("id",id).getSingleResult();
        return color;
    }

    public void save(Products product){

        System.out.println("service ok");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(product);
        transaction.commit();
        session.close();
    }

    public void update(Products product){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(product);
        transaction.commit();
        session.close();
    }
}
