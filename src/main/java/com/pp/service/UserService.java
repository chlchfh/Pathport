package com.pp.service;

import com.pp.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

public interface UserService {
    Optional<User> findUserByEmail(String id);

    long getTotalRowCount(User user);
    User getUser(User user);
    Page<User> getUserList(Pageable pageable, String searchType, String searchWord);
    void insertUser(User user);
    void updateUser(User user);
    void deleteUser(User user);

    User getUserByName(String name);
    User saveOrUpdateUser(User user);
}
