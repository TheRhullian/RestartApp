//
//  CircleGroupView.swift
//  RestartApp
//
//  Created by Rhullian Damião on 01/03/22.
//

import SwiftUI

struct CircleGroupView: View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity),lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity),lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//: ZSTACK
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blueColor
                .ignoresSafeArea(.all, edges: .all)
            
            CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}