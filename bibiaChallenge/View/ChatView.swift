//
//  ChatView.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct ChatView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack(alignment: .centerFirstTextBaseline) {
            ScrollView {
                VStack {
                    MessageView(message: Message(text: "oii"), isUser: false)
                    MessageView(message: Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedo eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation "), isUser: true)
                }
            }
            VStack {
                HStack {
                    ReturnButton(dismiss: dismiss, imageName: "arrow-icon")
                    Image("chat-header")
                }.padding(.trailing, 200)
                Spacer()
                Button(action: {}, label: {
                    ZStack {
                        Rectangle()
                            .frame(height: 252)
                        Rectangle()
                            .frame(width: 778, height: 76)
                            .foregroundColor(.white)
                            .cornerRadius(88)
                        Text("O QUE VOCÊ TEM A DIZER?")
                            .font(.custom("VCR OSD Mono", size: 32))
                            .multilineTextAlignment(.leading)
                    }
                }).ignoresSafeArea()
                    .offset(y: 24)
            }
            
        }.background(Image("Chat wallpaper"))
            .navigationBarBackButtonHidden(true)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
