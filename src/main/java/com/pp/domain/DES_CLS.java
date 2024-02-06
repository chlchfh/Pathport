package com.pp.domain;

import jakarta.persistence.*;
import lombok.Data;
import lombok.ToString;

import java.util.List;

@Entity
@Data
@Table(name = "des_cls")
public class DES_CLS {
    @Id
    @Column(name = "d_cls_code")
    private String dClsCode;

    @Column(name = "d_cls_country")
    private String desName;

    @Column(name = "d_cls_addr")
    private String desAddr;

    @Column(name = "d_cls_lat")
    private float desLat;

    @Column(name = "d_cls_lng")
    private float desLng;

    @OneToMany(mappedBy = "desCls")
    private List<Des> dCls;

}
