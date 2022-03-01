//
//  OnboardingView.swift
//  RestartApp
//
//  Created by Rhullian Damião on 01/03/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color.blueColor
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                // MARK: HEADER
                Spacer()
                VStack(spacing: 0) {
                    Text("Share.").font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }//: HEADER
                
                // MARK: CENTER
                ZStack {
                    CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
                    Image.characterOne.imageModification()
                    
                }//: CENTER
                
                // MARK: FOOTER
                ZStack {
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    // BUTTON BACKGROUND - WILL BE STRETCHED
                    HStack {
                        Capsule()
                            .fill(Color.redColor)
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    // CHEVRON BUTTON
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color.redColor)
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image.doubleChevronRight
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        Spacer()
                    }//: HSTACK
                }//: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
