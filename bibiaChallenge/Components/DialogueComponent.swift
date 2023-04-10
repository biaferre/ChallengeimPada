//
//  DialogueComponent.swift
//  bibia
//
//  Created by sml on 05/04/23.
//

import SwiftUI

extension DeliveryView {
    
    var dialogue: some View {
        VStack {
            Spacer()
            ZStack (alignment: .top) {
                Rectangle()
                    .background(Color.customGrey)
                    .opacity(0.2)
                    .frame(height: size.height)
                VStack {
                    ZStack {
                        Group {
                            Text(DialogueArray[dialoguePage].speaker + ": ")
                                .foregroundColor(Color("red"))
                                .font(.custom("VCR OSD Mono", size: 32))
                            +
                            Text(DialogueArray[dialoguePage].text)
                                .foregroundColor(.black)
                                .font(.custom("VCR OSD Mono", size: 32))
                            +
                            Text(text)
                                .foregroundColor(.white)
                                .font(.custom("VCR OSD Mono", size: 32))

                        }
//                        .offset(x: -280, y: -60)
                        .frame(width: 845, height: 242)
                        .lineSpacing(10.0)
                    }.background(Color.white)
                    buttons
                }
                .padding(.vertical, 44)
                .padding(.horizontal, 54)
                .background(
                    GeometryReader { proxy in
                        Color.clear
                            .onAppear{
                                size = proxy.size
                            }
                    }
                )
            }
            .onAppear {
                typeWriter()
            }
            
        }
    }
    
    func typeWriter(at position: Int = 0) {
        if text.count > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                text.append(DialogueArray[dialoguePage].text.removeFirst())
                typeWriter(at: position + 1)
            }
        }
        
    }
}

