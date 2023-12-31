package com.example.demogongadze.controller;

import com.example.demogongadze.entity.User;
import com.example.demogongadze.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequiredArgsConstructor
@RequestMapping("")
public class UsersController {
    private final UserService userService;


    @GetMapping("")
    public String getALLusers(Model model){
        model.addAttribute("users", userService.getALLusers());
        model.addAttribute("user", new User());
        return "index";
    }
    @PostMapping("/save")
    public String saveUser(@ModelAttribute User users){
        userService.save(users);
        return "redirect:all";
    }
    @GetMapping("/delete")
    public String deleteUser(@RequestParam Long id){
        userService.delete(id);
        return "redirect:all";
    }
    @GetMapping("/edit")
    public String editUser(@RequestParam Long id, Model model){
        Optional<User> user = userService.getById(id);
        model.addAttribute("user", user);
        return "Edit";
    }
    @PostMapping("/update")
    public String updateUser(@ModelAttribute User users ,Model model){

        userService.save(users);
        return "redirect:all";
    }

}
