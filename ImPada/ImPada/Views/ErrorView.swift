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
            Text("OPS!")
                .font(.custom("Fredoka-Medium", size: 128))
                .bold()
                .foregroundColor(Color.appBlack)
            Text("ALGO DEU ERRADO POR AQUI")
                .font(.custom("Fredoka-Medium", size: 36))
                .bold()
                .foregroundColor(Color.appBlack)
            NavigationButton(
                icon: "RoundButton",
                nextView: {AnyView(ContentView())},
                width: 240,
                height: 68,
                title: "Menu",
                size: 24
            )
            .padding(.bottom, 170)
        }.background(
            Image("ErrorScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
        .navigationBarBackButtonHidden()
    }
}
