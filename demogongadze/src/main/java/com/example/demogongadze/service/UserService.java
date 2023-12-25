package com.example.demogongadze.service;

import com.example.demogongadze.Dto.UserDto;
import com.example.demogongadze.entity.Role;
import com.example.demogongadze.entity.User;
import com.example.demogongadze.repo.UserRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService {
    private final PasswordEncoder passwordEncoder;
    private final UserRepo userRepo;
    public User save (User user){
        return userRepo.save(user);
    }
    public  void delete(Long id){
        this.userRepo.deleteById(id);
    }
    public Optional<User> getById(Long id){
        return userRepo.findById(id);
    }
    public List<User> getALLusers(){
        return userRepo.findAll();
    }

    public void registration(UserDto userDto){
        User user = new User();
        user.setUsername(userDto.getUsername());
        user.setPassword(passwordEncoder.encode(userDto.getPassword()));
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);
    }
}

