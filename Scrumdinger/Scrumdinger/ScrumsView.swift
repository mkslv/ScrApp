//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Max Kiselyov on 2/8/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                // сейчас обращаемся к создаваемому элементу scrum
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                        
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar{
            Button(action: {}){
                Image(systemName: "plus")
            }
            .accessibilityLabel("New scrum")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
