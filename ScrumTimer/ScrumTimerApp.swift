//
//  ScrumTimerApp.swift
//  ScrumTimer
//
//  Created by Max Kiselyov on 1/22/23.
//

import SwiftUI

@main
struct ScrumTimerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
