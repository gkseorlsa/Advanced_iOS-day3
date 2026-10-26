//
//  MatchedView.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/22/26.
//

import SwiftUI

struct MatchedView: View {
    @State private var isBlurred = true
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileCard(isBlurred: $isBlurred)
            }
            .padding()
        }
    }
}

#Preview {
    MatchedView()
}
