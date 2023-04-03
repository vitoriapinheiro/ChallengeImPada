//
//  BrailleView.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import SwiftUI

struct BrailleView: View {
    @Binding var level: Int
    
    var body: some View {
        VStack{
            NavigationImageButton(
                icon: "TalkBox",
                nextView: {AnyView(BrailleView(level: $level))},
                width: 800,
                height: 140
            )
            .padding(.top, 90)
            .padding(.horizontal, 116)
            .padding(.bottom, 100)
            Spacer()
            HStack(spacing: 70){
                GridView(code: [false, false, true, true, true, true])
                GridView(code: [true, false, false, false, false, false])
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
    }
}
