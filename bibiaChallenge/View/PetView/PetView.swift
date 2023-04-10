//
//  PetView.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

// view
struct PetView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var scoreManager: ScoreManager // guarda score de comidas


    @EnvironmentObject var gameSettings: GameSettings
    var meloMood: MoodView // dps vai ser binding
    
    var body: some View {
        let formulas = [
            PetActionFormula(action: {}, color: 0, text: "Food \n \(scoreManager.score)"),
            PetActionFormula(action: {}, color: 1, text: "Play!"),
            PetActionFormula(action: {gameSettings.isTalkEnabled.toggle()}, color: 2, text: "Talk!")
        ]
        
         return ZStack {
            VStack {
                HStack(spacing: 90) {
                    homeBtn(dismiss: dismiss, imageName: "backhome icon")
                    Image("Pet header")
                    Spacer()
                }
                .frame(width: 704.62)
                .padding(.trailing, 120)
                .padding(.top, 80)
                Spacer()
                HStack(spacing: 102) {
                    PetActionButton(isActive: true, destination: ChatView(), formula: formulas[0])
                    PetActionButton(isActive: gameSettings.isPlayEnabled, destination: ChatView(), formula: formulas[1])
                    PetActionButton(isActive: gameSettings.isTalkEnabled, destination: ChatView(), formula: formulas[2])
                }
                
            }.background(
                Image("Pet wallpaper")
                    .scaledToFit()
            )
            meloMood
        }
    }

}

//struct PetView_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        PetView(meloMood: .happy)
//    }
//}
