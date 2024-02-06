package com.pp.repository;

import com.pp.domain.Bookmark;
import com.pp.domain.Des;
import com.pp.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookmarkRepository extends JpaRepository<Bookmark, Integer> {

    List<Bookmark> findByUserEmail(User email);
    List<Bookmark> findByDesCode(Des desCode);
    List<Bookmark> findByBmCls(String bmCls);
    List<Bookmark> findByBmNn(String bmNn);
}
