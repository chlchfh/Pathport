package com.pp.repository;

import com.pp.domain.Des;
import com.pp.domain.Review;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, String> {

    List<Review> findByDesCode(Des destination);

//    List<Review> findByUserEmailWithRvCode(Destination destination);

}
