//
//  SettingsView.swift
//  bibiaChallenge
//
//  Created by Lucas Migge de Barros on 10/04/23.
//

import SwiftUI

struct SettingsView: View {
    
    // quem deve ser responsavel pela info do slider?
    @State var sliderValue = 0.5
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    
                    Button {
                        dismiss()
                        
                    } label: {
                        Image("wrong")
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top, 33)
            .padding(.leading, 20)
            
            VStack(spacing: 44) {
                Text("AJUSTES")
                    .font(.custom("VCR OSD Mono", size: 28))
                    .fontWeight(.semibold)
                
            
                HStack(spacing: 200) {
                    // slider
                    VStack {
                        Text("Som & Música")
                            .font(.custom("Pixellari", size: 24))
                            .fontWeight(.semibold)
                        
                        Slider(value: $sliderValue)
                            .tint(.black)
                    }
                    
                    // other buttons
                    VStack {
                        Button {} label: {
                            mainButton(text: "reiniciar")
                        }

                    }
                }
            }
            .padding(.top, 17)
            .padding(.bottom, 39)
            .padding(.horizontal, 148)
        }
        .frame(width: 1024, height: 254)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
