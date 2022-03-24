//
//  HomeScreenView.swift
//  RapptrCodingChallenge
//
//  Created by phinespec on 3/23/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
           Image("bg_home_menu")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.bottom)
            
            VStack(spacing: 20) {
                Group {
                    ButtonView(imageName: "ic_chat", labelText: "Chat")
                    ButtonView(imageName: "ic_login", labelText: "Login")
                    ButtonView(imageName: "ic_animation", labelText: "Animation")
                }
                .padding(.horizontal, 40)
                
            }
        }
        .navigationTitle("Coding Tasks")
        .navigationBarTitleDisplayMode(.inline)
    }
}

extension HomeScreenView {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeScreenView()
        }
        
    }
}
