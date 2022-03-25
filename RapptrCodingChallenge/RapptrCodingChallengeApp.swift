//
//  RapptrCodingChallengeApp.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/23/22.
//

import SwiftUI

@main
struct RapptrCodingChallengeApp: App {
    
    @StateObject var mainViewModel = HomeViewModel()
    @StateObject var chatViewModel = ChatViewModel()
    
    
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(Color.theme.button)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color.theme.general)]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.general)]
      
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      
      UINavigationBar.appearance().tintColor = UIColor(Color.theme.general)
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeScreenView()
            }
            .navigationViewStyle(.stack)
            .environmentObject(mainViewModel)
            .environmentObject(chatViewModel)
        }
        
    }
}
