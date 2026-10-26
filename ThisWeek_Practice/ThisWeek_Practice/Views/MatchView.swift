//
//  MatchView.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/22/26.
//

import SwiftUI

struct MatchView: View {
    @State private var hasApplied = false
    
    var body: some View {
        if hasApplied {
            MatchedView()
        } else {
            ApplicationView(hasApplied: $hasApplied)
        }
    }
}

#Preview {
    MatchView()
}
