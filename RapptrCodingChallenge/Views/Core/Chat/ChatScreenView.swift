//
//  ChatScreenView.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/24/22.
//

import Foundation
import SwiftUI


struct ChatScreenView: View {
    
    @EnvironmentObject var chatViewModel: ChatViewModel
    
    var body: some View {
        List {
            ForEach(chatViewModel.allMessages, id: \.self) { message in
                Text(message.username)
            }
        }
        .listStyle(PlainListStyle())
    }
}


struct ChatScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreenView()
    }
}
