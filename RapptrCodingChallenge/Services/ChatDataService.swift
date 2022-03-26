//
//  ChatDataService.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/24/22.
//

import Foundation


class ChatDataService {
    
    static let shared = ChatDataService()
    
    private init() {}
    
    
    func fetchChatData(completion: @escaping (Result<Response, FetchingError>) -> Void) {
        URLSession.shared.dataTask(with: URL(string: Constants.CHAT_DATA_ENDPOINT)!) { data, _, _ in
            // Check if data is nil
            if let jsonData = data {
                do {
                    // Try and decode the json if we have data
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(Response.self, from: jsonData)
                    completion(.success(result))
                } catch {
                    completion(.failure(.unableToDecode))
                }
            } else {
                // No data
                completion(.failure(.noDataAvailable))
            }
        }.resume()
        
        
    }
    
    enum FetchingError: LocalizedError {
        case noDataAvailable
        case unableToDecode
        case badResponseCode
    }
}
