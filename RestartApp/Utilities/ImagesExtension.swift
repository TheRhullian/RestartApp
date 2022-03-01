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
    
    static var doubleChevronRight: Image {
        Image(systemName: "chevron.right.2")
    }
    
    static var recycle: Image {
        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
    }
    
    static var leftRightArrow: Image {
        Image(systemName: "arrow.left.and.right.circle")
    }
    
    // Modifications
    func imageModification() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
}
