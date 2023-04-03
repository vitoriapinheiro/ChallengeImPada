//
//  CongratsView.swift
//  ImPada
//
//  Created by vivi on 29/03/23.
//
import SwiftUI

struct CongratsView: View {
    @Binding var level: Int
    
    var body: some View {
        VStack {
            Text("Você conseguiu!")
                .font(.system(size: 56))
                .padding(.top, 90)
            Spacer()
            Circle()
                .foregroundColor(Color.mediumGreen)
                .frame(width: 260, height: 260)
            Spacer()
            HStack{
                NavigationButton(icon: "RoundButton",
                          nextView: {AnyView(SelectView(level: $level))},
                          width: 240,
                          height: 70,
                          title: "Menu",
                          size: 24
                )
                .padding(.trailing, 70)
                NavigationButton(icon: "RoundButton",
                          nextView: {AnyView(SelectView(level: $level))},
                          width: 240,
                          height: 70,
                          title: "Próximo",
                          size: 24
                )
                
            }
            .padding(.bottom, 160)
            
        }
        .background(
            Image("OnboardingScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
    }
}
