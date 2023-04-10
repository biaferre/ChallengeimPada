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
    @EnvironmentObject var chatManager: ChatManager
    
    @State var isUser: Bool = false

    var body: some View {
        ZStack(alignment: .centerFirstTextBaseline) {
            ScrollView {
                VStack {
                    ForEach(chatManager.messageHistory) { message in
                        MessageView(message: message)
                    }
                }
            }.offset(y: 120)
            VStack {
                HStack {
                    ReturnButton(dismiss: dismiss, imageName: "arrow-icon")
                    Image("chat-header")
                }.padding(.trailing, 200)
                Spacer()
                Button(action: {
                    chatManager.updateManager()
                    chatManager.dialoguePhase += 1
                }, label: {
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

//struct ChatView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatView()
//    }
//}
