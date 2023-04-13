//
//  BrailleView.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import SwiftUI

struct BrailleView: View {
    @Binding var level: Int
    
    @State var codeLeft: [Bool] = [false, false, true, true, true, true]
    @State var codeRight: [Bool] = [true, false, false, false, false, false]
    
    var body: some View {
        VStack{
            ActionImageButton(
                icon: "ChatBraille\(level)",
                action: {print("Olá, mestre dos números!\nVocê está pronto?")},
                height: 140,
                width: 800
            )
            .padding(.top, 90)
            .padding(.horizontal, 116)
            .padding(.bottom, 100)
            Spacer()
            HStack(spacing: 70){
                GridView(code: codeLeft)
                GridView(code: codeRight)
            }
            HStack{
                Spacer()
                NavigationButton(icon: "RoundButton",
                          nextView: {AnyView(CongratsView(level: $level))},
                          width: 240,
                          height: 70,
                          title: "Finalizar",
                          size: 24
                )
                .padding(.trailing, 100)
                .padding(.bottom, 70)
            }
        }.background(
            Image("BlueScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
        .navigationBarBackButtonHidden()
        .onAppear{
            updateLevel()
        }
    }
    
    private func updateLevel(){
        if level == 1 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, false, false, false, false, false]
        } else if level == 2 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, true, false, false, false, false]
        } else if level == 3 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, false, false, true, false, false]
        } else if level == 4 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, false, false, true, true, false]
        } else if level == 5 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, false, false, false, true, false]
        } else if level == 6 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, true, false, true, false, false]
        } else if level == 7 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, true, false, true, true, false]
        } else if level == 8 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [true, true, false, false, true, false]
        } else if level == 9 {
            codeLeft = [false, false, true, true, true, true]
            codeRight = [false, true, false, true, true, false]
        }
    }
}
