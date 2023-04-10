//
//  MoodView.swift
//  bibiaChallenge
//
//  Created by Bof on 10/04/23.
//

import Foundation
import SwiftUI
// enum para alterar mood do sprite
enum MoodView: View {
    case happy, smiling, sad, angry, crazy1, crazy2
    
    var body: some View {
        switch self {
        case .happy:
            return Image("melo-happy")
            
        case .smiling:
            return Image("melo-smiling")
            
        case .sad:
            return Image("melo-sad")
            
        case .angry:
            return Image("melo-angry")
        
        case .crazy1:
            return Image("melo-crazy1")
        
        case .crazy2:
            return Image("melo-crazy2")
        }
    }
}
