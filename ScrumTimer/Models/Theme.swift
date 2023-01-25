//
//  Theme.swift
//  ScrumTimer
//
//  Created by Max Kiselyov on 1/23/23.
//

import SwiftUI


// TODO: Повторить энамы
enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    case huinaEbana
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow, .huinaEbana: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
           Color(rawValue)
    }
}
