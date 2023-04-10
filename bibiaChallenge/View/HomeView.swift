//
//  TestHome.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @EnvironmentObject var scoreManager: ScoreManager // guarda score de comidas
    @EnvironmentObject var gameSettings: ActivityManager
    @EnvironmentObject var cartManager: CartManager

    
    @State var showDontBuySheet = false
//    @State var showSettings = false
    
    var body: some View {
        let itensArray = ItensArray()
        
        NavigationStack {
            ScrollView() {
                VStack(spacing: 80) {
                    HStack(alignment: .center, spacing: 280) {
                        Image("header")
                            .resizable()
                            .frame(width: 346, height: 110)
                        NavigationLink(destination: CartView(), label: {
                                HomeScreenButton(imageName: "cart btn")
                            })
                        }
                    VStack(alignment: .leading, spacing: 48) {
                        NavigationLink(destination: PetView(gameSettings: _gameSettings, meloMood: .smiling)) {
                            Image("pet bar")
                        }
                        VStack(alignment: .leading, spacing: 24) {
                            Text("Sugestões do pet")
                                .font(
                                    .custom("Sora", size: 26))
                            HStack {
                                ForEach(itensArray.suggestedItens) { item in

                                        Image(item.banner ?? "")
                                            .onTapGesture {
                                                if gameSettings.isBuyingEnabled {
                                                    cartManager.itensAdded.append(item)
                                            
                                                }
                                                else {
                                                    showDontBuySheet.toggle()
                                                }
                                    }
                                }
                            }
                        }
                        VStack(alignment: .leading, spacing: 24) {
                            VStack(alignment: .leading) {
                                Text("Top produtos")
                                    .font(
                                        .custom("Sora", size: 26))
                                Text("com base no seu perfil")
                                    .font(
                                        .custom("Sora", size: 16))
                                
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(alignment: .top, spacing: 20) {
                                    ForEach(itensArray.topItens) { item in
                                        VStack(alignment: .leading, spacing: 12) {
                                            Image(item.picture)
                                                .onTapGesture {
                                                    if gameSettings.isBuyingEnabled {
                                                        cartManager.itensAdded.append(item)
                                                
                                                    }
                                                    else {
                                                        showDontBuySheet.toggle()
                                                    }
                                                }
                                            VStack(alignment: .leading, spacing: 8) {
                                                Text(item.itemName)
                                                    .font(
                                                        .custom("VCR OSD Mono", size: 24))
                                                Text(item.description)
                                                    .lineLimit(3)
                                                    .font(
                                                        .custom("Sora", size: 16))
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }.offset(x: 78)
                }.sheet(isPresented: $showDontBuySheet) {
                    DontBuyView()
                }
            }
        }
    }
}

struct TestHome_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
