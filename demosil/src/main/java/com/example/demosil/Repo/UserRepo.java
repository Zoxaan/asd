package com.example.demosil.Repo;

import com.example.demosil.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository <UserEntity , Long> {
    UserEntity findByUsername(String username);
}
