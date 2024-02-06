package com.pp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "com.pp.repository") // 리포지토리가 위치한 패키지를 지정하세요
@EntityScan("com.pp.domain")
public class DestinationApplication {

    public static void main(String[] args) {
        SpringApplication.run(DestinationApplication.class, args);
    }

}
