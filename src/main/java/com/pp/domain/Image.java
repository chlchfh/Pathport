package com.pp.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;
import lombok.ToString;

@Entity
@Data
@Table(name = "image")
public class Image {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String imgCode;

    @Column(name = "i_cls_code")
    private String iClsCode;

    @ManyToOne
    @JoinColumn(name = "des_code", referencedColumnName = "des_code")
    @JsonBackReference
    private Des desCode;

    @ManyToOne
    @JoinColumn(name = "rv_code", referencedColumnName = "rv_code")
    private Review rvCode;

    @Column(name = "image_name")
    private String imageName;


}
