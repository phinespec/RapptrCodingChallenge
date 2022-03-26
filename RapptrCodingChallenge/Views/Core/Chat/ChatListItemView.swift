//
//  ChatListItemView.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/25/22.
//

import SwiftUI

struct ChatListItemView: View {
    
    let message: Message
    
    var body: some View {
        ZStack {
            HStack {
                avatarImage
                chatBubble
            }
        }
        .frame(maxHeight: .infinity)
        .frame(width: Constants.CHAT_ITEM_WIDTH)
    }
}




struct ChatListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListItemView(message: Message(testName: "Blah", withTestMessage: "BLAHBLAHBLAH"))
            .previewLayout(.sizeThatFits)
    }
}


extension ChatListItemView {
    
    private var avatarImage: some View {
        VStack {
            AsyncImage(url: URL(string: message.avatarURL)) { returnedImage in
                returnedImage
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            Spacer()
        }
    }
    
    
    private var chatBubble: some View {
        VStack(alignment: .leading) {
            Text(message.username).font(.system(size: 13, weight: .semibold))
            Text(message.text).font(.system(size: 15, weight: .regular))
                .padding(8)
                .background(.blue.opacity(0.25))
                .cornerRadius(Constants.CHAT_ITEM_CORNERS)
        }
    }
    
    struct Constants {
        static let CHAT_ITEM_HEIGHT: CGFloat = 120
        static let CHAT_ITEM_WIDTH: CGFloat = UIScreen.main.bounds.width * 0.8
        static let CHAT_ITEM_CORNERS: CGFloat = 15
    }
}
