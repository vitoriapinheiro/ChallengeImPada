//
//  OnboardingView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            AppImageButton(
                icon: "TalkBox",
                nextView: {AnyView(HomeView())},
                width: 880,
                height: 224
            )
            .padding(.top, 64)
            .padding(.horizontal, 116)
            Spacer()
            HStack{
              Spacer()
            AppImageButton(
                icon: "PinkNext",
                nextView: {AnyView(HomeView())},
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
                .ignoresSafeArea(.all)
        )
    }
}
