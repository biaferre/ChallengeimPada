//
//  CartCardView.swift
//  bibiaChallenge
//
//  Created by mvbsa on 08/04/23.
//

import Foundation
import SwiftUI

struct CartView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var cartManager: CartManager


    var body: some View {
        NavigationStack {
                VStack(spacing: 52.66) {
                    HStack(spacing: 228) {
                        ReturnButton(dismiss: dismiss, imageName: "arrow-icon")
                        Image("carrinho-header")
                        Spacer()
                    }
                    ScrollView {
                        VStack(spacing: 32) {
                            ForEach(cartManager.itensAdded) { item in
                                ItemCardView(picture: item.picture, nameLabel: item.itemName)
                            }
                        }
                    }
                    ZStack {
                        Image("total-banner")
                            .offset(y: 20)
                        NavigationLink(destination: TokTokTransitionView(), label: {
                            mainButton(text: "Comprar")
                        }).offset(x: 220, y: 40)
                    }
                }
            
        }
    }
}
struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
