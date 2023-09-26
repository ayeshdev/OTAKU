package com.otaku.webapp.service;

import com.otaku.webapp.entity.Cart;
import com.otaku.webapp.entity.Products;
import com.otaku.webapp.model.Product;
import com.otaku.webapp.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class CartService {

    public Product setCartDetails(Products product){
        return new Product();
    };

    public void save(Cart cart){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(cart);
        transaction.commit();
        session.close();
    }
}
