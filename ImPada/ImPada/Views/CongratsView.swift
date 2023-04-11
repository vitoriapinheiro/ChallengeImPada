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
                .font(.custom("Fredoka-Medium", size: 56))
                .bold()
                .foregroundColor(Color.appBlack)
                .padding(.top, 90)
            Spacer()
            Image("Prize")
                .frame(width: 290, height: 300)
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
            .onAppear{
                if(level == 9){
                    level = 1
                } else{
                    level += 1
                }
            }
            
        }
        .background(
            Image("OnboardingScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
        .navigationBarBackButtonHidden()
    }
}
