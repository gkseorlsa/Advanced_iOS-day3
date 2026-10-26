package com.thisweek.thisweek.controller;

import com.thisweek.thisweek.domain.User;
import com.thisweek.thisweek.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class UserController {
    private final UserService userService;

    @GetMapping("/users/{id}")
    public User getUser(@PathVariable Long id) {
        return userService.getUser(id);
    }

    @PostMapping(
            value = "/users",
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE
    )
    public User register(@ModelAttribute User user) {
        return userService.register(user);
    }

//    @PostMapping("/users/login")
//    public User login(@RequestBody User user) {
//        return userService.login(user);
//    }
}
