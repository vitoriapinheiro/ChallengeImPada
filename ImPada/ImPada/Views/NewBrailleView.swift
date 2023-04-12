//
//  NewBrailleView.swift
//  ImPada
//
//  Created by michellyes on 04/04/23.
//

import SwiftUI

struct NewBrailleView: View {
    @Binding var level: Int
    
    @State var codeLeft: [[Bool]] = [[false, false], [false, false], [false, false]]
    @State var codeRight: [[Bool]] = [[false, false], [false, false], [false, false]]
    
    @ObservedObject var BrailleVM: BrailleViewModel
        
        init(level: Binding<Int>) {
            self._level = level
            _BrailleVM = ObservedObject(wrappedValue: BrailleViewModel(level: level))
        }
    
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
                }
                
                HStack(spacing: 50){
                    
                    SpriteKitContainer(scene: brailleScene(level: BrailleVM.codeLeft))
                    SpriteKitContainer(scene: brailleScene(level: BrailleVM.codeRight))
                    
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
        }
    }
}
