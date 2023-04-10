//
//  ChatManager.swift
//  bibiaChallenge
//
//  Created by Bof on 10/04/23.
//

import Foundation
import SwiftUI

class ChatManager: ObservableObject {
    @Published var messageHistory: [Message] = []
    
    @Published var dialoguePhase: Int = 0
    
    func updateManager() {
        for item in chatArray[dialoguePhase] {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.00) {
                print(item.text)
            }
        }
    }
    
    let chatArray: [[Message]] = [
        // first array
        [
            Message(text: "MELO: olá, desconhecido! bem vindo ao 1daybuy!", isUser: false),
            Message(text: "MELO: meu nome é MELO, e eu sou e para sempre serei seu pet virtual da loja.", isUser: false),
            Message(text: "MELO: estava esperando por você! suponho que tenha muitas perguntas…", isUser: false)
        ],
        // second array
        [
            Message(text: "MELO: olá, desconhecido! bem vindo ao 1daybuy!", isUser: false),
            Message(text: "MELO: meu nome é MELO, e eu sou e para sempre serei seu pet virtual da loja.", isUser: false),
            Message(text: "MELO: estava esperando por você! suponho que tenha muitas perguntas…", isUser: false)
        ],
    ]
}
