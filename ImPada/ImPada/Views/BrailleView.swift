//
//  BrailleView.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import SwiftUI

struct BrailleView: View {
    var body: some View {
        VStack{
            AppImageButton(
                icon: "TalkBox",
                nextView: {AnyView(BrailleView())},
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
                AppButton(icon: "RoundButton",
                          nextView: {AnyView(CongratsView())},
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
