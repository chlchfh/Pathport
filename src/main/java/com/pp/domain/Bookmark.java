package com.pp.domain;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="BOOKMARK")
public class Bookmark {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer bmCode;

    @ManyToOne
    @JoinColumn(name = "email", referencedColumnName = "user_email")
    private User userEmail;

    @ManyToOne
    @JoinColumn(name = "des_code", referencedColumnName = "des_code")
    private Des desCode;

    @Column(name="BM_cls")
    private String bmCls;

    @Column(name="BM_nn")
    private String bmNn;


}
