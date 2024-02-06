package com.pp.domain;

import jakarta.persistence.*;
import lombok.*;


import java.util.Date;

@Entity
@Getter
@Setter
@ToString
@Table(name = "support")
public class AboutBoard {


    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private String sup_code;


    @Column(name = "sup_title")
    private String supTitle;

    @Column(name = "sup_cont")
    private String supCont;

    @Column(name = "sup_ref")
    private String supRef;

    @Column(name = "sup_date")
    @Temporal(TemporalType.DATE)
    private Date supDate;


    @ManyToOne
    @JoinColumn(name = "sc_code", referencedColumnName = "sc_code")
    private SupportCls scCode;

    @ManyToOne
    @JoinColumn(name = "user_email", referencedColumnName = "user_email")
    private User email;

}