//
//  Area.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/22/26.
//

enum Area: CaseIterable {
    case gangnam, hongdae, sinchon, kondae
    
    var label: String {
        switch self {
        case .gangnam: return "강남"
        case .hongdae: return "홍대"
        case .sinchon: return "신촌"
        case .kondae: return "건대"
        }
    }
}
