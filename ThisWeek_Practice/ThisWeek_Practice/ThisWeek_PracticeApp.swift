//
//  ThisWeek_PracticeApp.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/22/26.
//

import SwiftUI

@main
struct ThisWeek_PracticeApp: App {
    @State private var userVM = UserViewModel()
    
    @State private var showLogin = true
    
    var body: some Scene {
        WindowGroup {
            if userVM.isLoggedIn {
                MainView()
                    .tint(.pink)
            } else {
                if showLogin {
                    LoginView(showLogin: $showLogin)
                } else {
                    RegisterView(showLogin: $showLogin)
                }
            }
        }
        .environment(userVM)
    }
}
