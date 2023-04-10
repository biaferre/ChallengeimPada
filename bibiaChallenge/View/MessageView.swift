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
    var isUser: Bool
    
    var body: some View {
        HStack(alignment: .top) {
            if isUser {
                Spacer()
            }
            
            VStack(alignment: isUser ? .trailing : .leading, spacing: 4) {
                Text(message.text)
                    .frame(minWidth: 0, maxWidth: 586)
                    .padding(20)
                    .foregroundColor(isUser ? .white : .black)
                    .background(isUser ? .black : Color("yellow"))
                    .cornerRadius(12)
                    .font(
                        .custom("VCR OSD Mono", size: 28))
            }
            if !isUser {
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message(text: "oii"), isUser: true)
    }
}
