//
//  ButtonView.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/23/22.
//

import SwiftUI

struct ButtonView: View {
    var color: Color = Color.theme.textField
    var imageName: String = "ic_chat"
    var labelText: String = "Chat"
    var textColor: Color = Color.theme.chat
    var action: () -> () = {}
    
    
    
    var body: some View {
        Button {
            self.action()
        } label: {
            HStack(spacing: 10) {
                Image(imageName)
                    .padding(.leading)
                Text(self.labelText)
                Spacer()
            }
            .font(.system(size: Constants.FONT_SIZE, weight: .semibold))
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: Constants.RECT_HEIGHT)
        .background(self.color)
        .opacity(Constants.RECT_OPACITY)
        .foregroundColor(self.textColor)
        .cornerRadius(Constants.RECT_CORNERS)
        

    }
}








extension ButtonView {
    struct Constants {
        // Body
        static let RECT_HEIGHT: CGFloat = 60.0
        static let RECT_CORNERS: CGFloat = 10
        static let RECT_OPACITY: CGFloat = 0.85
        
        // Content
        static let FONT_SIZE: CGFloat = 16
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
        .previewLayout(.sizeThatFits)
    }
}
