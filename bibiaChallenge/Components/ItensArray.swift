//
//  ItensArray.swift
//  bibiaChallenge
//
//  Created by Bof on 10/04/23.
//

import Foundation
import SwiftUI

struct ItensArray {
    let topItens: [Itens] = [
        Itens(picture: "boombox", itemName: "Boombox PLUS", description: "A música é tão alta que\nparece vir da sua alma."),
        Itens(picture: "book", itemName: "Texto Religioso\nSortido", description: "Colecionável! Pode\nvir uma Bíblia, um\ngrimório, etc..."),
        Itens(picture: "phone", itemName: "Celhulhar", description: "Vão todos te lhigar no\nseu celhulhar"),
        Itens(picture: "tv", itemName: "TV LSD", description: "*****LCD")
    ]
    
    let suggestedItens: [Itens] = [
        Itens(picture: "teddy", banner: "teddy-banner", itemName: "Ursinho NAO assassino", description: "(Juro, ele não é)"),
        Itens(picture: "shake", banner: "shake-banner", itemName: "Milkshake de empada", description: "(Juro, ele não é)"),
        Itens(picture: "microwave", banner: "wave-banner", itemName: "Nano ondas", description: "(Juro, ele não é)"),
        Itens(picture: "chair", banner: "chair-banner", itemName: "Senta&Sente", description: "(Juro, ele não é)"),
    ]
}
