package com.pp.persistence;

import com.pp.domain.AboutBoard;
import com.pp.domain.User;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import java.util.List;
import java.util.Optional;
import java.util.Set;



public interface AboutBoardRepository extends JpaRepository<AboutBoard, String> {
    @Query("SELECT DISTINCT a.supTitle FROM AboutBoard a")
    Set<String> findDistinctSuptitles();

    Optional<AboutBoard> findById(String id);

    @Modifying 			// @Query의 sql이 insert/delete/update
    @Transactional		// commit, rollback
    @Query("update AboutBoard b set b.sup_code=:_seq where b.sup_code = :seq")
    void updateLastSeq(@Param("seq") Long seq);

    @Modifying
    @Transactional
    @Query("update AboutBoard b set b.sup_code = :newSupCode where b.sup_code = :oldSupCode")
    void updateSupCode(@Param("oldSupCode") String oldSupCode, @Param("newSupCode") String newSupCode);

    List<AboutBoard> findByEmail_Id(String userEmail);
}
