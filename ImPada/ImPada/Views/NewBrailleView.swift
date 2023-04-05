//
//  NewBrailleView.swift
//  ImPada
//
//  Created by michellyes on 04/04/23.
//

import SwiftUI

struct NewBrailleView: View {
    
    var body: some View {
        ZStack {
            Image("BlueScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            VStack{
                HStack{
                    AppImageButton(
                        icon: "GreenPrevious",
                        nextView: {AnyView(NumberView())},
                        width: 87,
                        height: 87
                    )
                    .padding(.top)
                    .padding(.leading, 100)
                    
                    AppBanner(
                        icon: "TalkBox",
                        nextView: {AnyView(BrailleView())},
                        width: 800,
                        height: 140,
                        title: "Entendendo em Braille o número 1",
                        size: 48
                    )
                    .padding(.top, 90)
                    .padding(.leading, 55)
                    .padding(.trailing, 200)
                    .padding(.bottom, 100)
                }
                
                HStack(spacing: 70){
                    GridComponent(codeLeft: numbers[1].codeLeft, codeRight: numbers[1].codeRight)
                }
                .background(Color.clear)
                
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
            }
        }
        .ignoresSafeArea(.all)
    }
}


struct NewBrailleView_Previews: PreviewProvider {
    static var previews: some View {
        NewBrailleView()
    }
}
