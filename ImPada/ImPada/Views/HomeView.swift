//
//  HomeView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer()
            AppButton(
                icon: "SquareButton",
                nextView: {AnyView(SelectView())},
                width: 140,
                height: 148,
                title: "Começar",
                size: 56
            )
            .padding(.bottom, 170)
        }
        .background(
            Image("OnboardingScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
        )
        .navigationBarBackButtonHidden()
    }
}
