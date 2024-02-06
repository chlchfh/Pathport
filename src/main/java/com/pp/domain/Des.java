package com.pp.domain;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
@Table(name = "destination")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "desCode")
public class Des {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "des_code")
    private String desCode;

    @ManyToOne
    @JoinColumn(name = "d_cls_code", referencedColumnName = "d_cls_code")
    @JsonIgnore
    private DES_CLS desCls; // 외래키로 참조할 엔티티 타입으로 변경


    @Column(name = "des_name")
    private String desName;

    @Column(name = "des_addr")
    private String desAddr;

    @Column(name = "des_lat")
    private Double desLat;

    @Column(name = "des_lng")
    private Double desLng;

    @Column(name = "des_cont")
    private String desCont;

    @Column(name = "des_like")
    private int desLike;

    @OneToMany(mappedBy = "desCode")
    @JsonManagedReference
    private List<Image> images;

    @OneToMany(mappedBy = "desCode")
    @JsonManagedReference
    private List<Review> reviews;

}



