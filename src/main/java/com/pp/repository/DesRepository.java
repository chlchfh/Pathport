package com.pp.repository;

import java.util.List;
import com.pp.domain.Des;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface DesRepository extends JpaRepository<Des, String> {
    List<Des> findByDesNameContaining(String desName);

    @Query(value = "SELECT d FROM Des d WHERE d.desCls = (SELECT d2.desCls FROM Des d2 WHERE d2.desName = :desName)")
    List<Des> findByDClsCodeWithDesName(@Param("desName") String desName);

    List<Des> findByDesCls_dClsCode(String dClsCode);

    Des findDestinationByDesCode(String desCode);

    @Query("SELECT d FROM Des d WHERE d.desName LIKE %:keyword%")
    List<Des> findByDesNameLike(@Param("keyword") String keyword);

    List<Des> findTop3ByOrderByDesLikeDesc();


}
