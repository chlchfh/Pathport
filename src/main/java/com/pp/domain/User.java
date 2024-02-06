package com.pp.domain;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Entity
@Data

@Table(name="user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="user_email")
    private String id;

    @Column(name="profile_img")
    private String profileImg;

    @Column(name="name")
    private String name;

    @Column(name="nn")
    private String nn;

    @OneToMany(mappedBy = "userEmail")
    private List<Review> reviews;

    @OneToMany(mappedBy = "userEmail")
    private List<Bookmark> bookmarks;

    private String role;
    private String birth;
    private String gen;
    private Date crdate;

    private String pwd;
}
