//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Max Kiselyov on 2/8/23.
//

import SwiftUI

// Next, you’ll create a label style to stack the scrum length and clock icon horizontally. With the LabelStyle protocol, you can create a consistent design throughout your app by reusing the same label style for several views.

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View{
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

// Add an extension on LabelStyle that creates a static property named trailingIcon.

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self()}
}
