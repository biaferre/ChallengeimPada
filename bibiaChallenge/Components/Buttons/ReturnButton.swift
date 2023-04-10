//
//  homeBtn.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct ReturnButton: View {
    let dismiss: DismissAction
    var imageName: String
    
    var body: some View {
        Button(action: {dismiss()}, label: {
            Image(imageName).frame(width: 131, height: 131)})
    }
}
