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
            Image(systemName: "circle")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Onboarding View!")
            AppImageButton(
                icon: "seta",
                nextView: {AnyView(HomeView())},
                width: 76,
                height: 77
            )
        }
        .padding()
    }
}
