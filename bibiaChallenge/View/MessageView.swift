//
//  MessageView.swift
//  bibiaChallenge
//
//  Created by Bof on 10/04/23.
//

import Foundation
import SwiftUI

struct MessageView: View {
    var message: Message
    var body: some View {
        HStack(alignment: .top) {
            if message.isUser {
                Spacer()
            }
            
            VStack(alignment: message.isUser ? .trailing : .leading, spacing: 4) {
                Text(message.text)
                    .frame(minWidth: 0, maxWidth: 400)
                    .padding(20)
                    .foregroundColor(message.isUser ? .white : .black)
                    .background(message.isUser ? .black : Color("yellow"))
                    .cornerRadius(12)
                    .font(
                        .custom("VCR OSD Mono", size: 28))
            }
            if !message.isUser {
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message(text: "oii", isUser: true))
    }
}
