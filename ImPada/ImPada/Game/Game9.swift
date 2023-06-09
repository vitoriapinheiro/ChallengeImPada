//
//  GameNine.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game9: View {
    @Binding var level: Int
    
    @State var wonGame: Bool = false
    @State var teeth: [Bool] = [true, true, true, true, true, true, true, true, true]
    
    var body: some View {
        ZStack{
            Image("Mouth")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 745, height: 565)
            VStack{
                HStack(alignment: .center, spacing: 10){
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[0] ? ("MUDT"): ("MCUT")
                        },
                        action: {checkTeeth(index: 0)},
                        height: 65, width: 65)
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[1] ? ("MUDT"): ("MCUT")
                        },
                        action: {checkTeeth(index: 1)},
                        height: 65, width: 65)
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[2] ? ("MUDT"): ("MCUT")
                        },
                        action: {checkTeeth(index: 2)},
                        height: 65, width: 65)
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[3] ? ("MUDT"): ("MCUT")
                        },
                        action: {checkTeeth(index: 3)},
                        height: 65, width: 65)
                }.offset(y: -13)
                .padding(.top, 140)
                HStack(alignment: .center, spacing: 10){
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[4] ? ("RDBT"): ("RCBT")
                        },
                        action: {checkTeeth(index: 4)},
                        height: 65, width: 65)
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[5] ? ("MDBT"): ("MCBT")
                        },
                        action: {checkTeeth(index: 5)},
                        height: 65, width: 65)
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[6] ? ("MDBT"): ("MCBT")
                        },
                        action: {checkTeeth(index: 6)},
                        height: 65, width: 65)
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[7] ? ("MDBT"): ("MCBT")
                        },
                        action: {checkTeeth(index: 7)},
                        height: 65, width: 65)
                    ActionImageButton(
                        icon:  withAnimation {
                            self.teeth[8] ? ("LDBT"): ("LCBT")
                        },
                        action: {checkTeeth(index: 8)},
                        height: 65, width: 65)
                    NavigationLink(destination: BrailleView(level: $level), isActive: $wonGame){}
                }.offset(y: 6)
                .padding(.top, 20)
            }.onAppear{
                wonGame = false
                teeth = [true, true, true, true, true, true, true, true, true]
            }
            }
        }
                    
                    func checkTeeth(index: Int){
                        self.teeth[index] = false
                        if(!self.teeth[0] && !self.teeth[1] && !self.teeth[2] && !self.teeth[3] && !self.teeth[4] && !self.teeth[5] && !self.teeth[6] && !self.teeth[7] && !self.teeth[8]){
                            DispatchQueue.main.asyncAfter(deadline: .now()){
                                self.wonGame = true
                            }
                        }
                    }
}
