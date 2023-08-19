package com.otaku.webapp.entity;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "users")
public class User extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String email;
    private String password;
    private String verification_code;

    @Enumerated(value = EnumType.STRING)
    @Column(name = "user_type")
    private UserType userType = UserType.USER;

    public User() {
    }

    public User(String name, String email, String password, String verification_code, UserType userType) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.verification_code = verification_code;
        this.userType = userType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;

    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public String getVerification_code() {
        return verification_code;
    }

    public void setVerification_code(String verification_code) {
        this.verification_code = verification_code;
    }
}
