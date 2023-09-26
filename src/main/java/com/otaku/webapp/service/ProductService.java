package com.otaku.webapp.service;

import com.otaku.webapp.entity.Products;
import com.otaku.webapp.util.HibernateUtil;
import org.hibernate.Session;

public class ProductService {
    public static Products getProductById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Products products = session.createQuery("select p from Products p where p.id=:id",Products.class).setParameter("id",id).getSingleResult();
        return products;
    };
}
