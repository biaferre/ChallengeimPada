//
//  CartView.swift
//  bibiaChallenge
//
//  Created by mvbsa on 07/04/23.
//

import Foundation
import SwiftUI

struct CartView: View {
    let column = [GridItem()]

    var body: some View {
        VStack(spacing: 56) {
            Image("carrinho-titulo")
            VStack {
                LazyVGrid(columns: column, spacing: 32) {
                    ForEach(0..<ItensArray.cartItens.count) { index in
                        CartCardView(
                            picture: ItensArray.cartItens[index].picture,
                            nameLabel: ItensArray.cartItens[index].itemName,
                            priceLabel: ItensArray.cartItens[index].price
                        )
                    }
                }
                
            }
        }
    }
}

struct CartView_Preview: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
