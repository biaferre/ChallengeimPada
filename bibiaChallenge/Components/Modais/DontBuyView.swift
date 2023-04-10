//
//  DontBuyView.swift
//  bibiaChallenge
//
//  Created by Lucas Migge de Barros on 05/04/23.
//

import SwiftUI

struct DontBuyView: View {
    @Environment(\.dismiss) private var dismiss

    var actionForPetButton: () -> Void = {}
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 562, height: 675)
            
            VStack(spacing: 16) {
                VStack(spacing: 25) {
                    
                    // X button
                    HStack{
                        
                        Button {
                            dismiss()

                        } label: {
                            Image("wrong")
                        }
                        Spacer()
                        
                    }
                    
                    Text("nao compre ainda!")
                        .font(.custom("daydream", size: 38.48)).fontWeight(.thin).multilineTextAlignment(.center)
                    
                }
                
                Spacer()

                // text and melo
                HStack{
                    
                    // text
                    VStack(alignment: .leading) {
                        Text("Todos os nossos produtos são")
                            .font(.custom("Pixellari", size: 32))
                            .multilineTextAlignment(.leading)

                        
                        HStack{
                            Text("GRATIS")
                                .font(.custom("Pixellari", size: 32))
                                .foregroundColor(.orange)
                            Text(", mas")
                                .font(.custom("Pixellari", size: 28))
                        }
                        
                        
                        Text("para fazer as compras você deve antes jogar com seu")
                            .font(.custom("Pixellari", size: 28))
                            .multilineTextAlignment(.leading)
                        
                        
                        // Pet!
                        HStack() {
                            Text("PET")
                                .font(.custom("Pixellari", size: 28))
                                .foregroundColor(.red)
                            
                            Text("!")
                                .font(.custom("Pixellari", size: 28))
                        }
  
                    }
                                     
                    // image
                    Image("melo-smiling")
                        .resizable()
                        .rotationEffect(Angle(degrees: 320), anchor: .center)
                                    
                }
                
                Spacer()
                
                Button {} label: {
                    Image("botao Pet")
                }
            }
            .padding(.horizontal, 28)
            .padding(.bottom, 45)
            .padding(.top, 27)
            
        }

        .frame(width: 562, height: 675)
    }
}

struct DontBuyView_Previews: PreviewProvider {
    static var previews: some View {
        DontBuyView(actionForPetButton: {})
    }
}
