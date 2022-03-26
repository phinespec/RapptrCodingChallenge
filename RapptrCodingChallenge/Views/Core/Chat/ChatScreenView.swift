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
        ZStack {
            List {
                ForEach(chatViewModel.allMessages) { message in
                    ChatListItemView(message: message)
                        .listRowSeparator(.hidden)
                }
                .navigationTitle("Chat")
            }
            .listStyle(InsetListStyle())
        }
        .background(Color.theme.background)
        .padding(.vertical)
    }
}


struct ChatScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreenView()
            .environmentObject(ChatViewModel())
    }
}
