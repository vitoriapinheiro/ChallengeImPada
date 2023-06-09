//
//  GameThree.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game3: View {
    @Binding var level: Int
    
    @State var wonGame: Bool = false
    @State var eggs: [Bool] = [false, false, false]
    
    var body: some View {
        VStack{
            Spacer()
            HStack(alignment: .center, spacing: 20){
                ActionImageButton(
                    icon: withAnimation {
                        self.eggs[0] ? ("BabyDino"): ("Egg")
                    },
                    action: {checkEggs(index: 0)},
                    height: 340, width: 310)
                ActionImageButton(
                    icon:  withAnimation {
                        self.eggs[1] ? ("BabyDino"): ("Egg")
                    },
                    action: {checkEggs(index: 1)},
                    height: 340, width: 310)
                ActionImageButton(
                    icon:  withAnimation {
                        self.eggs[2] ? ("BabyDino"): ("Egg")
                    },
                    action: {checkEggs(index: 2)},
                    height: 340, width: 310)
                NavigationLink(destination: BrailleView(level: $level), isActive: $wonGame){}
            }.onAppear{
                wonGame = false
            eggs = [false, false, false]
            }
            Spacer().frame(height: 20)

        }
        }

    func checkEggs(index: Int){
        self.eggs[index] = true
        if(eggs[0] && eggs[1] && eggs[2]){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.wonGame = true
            }
        }
    }
}

