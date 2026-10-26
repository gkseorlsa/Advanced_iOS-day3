//
//  UserViewModel.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/26/26.
//

import SwiftUI

@Observable
class UserViewModel {
    private(set) var currentUser: User? = nil
    
    var isLoggedIn: Bool {
        currentUser != nil
    }
    
    func register(
        nickname: String,
        password: String,
        age: Int,
        gender: Gender,
        mbti: String,
        job: String,
        hobby: String,
        image: UIImage
    ) {
        UserApi.register(
            nickname: nickname,
            password: password,
            age: age,
            gender: gender.rawValue,
            mbti: mbti,
            job: job,
            hobby: hobby,
            image: image
        ) { user in
            self.currentUser = user     // API 성공 시 currentUser에 저장 -> 자동으로 메인 화면으로 전환
        }
    }
    
    func logout() {
        currentUser = nil
    }
    
    func login(nickname: String, password: String) {
        UserApi.login(
            nickname: nickname,
            password: password
        ) { user in
            self.currentUser = user
        }
    }
}
