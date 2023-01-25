//
//  DailyScrum.swift
//  ScrumTimer
//
//  Created by Max Kiselyov on 1/23/23.
//

import SwiftUI

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
            self.id = id
            self.title = title
            self.attendees = attendees
            self.lengthInMinutes = lengthInMinutes
            self.theme = theme
        }
}

// TODO: Понять и простить 
extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy),
        DailyScrum(title: "Hueplety", attendees: ["Alex", "Zhan", "Vovakorova", "Lysyi Dolboyob", "Sarah"], lengthInMinutes: 5, theme: .huinaEbana)
    ]
}
