//
//  HomeView.swift
//  RestartApp
//
//  Created by Rhullian Damião on 01/03/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            // MARK: HEADER
            Spacer()
            
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                Image.characterTwo.imageModification()
                    .padding()
            }
            
            // MARK: CENTER
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.system(.title3))
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: FOOTER
            Spacer()
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image.recycle
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }//: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
