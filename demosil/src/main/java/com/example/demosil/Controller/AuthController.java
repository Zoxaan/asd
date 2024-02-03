package com.example.demosil.Controller;

import com.example.demosil.Entity.UserEntity;
import com.example.demosil.Service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@Controller
@RequestMapping("/registration")
public class AuthController {
    private final UserService userService;

    @GetMapping
public String registerForm(){return "registration";}

    @PostMapping
    public String registerUser(UserEntity user){
        userService.registration(user);
        return "redirect:/login";
    }
}
