//
//  DeliveryView.swift
//  bibia
//
//  Created by sml on 05/04/23.
//

import SwiftUI

struct DeliveryView: View {
    let fulano = "Fulano: "
    let image = "delivery-background"

    @State var text: String = ""
    @State var finalText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation"
    
    @State var size: CGSize = .zero

    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .frame(minWidth:UIScreen.main.bounds.width, minHeight: UIScreen.main.bounds.height)
            dialogue
        }.ignoresSafeArea()
    }

}

struct DeliveryView_Previews: PreviewProvider {

    static var previews: some View {
        DeliveryView()
    }
}



