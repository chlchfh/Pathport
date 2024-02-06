package com.pp.persistence;

import com.pp.domain.AboutBoard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConTactRepository extends JpaRepository<AboutBoard, String> {

}
