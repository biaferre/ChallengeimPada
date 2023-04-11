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
    @EnvironmentObject var c: ChatManager
    
    @State var isUser: Bool = false
    @State var displayedMessages: [Message] = []
            
    @State private var timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    func updateHistory() {
            displayedMessages.append(c.chatArray[c.dialoguePhase][c.messageCounter])
            c.messageCounter += 1
            c.hasAnswered = false
    }
    
    func restartTimer() {
        let  newTimer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
        timer = newTimer
    }
    
    func waitForUserResponse() {
        DispatchQueue.global(qos: .default).async {
                while !c.hasAnswered {
                    print(0)
                }
                displayedMessages.append(c.currentAnswer!)
            restartTimer()
        
            }
        }

    var body: some View {
        ZStack(alignment: .centerFirstTextBaseline) {
            ScrollView {
                VStack {
                        ForEach(displayedMessages) { message in
                            MessageView(message: message)
                                .animation(.easeInOut)
                    }
                }.onReceive(timer) { _ in
                    if c.messageCounter <= (c.chatArray[c.dialoguePhase].count - 1) {
                        updateHistory()
                    }
                    else {
                        c.messageCounter = 0
                        c.choiceActive.toggle()
                        self.timer.upstream.connect().cancel()
                        waitForUserResponse()
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
//                    c.choiceActive.toggle()
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
                    }.foregroundColor(.black)
                }).ignoresSafeArea()
                    .offset(y: 24)
            }
            
        }.background(Image("Chat wallpaper"))
            .navigationBarBackButtonHidden(true)
            .overlay {
                VStack{
                    
                    if c.choiceActive {
                        DecisionView()
                    }
                    
                }.animation(.easeIn)
            }
//            .sheet(isPresented: $c.choiceActive, content: {
//                DecisionView().presentationDetents([.custom(TinyDetent.self), .medium])
//
//            })
    }
}

struct TinyDetent: CustomPresentationDetent {
    static func height(in context: Context) -> CGFloat? {
        if context.dynamicTypeSize.isAccessibilitySize {
            return 140
        } else {
            return 60
        }
    }
}

//struct ChatView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatView()
//    }
//}
