package com.pp.impl;

import com.pp.domain.User;
import com.pp.repository.UserRepository;
import com.pp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public Optional<User> findUserByEmail(String id) {
        return Optional.of(userRepository.findById(id).orElse(new User()));
    }

    @Autowired
    private UserRepository userRepo;

    @Override
    public long getTotalRowCount(User user) {
        return userRepo.count();
    }

    @Override
    public User getUser(User user) {
        Optional<User> findUser = userRepo.findById(user.getId());

        if(findUser.isPresent()) {
            User loggedInUser = findUser.get();
            loggedInUser.setProfileImg("img/profile_image.jpg"); // 실제 프로필 이미지 경로로 변경
            return loggedInUser;
        } else {
            return null;
        }
    }

    @Override
    public Page<User> getUserList(Pageable pageable, String searchType, String searchWord) {
        if(searchType.equalsIgnoreCase("id")) {
            return userRepo.findByIdContaining(searchWord, pageable);
        } else {
            return userRepo.findByNameContaining(searchWord, pageable);
        }
    }

    @Override
    public void insertUser(User user) {
        userRepo.save(user);
    }

    @Override
    public void updateUser(User user) {
        userRepo.save(user);
    }

    @Override
    public void deleteUser(User user) {
        userRepo.deleteById(user.getId());
    }

    @Override
    public User getUserByName(String name) {
        return userRepo.findByName(name);
    }

    @Override
    public User saveOrUpdateUser(User user) {
        return userRepo.save(user);
    }
}
