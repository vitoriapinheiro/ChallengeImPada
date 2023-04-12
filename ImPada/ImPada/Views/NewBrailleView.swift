//
//  NewBrailleView.swift
//  ImPada
//
//  Created by michellyes on 04/04/23.
//

import SwiftUI

struct NewBrailleView: View {
    @Binding var level: Int
    
    @State var codeLeft: [Bool] = [false, false, true, true, true, true]
    @State var codeRight: [Bool] = [true, false, false, false, false, false]
    
    var body: some View {
        ZStack {
            Image("BlueScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            VStack{
                HStack{
                    NavigationImageButton(
                        icon: "GreenPrevious",
                        nextView: {AnyView(SelectView(level: $level))},
                        width: 87,
                        height: 87
                    )
                    .padding(.top)
                    .padding(.leading, 100)
                    
                    AppBanner(
                        icon: "TalkBox",
                        nextView: {AnyView(BrailleView(level: $level))},
                        width: 800,
                        height: 140,
                        title: "Entendendo em Braille o número 1",
                        size: 48
                    )
                    .padding(.top, 90)
                    .padding(.leading, 55)
                    .padding(.trailing, 200)
                    .padding(.bottom, 50)
                }
                
                HStack(spacing: 50){
                    
                    SpriteKitContainer(scene: brailleScene(isActive: codeLeft[0]))
                    SpriteKitContainer(scene: brailleScene(isActive: codeRight[0]))
                    
                    //GridComponent(codeLeft: numbers[1].codeLeft, codeRight: numbers[1].codeRight)
                }
                .padding(.leading, 300)
                .padding(.trailing, 300)
                .background(Color.clear)
                
                HStack{
                    Spacer()
                    NavigationButton(
                            icon: "RoundButton",
                              nextView: {AnyView(CongratsView(level: $level))},
                              width: 240,
                              height: 70,
                              title: "Finalizar",
                              size: 24
                    )
                    .padding(.trailing, 100)
                    .padding(.bottom, 70)
                }.onAppear{
                    updateLevel()
                }
                
            }
        }
        .ignoresSafeArea(.all)
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


