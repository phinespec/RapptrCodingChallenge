//
//  HomeScreenView.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/23/22.
//

import SwiftUI

struct HomeScreenView: View {
    
    @State private var navIsActive: Bool = false
    @State private var destination: Destination?
    
    var body: some View {
        ZStack {
            NavigationLink(isActive: $navIsActive) {
                if destination == .chat {
                    ChatScreenView()
                }
                else if destination == .login {
                    LoginScreenView()
                }
                else {
                    AnimationScreenView()
                }
            } label: {
                EmptyView()
            }

            background
            buttons
        }
        .navigationTitle("Coding Tasks")
        .navigationBarTitleDisplayMode(.inline)
    }
}

extension HomeScreenView {
    
    var background: some View {
        Image("bg_home_menu")
             .resizable()
             .scaledToFill()
             .edgesIgnoringSafeArea(.bottom)
    }
    
    var buttons: some View {
        VStack(spacing: 20) {
            Group {
                
                ButtonView(imageName: "ic_chat", labelText: "Chat") { navIsActive = true; destination = .chat }
                ButtonView(imageName: "ic_login", labelText: "Login") { navIsActive = true; destination = .login }
                ButtonView(imageName: "ic_animation", labelText: "Animation") { navIsActive = true; destination = .animation }
            }
            .padding(.horizontal, 40)
            
        }
    }
    
    enum Destination {
        case chat
        case login
        case animation
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeScreenView()
        }
        
    }
}
