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
            Text("Home").font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}