package com.pp.repository;

import com.pp.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, String> {
    Optional<User> findById(String id);

    Page<User> findByIdContaining(String id, Pageable pageable);
    Page<User> findByNameContaining(String name, Pageable pageable);
    User findByName(String name);

}
