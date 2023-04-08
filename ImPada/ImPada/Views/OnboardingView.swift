//
//  OnboardingView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var onboarding: Bool
    
    @State var changedText = false
    @State var talk = "Chat0"
    
    var body: some View {
        VStack {
            ActionImageButton(
                icon: talk,
                action: {print("Olá, mestre dos números!\nVocê está pronto?")},
                height: 224,
                width: 880
            )
            .padding(.top, 64)
            .padding(.horizontal, 116)
            Spacer()
            HStack{
              Spacer()
                if(changedText){
                    NavigationImageButton(
                        icon: "PinkNext",
                        nextView: {AnyView(HomeView(onboarding: $onboarding))},
                        width: 140,
                        height: 148
                    )
                            .padding(.bottom, 160)
                            .padding(.trailing, 100)
                } else {
                    ActionImageButton(icon: "PinkNext",
                                      action: {changeTextBox()},
                                      height: 140,
                                      width: 148)
                    .padding(.bottom, 160)
                    .padding(.trailing, 100)
                }
            }
        }
        .background(
            Image("OnboardingScenario")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .clipped())
        .ignoresSafeArea(.all)
    }
    
    private func changeTextBox(){
        self.talk = "Chat1"
        self.changedText = true
    }
}
