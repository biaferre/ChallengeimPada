//
//  TokTokTransitionView.swift
//  bibiaChallenge
//
//  Created by LoreVilaca on 06/04/23.
//

import Foundation
import SwiftUI

struct TokTokTransitionView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            Text ("TOC\nTOC.")
                .font(.custom("daydream", size: 46))
                .foregroundColor(Color.white)
                .offset(x: -33)
        }
    }
}

struct TokTokTransitionView_Preview: PreviewProvider {
    static var previews: some View {
        TokTokTransitionView()
    }
}
