package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.repositoty.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class UserController {


    @Autowired
    private UserRepository userRepository;

    // 회원가입
    @GetMapping("/auth/joinForm")
    public String joinForm() {
        return "회원가입";
    }

    // 로그인
    @GetMapping("/auth/loginForm")
    public String loginForm() {
        return "로그인";
    }


    // 테스트용
    @PostMapping("/user/inputTest")
    public String join(User user) {

        System.out.println("id: " + user.getId());
        System.out.println("username: " + user.getUsername());
        System.out.println("password: " + user.getPassword());
        System.out.println("email: " + user.getEmail());
        System.out.println("createDate: " + user.getCreateDate());

        userRepository.save(user);
        return "완료";
    }
}
