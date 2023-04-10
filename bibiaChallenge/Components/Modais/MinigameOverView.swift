//
//  MinigameOverView.swift
//  bibiaChallenge
//
//  Created by Lucas Migge de Barros on 05/04/23.5
//

import SwiftUI

struct MinigameOverView: View {
    
    let foodCount: Int
    
    var actionForRepetirButton: () -> Void
    var actionForTerminarButton: () -> Void
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
            
            VStack(spacing: 32) {
                
                VStack(spacing: 5) {
                    
                    Text("GAME OVER")
                        .font(.custom("daydream", size: 46.5)).fontWeight(.thin)
                      
                    HStack {
                        Text("voce pegou")
                        
                        Text("\(foodCount)")
                            .foregroundColor(.red)
                        
                        Text("comidas!")
                    }
                    .font(.custom("daydream", size: 24)).fontWeight(.thin)
                    
                }
                
                Spacer()
                
                HStack{
                    
                    Image("melos")
                    
                    HStack(spacing: -30) {
                        Image("fruits apple")
                            .offset(y: -50)
                        Image("fruits orange")
                            .offset(y: 10)
                        
                    }
                }
                
                
                Spacer()
                
                HStack (spacing: 32){
                    
                    Button {
                        
                        actionForRepetirButton()
                    } label: {
                        Image("botao Repetir")
                    }
                    
                    
                    Button {
                        actionForTerminarButton()
                    } label: {
                        Image("botao Terminar")
                    }
                    
                }
                

            }
            .padding(.horizontal, 28)
            .padding(.bottom, 47)
            .padding(.top, 90)

        }
        .frame(width: 562, height: 765)
    }
}

struct MinigameOverView_Previews: PreviewProvider {
    static var previews: some View {
        MinigameOverView(foodCount: 5, actionForRepetirButton: {}, actionForTerminarButton: {})
    }
}
