//
//  InitialScreenView.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct InitialView: View {
    @EnvironmentObject var scoreManager: ScoreManager // guarda score de comidas
    @EnvironmentObject var gameSettings: ActivityManager
    
    var body: some View {
                NavigationStack {
                    VStack (spacing: 12) {
                        Image("melo-smiling")
                            .resizable()
                            .frame(width: 346, height: 410)
                        VStack (spacing: 78) {
                            Image("header")
                            NavigationLink {
                                HomeView()
                            } label: {
                                mainButton(text: "Novo jogo")
                            }
                        }
                    }.background(Image("Start Wallpaper"))
                }.navigationBarBackButtonHidden(true)
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
