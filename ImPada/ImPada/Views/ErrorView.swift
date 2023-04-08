//
//  ErrorView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack {
            Spacer()
            NavigationButton(
                icon: "SquareButton",
                nextView: {AnyView(ContentView())},
                width: 140,
                height: 148,
                title: "Menu",
                size: 56
            )
            .padding(.bottom, 170)
        }.background(
            Image("OnboardingScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
        .navigationBarBackButtonHidden()
    }
}
