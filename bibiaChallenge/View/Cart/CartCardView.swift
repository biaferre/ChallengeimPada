//
//  CartCardView.swift
//  bibiaChallenge
//
//  Created by mvbsa on 08/04/23.
//

import Foundation
import SwiftUI

struct CartCardView: View {
    var picture: Image
    var nameLabel: String
    var priceLabel: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("light-gray"))
            HStack(spacing: 36) {
                Image("item-book")
                VStack(spacing: 8) {
                    Text(nameLabel)
                        .font(.custom("daydream", size: 24))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(priceLabel)
                        .font(.custom("Pixellari", size: 44))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("por HCoins")
                        .font(.custom("Pixellari", size: 32))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .frame(width: 877, height: 242)
        
    }
    
}

//struct CartCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartCardView(picture: Image("item-book"), nameLabel: "Oi", priceLabel: "Tchau")
//    }
//}
