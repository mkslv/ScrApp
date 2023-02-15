//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Max Kiselyov on 2/15/23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List{
            Section(header: Text("Meeting info")) {
                Label("Start meeting", systemImage: "timer") //  По молчанию VoiceOver читает тайтл этого лэйбла. Если ты хочешь чтобы VoiceOver читал больше деталей, замени дефолтный текст с помощью добавления accesibilityLabel
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(6)
                }
                .accessibilityElement(children: .combine)
                
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
