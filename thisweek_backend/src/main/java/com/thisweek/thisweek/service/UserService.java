package com.thisweek.thisweek.service;

import com.thisweek.thisweek.domain.User;
import com.thisweek.thisweek.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;

    public User getUser(Long id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("유저를 찾을 수 없습니다."));
    }

    public User register(User user) {
        return userRepository.save(user);
    }

//    public User login(User user) {
//        User find = userRepository.findById(user.getId())
//                .orElseThrow(() -> new RuntimeException("유저를 찾을 수 없습니다."));
//    }
}
