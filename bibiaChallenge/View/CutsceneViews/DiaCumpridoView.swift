//
//  File.swift
//  bibiaChallenge
//
//  Created by LoreVilaca on 05/04/23.
//

import SwiftUI

struct DiaCumpridoView: View {
    var body: some View {
        ZStack {
            Image ("SmilesBackground")
                .resizable()
            BlueCircle()
                .padding(.leading, 186)
                .padding(.trailing, 174)
            
            VStack (spacing: -40){
                Image("melos")
                    .rotationEffect(.degrees(17.29))
                    .offset(x: -320)
                Image("melos1")
                    .offset(x: 330)
                Image("melos2")
                    .offset(x: -280)
                    
                
            }
        }
        .ignoresSafeArea()
    }
}

struct BlueCircle: View {
    var body: some View{
        Circle().foregroundColor(Color("blue"))
        VStack (spacing: 33.61) {
            VStack (spacing: 0){
                Image("ebaaa!")
                Text("Você completou um \n dia de compras :)")
                    .font(.custom("Sora-SemiBold", size: 44))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.top, 50)
            
            //Alterar para componente do botão criado
            Button{
            } label: {
                Text("CONTINUAR")
            }
            .frame(width: 343, height: 91)
            .background(Color("orange"))
        }
        .foregroundColor(Color.white)
    }
}

struct DiaCumpridoView_Previews: PreviewProvider {
    static var previews: some View {
        DiaCumpridoView()
    }
}
