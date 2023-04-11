//
//  Mensagem.swift
//  ChallengeImPada
//
//  Created by Bof on 31/03/23.
//

import Foundation
import SwiftUI

struct Message: Identifiable, Equatable {
        var id = UUID()
        let text: String
        var isUser: Bool

    static func ==(lhs: Message, rhs: Message) -> Bool{
        return lhs.id == rhs.id && lhs.text == rhs.text && lhs.isUser == rhs.isUser
    }
}
