//
//  ImagesExtension.swift
//  RestartApp
//
//  Created by Rhullian Damião on 01/03/22.
//

import SwiftUI

extension Image {
    static var characterOne: Image {
        Image("char-1")
    }
    
    static var characterTwo: Image {
        Image("char-2")
    }
    
    // Modifications
    func imageModification() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
}
