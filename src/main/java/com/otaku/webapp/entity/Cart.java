package com.otaku.webapp.entity;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
public class Cart extends BaseEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int qty;

    @ManyToOne
    private Products products;

    @ManyToOne
    private User user;

    @ManyToOne
    private Size size;


    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "cart_id")
    private Set<CartItem> items = new HashSet<>();

    public Cart() {
    }

    public Cart(Long id, int qty, Products products, User user, Set<CartItem> items, Size size) {
        this.id = id;
        this.qty = qty;
        this.products = products;
        this.user = user;
        this.items = items;
        this.size = size;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public Products getProducts() {
        return products;
    }

    public void setProducts(Products products) {
        this.products = products;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<CartItem> getItems() {
        return items;
    }

    public void setItems(Set<CartItem> items) {
        this.items = items;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }
}
