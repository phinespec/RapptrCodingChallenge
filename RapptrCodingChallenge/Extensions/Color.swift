//
//  Color.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/24/22.
//

import Foundation
import SwiftUI


extension Color {
    
    static let theme = ColorTheme()
}


struct ColorTheme {
    let button = Color("ButtonBlue")
    let chat = Color("ChatText")
    let general = Color("GeneralText")
    let placeholder = Color("PlaceholderText")
    let background = Color("UIBackground")
    let textField = Color("SemiTransparent")
}
