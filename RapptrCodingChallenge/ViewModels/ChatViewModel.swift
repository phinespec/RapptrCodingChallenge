//
//  ChatViewModel.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/24/22.
//

import Foundation


class ChatViewModel: ObservableObject {
    
    @Published var allMessages: [Message] = []
    
    let chatDataService = ChatDataService.shared
    
    init() {
        fetchChatMessages()
    }
    
    func fetchChatMessages() {
        chatDataService.fetchChatData { [weak self] result in
            switch result {
            case .success(let response):
                self?.allMessages = response.data
            case .failure(let error):
                print("Error fetching chat messages! \(error)")
            }
        }
    }
}
