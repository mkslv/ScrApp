//
//  TrailingIconLabelStyle.swift
//  ScrumTimer
//
//  Created by Max Kiselyov on 1/23/23.
//


// Тут пример как создать свой стиль Label
import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    // TODO: почему здесь функция
    // The system calls this method for each Label instance in a view hierarchy where this style is the current label style.
    func makeBody(configuration: Configuration) -> some View {
            HStack {
                // The configuration parameter is a LabelStyleConfiguration, which contains the icon and title views. These views represent the label’s image and label text.
                configuration.title
                configuration.icon
            }
        }
    }

// Дальше выебоны

extension LabelStyle where Self == TrailingIconLabelStyle { // Тут старое название
    // Because you defined the label style as a static property, you can call it using leading-dot syntax, which makes your code more readable.
    // Перевожу на понятный: Мы должны переименовать наш длинный название (да я русский) в короткое
    static var trailingIcon: Self { Self() } //тут новое название
}

