//
//  Itens.swift
//  bibiaChallenge
//
//  Created by Bof on 10/04/23.
//

import Foundation
import SwiftUI

class Itens: Identifiable {
    var id: ObjectIdentifier?
    
    var picture: String
    var banner: String?
    var itemName: String
    var description: String
    
    init(picture: String, banner: String? = nil, itemName: String, description: String) {

        self.picture = picture
        self.banner = banner
        self.itemName = itemName
        self.description = description
        
        id = ObjectIdentifier(self)
    }

}
