//
//  GameSeven.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game7: View {
    @Binding var level: Int
    
    @State var wonGame: Bool = false
    @State var keys: [Bool] = [false, false, false, false, false, false, false]
    
    var body: some View {
            ZStack{
                Image("PianoBase")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 700, height: 340)
                    .padding(.top, 0)
                HStack(alignment: .bottom, spacing: 10){
                    Spacer().frame(width: 30)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {playKey(index: 0)},
                        height: 350, width: 65)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {playKey(index: 0)},
                        height: 350, width: 65)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {playKey(index: 0)},
                        height: 350, width: 65)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {playKey(index: 0)},
                        height: 350, width: 65)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {playKey(index: 0)},
                        height: 350, width: 65)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {playKey(index: 0)},
                        height: 350, width: 65)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {playKey(index: 0)},
                        height: 350, width: 65)
                }
                
            }.frame(width: 700, height: 380)
            .onAppear{
                wonGame = false
            keys = [false, false, false, false, false, false, false]
            }
    }
    func playKey(index: Int){
        self.keys[index] = true
        if(self.keys[0] && self.keys[1] && self.keys[2] && self.keys[3] && self.keys[4] && self.keys[5] && self.keys[6]){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75){
                self.wonGame = true
            }
        }
    }
}
