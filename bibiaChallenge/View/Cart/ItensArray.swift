//
//  ItensArray.swift
//  bibiaChallenge
//
//  Created by mvbsa on 08/04/23.
//

import Foundation
import SwiftUI

struct ItensArray {
    static let cartItens: [Itens] = [cartItemOne, cartItemTwo]
}

let cartItemOne: Itens = Itens(picture: Image("item-book"), itemName: "LIVRO RELIGIOSO SORTIDO", price: "$de graça!")
let cartItemTwo: Itens = Itens(picture: Image("item-boombox"), itemName: "BOOMBOX PLUS", price: "$de graça!")
