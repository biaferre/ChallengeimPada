//
//  bibiaChallengeApp.swift
//  bibiaChallenge
//
//  Created by Lucas Migge de Barros on 05/04/23.
//

import SwiftUI

@main
struct bibiaChallengeApp: App {
    let scoreManager = ScoreManager()
    let gameSettings = ActivityManager()
    let cartManager = CartManager()
    let chatManager = ChatManager()
    
    var body: some Scene {
        WindowGroup {
            InitialView()
                .environmentObject(scoreManager)
                .environmentObject(gameSettings)
                .environmentObject(cartManager)
                .environmentObject(chatManager)
        }
    }
}
