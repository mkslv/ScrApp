//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Max Kiselyov on 2/6/23.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: Set<String>
    var lengthInMinutes: Int
    var theme: Theme

    init(id: UUID = UUID(), title: String, attendees: Set<String>, lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}



// MARK: данные для примера
// TODO: зачем extention и зачем static?
extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        //DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy),
        //DailyScrum(title: "Drochery", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 9, theme: .navy),
        //DailyScrum(title: "Love Dev", attendees: ["Artyoma", "Max"], lengthInMinutes: 50, theme: .tan),
        DailyScrum(title: "System Analytics", attendees: ["Max", "Konst", "Alex", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 15, theme: .sky)
    ]
}
