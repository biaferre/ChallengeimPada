//
//  InitialButton.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct mainButton: View {
    var text: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 376.04, height: 84)
            Text("\(text)")
                .foregroundColor(.white)
                .font(
                    .custom("daydream", size: 24))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
        }
    }
}
