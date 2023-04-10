//
//  Mensagem.swift
//  ChallengeImPada
//
//  Created by Bof on 31/03/23.
//

import Foundation
import SwiftUI

struct Message: Identifiable {
        var id = UUID()
        let text: String
        var isUser: Bool
}
