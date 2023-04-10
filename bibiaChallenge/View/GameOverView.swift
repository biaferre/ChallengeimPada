//
//  GameOverView.swift
//  bibiaChallenge
//
//  Created by LoreVilaca on 06/04/23.
//

import Foundation
import SwiftUI

struct GameOverView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            Text ("ELES TE PEGARAM")
                .font(.custom("Pixellari", size: 37.58))
                .foregroundColor(Color("red"))       
        }
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView()
    }
}
