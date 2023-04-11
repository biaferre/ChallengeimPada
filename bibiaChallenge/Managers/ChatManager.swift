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
    
    @Published var choiceActive: Bool = false
    
    @Published var dialoguePhase: Int = 0
    
    @Published var messageCounter = 0
    
    @Published var currentAnswer: Message?
    
    @Published var hasAnswered: Bool = false

    
    func updateManager() {
        if !(self.dialoguePhase >= (self.chatArray.count - 1)) {
            messageCounter = 0
        }
    }
    
    let chatArray: [[Message]] = [
        // first array
        [
            Message(text: "olá, desconhecido! bem vindo ao 1daybuy!", isUser: false),
            Message(text: "meu nome é MELO, e eu sou e para sempre serei seu pet virtual da loja.", isUser: false),
            Message(text: "estava esperando por você! suponho que tenha muitas perguntas…", isUser: false)
        ],
        // second array
        [
            Message(text: "sabia que você estaria!", isUser: false),
            Message(text: "eu estou tambem", isUser: false),
        ],
    ]

}
