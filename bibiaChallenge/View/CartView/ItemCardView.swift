//
//  ItemCardView.swift
//  bibiaChallenge
//
//  Created by Bof on 10/04/23.
//

import Foundation
import SwiftUI

struct ItemCardView: View {
    var picture: String
    var nameLabel: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.gray)
                .opacity(0.12)
            HStack(spacing: 36) {
                Image(picture)
                    .resizable(resizingMode: .tile)
                    .frame(width: 242, height: 242)
                VStack(spacing: 8) {
                    Text(nameLabel)
                        .font(.custom("daydream", size: 24))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("$: de graça")
                        .font(.custom("VCR OSD Mono", size: 44))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("por HCoins")
                        .font(.custom("VCR OSD Mono", size: 32))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .frame(width: 877, height: 242)
        
    }
    
}

struct ItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardView(picture: "teddy", nameLabel: "Ursinho NAO Assassino")
    }
}
