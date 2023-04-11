//
//  decisionView.swift
//  bibiaChallenge
//
//  Created by Bof on 11/04/23.
//

import Foundation
import SwiftUI

struct DecisionView: View {
    
    var body: some View {
        VStack {
            Text("O QUE VOCÊ TEM A DIZER?")
                .font(.custom("Pixellari", size: 32))
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .padding()
            HStack {
                Spacer()
                decisionButton(number: 1, choiceText: "oiii")
                    .padding(.bottom)
                Spacer()
                decisionButton(number: 2, choiceText: "xauu")
                    .padding(.bottom)

                Spacer()
            }
        }.background(Color.black)
            .frame(width: 800, height: 400)
    }
}

struct decisionButton: View {
    @EnvironmentObject var c: ChatManager

    var number: Int
    var choiceText: String
    
    var body: some View {
        Button(action: {
            c.hasAnswered = true
            c.choiceActive.toggle()
            c.currentAnswer = Message(text: choiceText, isUser: true)
            c.dialoguePhase += 1
        }, label: {
            VStack {
                Text("\(number)")
                    .font(.custom("Daydream", size: 60))
                Text(choiceText)
                    .font(.custom("Pixellari", size: 40))
            }.foregroundColor(.white)
                .padding()
        })
    }
}

struct DecisionView_Previews: PreviewProvider {
    static var previews: some View {
        DecisionView()
    }
}
