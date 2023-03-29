//
//  SelectView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct SelectView: View {
    var body: some View {
        VStack{
            Text("Números")
                .font(.custom("Fredoka-Medium" ,size: 56))
                .foregroundColor(Color.appBlack)
            HStack {
                AppImageButton(
                    icon: "LeftArrow",
                    nextView: {AnyView(NumberView())},
                    width: 160,
                    height: 140
                )
                AppImageButton(
                    icon: "Cards",
                    nextView: {AnyView(NumberView())},
                    width: 360,
                    height: 520
                )
                AppImageButton(
                    icon: "RightArrow",
                    nextView: {AnyView(NumberView())},
                    width: 160,
                    height: 140
                )
            }
            .padding(.bottom, 170)
        }
        .background(Color.lightBlue)
    }
}
