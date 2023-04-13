//
//  GameView.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct GameView: View {
    @Binding var level: Int
    
    @State var bgImg = "BlueScenario"
    
    var body: some View {
        VStack{
            ActionImageButton(
                icon: "ChatLevel\(level)",
                action: {print("Olá, mestre dos números!\nVocê está pronto?")},
                height: 140,
                width: 800
            )
            .padding(.top, 90)
            .padding(.horizontal, 116)
            .onAppear{
                checkBG()
            }
            switch level{
                case 1:
                    Game1(level: $level)
                case 2:
                    Game2(level: $level)
                case 3:
                    Game3(level: $level)
                case 4:
                    Game4(level: $level)
                case 5:
                    Game5(level: $level)
                case 6:
                    Game6(level: $level)
                case 7:
                    Game7(level: $level)
                case 8:
                    Game8(level: $level)
                case 9:
                    Game9(level: $level)
                default:
                    Game1(level: $level)
            }
            
        }.background(
            Image(bgImg)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
        .navigationBarBackButtonHidden()
    }
    
    private func checkBG(){
        if(level == 1 || level == 5){
            self.bgImg = "OnboardingScenario"
        } else if (level == 2){
            self.bgImg = "SkyScenario"
        } else if (level == 3){
            self.bgImg = "SandScenario"
        } else if (level == 7){
            self.bgImg = "MusicScenario"
        } else if (level == 8){
            self.bgImg = "NightScenario"
        }
    }
}
