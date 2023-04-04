//
//  SelectView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct SelectView: View {
    let level: [NumberModels] = numbers
    
    var body: some View {
        VStack{
            Text("Números")
                .font(.custom("Fredoka-Medium" ,size: 56))
                .foregroundColor(Color.appBlack)
                .padding(.top, 70)
            HStack {
                AppImageButton(
                    icon: "LeftArrow",
                    nextView: {AnyView(NumberView())},
                    width: 160,
                    height: 140
                ).padding(.trailing, 100)
                ZStack{
                    AppImageButton(
                        icon: "Cards",
                        nextView: {AnyView(NumberView())},
                        width: 360,
                        height: 520
                    )
                    Image("One")
                }
                AppImageButton(
                    icon: "RightArrow",
                    nextView: {AnyView(NumberView())},
                    width: 160,
                    height: 140
                ).padding(.leading, 100)
            }
            .padding(.bottom, 170)
        }
        .background(
            Image("BlueScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
        
    }
}
