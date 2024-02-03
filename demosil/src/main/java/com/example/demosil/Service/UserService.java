package com.example.demosil.Service;

import com.example.demosil.Entity.Role;
import com.example.demosil.Entity.UserEntity;
import com.example.demosil.Repo.UserRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepo userRepo;
    private final PasswordEncoder passwordEncoder;

    public void registration(UserEntity user) {
        user.setUsername(user.getUsername());
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRole(Collections.singleton(Role.ADMIN));
        userRepo.save(user);
    }
public List <UserEntity>getALLuser(){return userRepo.findAll();}
public UserEntity save (UserEntity user){return userRepo.save(user);}
}
