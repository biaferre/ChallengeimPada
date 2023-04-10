//
//  ButtonsComponent.swift
//  bibia
//
//  Created by sml on 06/04/23.
//

import SwiftUI

extension DeliveryView {
    var buttons: some View {
        HStack {
            Button(action: {dialoguePage -= 1}, label: {
                HStack {Image("left-arrow")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .padding(.trailing, 6)
                    Text("VOLTAR")
                        .font(.custom("daydream", size: 32))
                        .foregroundColor(.white)
                    .fontWeight(.thin)}})
            .opacity(dialoguePage == 0 ? 0.0 : 1.0)
            Spacer()
            Button(action: {dialoguePage += 1}, label: {
                HStack {
                    Text("PROXIMO")
                        .font(.custom("daydream", size: 32))
                        .foregroundColor(.white)
                    .fontWeight(.thin)
                    Image("right-arrow")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .padding(.trailing, 6)
                }})
            .opacity(dialoguePage == 35 ? 0.0 : 1.0)

        }.padding(.bottom, 10)
    }
    
}
