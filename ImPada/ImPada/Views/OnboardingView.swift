//
//  OnboardingView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var onboarding: Bool
    
    var body: some View {
        VStack {
            NavigationImageButton(
                icon: "TalkBox",
                nextView: {AnyView(HomeView(onboarding: $onboarding))},
                width: 880,
                height: 224
            )
            .padding(.top, 64)
            .padding(.horizontal, 116)
            Spacer()
            HStack{
              Spacer()
            NavigationImageButton(
                icon: "PinkNext",
                nextView: {AnyView(HomeView(onboarding: $onboarding))},
                width: 140,
                height: 148
            )
            .padding(.bottom, 160)
            .padding(.trailing, 100)
            }
        }
        .background(
            Image("OnboardingScenario")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .clipped())
        .ignoresSafeArea(.all)
    }
}
