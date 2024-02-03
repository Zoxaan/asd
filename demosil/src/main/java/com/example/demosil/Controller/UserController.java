package com.example.demosil.Controller;

import com.example.demosil.Entity.UserEntity;
import com.example.demosil.Service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@Controller
@RequestMapping
public class UserController {
    private final UserService userService;
    @GetMapping("/login")
    public String loadPageLogin(){return "login";}

    @GetMapping("/all")
    public String getALLuser(Model model){
        model.addAttribute("users" ,userService.getALLuser());
        model.addAttribute("user", new UserEntity());
return "admin";
    }
    @PostMapping("/save")
    public  String saveUser(@ModelAttribute UserEntity users){
userService.save(users);
return "redirect:admin";
    }

}
