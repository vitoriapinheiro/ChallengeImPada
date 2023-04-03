//
//  HomeView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("lastLevel") var lastLevel: Int = 0
    @AppStorage("currLevel") var level: Int = 1
    
    @Binding var onboarding: Bool
    
    
    var body: some View {
        VStack {
            Spacer()
            ActionButton(title: "Salvar dados",
                         icon: "SquareButton",
                         action: {
                
            },
                         height: 60,
                         width: 60,
                         size: 24)
            NavigationButton(
                icon: "SquareButton",
                nextView: {AnyView(SelectView(level: $level))},
                width: 140,
                height: 148,
                title: "Começar",
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
