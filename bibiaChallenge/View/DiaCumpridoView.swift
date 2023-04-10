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
            Image ("Chat wallpaper")
                .resizable()
            BlueCircle()
                .padding(.leading, 186)
                .padding(.trailing, 174)
            
            VStack (spacing: -40){
                Image("melo-smiling")
                    .resizable()
                    .frame(width: 214.93, height: 255)
                    .rotationEffect(.degrees(17.29))
                    .offset(x: -320)
                Image("melo-crazy2")
                    .resizable()
                    .offset(x: 330)
                    .frame(width: 171.06, height: 217.21)
                Image("melo-happy")
                    .resizable()
                    .offset(x: -280)
                    .frame(width: 183.82, height: 212.33)

                    
                
            }
        }
        .ignoresSafeArea()
    }
}

struct BlueCircle: View {
    var body: some View{
        Circle().foregroundColor(Color("blue"))
        VStack (spacing: 33.61) {
            VStack (spacing: 12){
                Image("ebaaa!")
                Text("Você completou um \n dia de compras :)")
                    .font(.custom("Sora-SemiBold", size: 36))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
            }
            .foregroundColor(Color.white)
            .padding(.top, 50)
            
            //Alterar para componente do botão criado
            NavigationLink(destination: ChatView(), label: {
                mainButton(text: "Continuar")
            })
        }
    }
}

struct DiaCumpridoView_Previews: PreviewProvider {
    static var previews: some View {
        DiaCumpridoView()
    }
}
