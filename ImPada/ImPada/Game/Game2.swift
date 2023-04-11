//
//  GameTwo.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game2: View {
    @Binding var level: Int
    
    @State var Pink = true
    @State var Purple = true
    @State var wonGame = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 50){
            if(Pink){
                ActionImageButton(
                    icon: "PinkBalloon",
                    action: {disappearBallon(isPink: true)},
                    height: 500, width: 300)}
            else{
                Spacer().frame(width: 300)
            }
            if(Purple){
                ActionImageButton(
                    icon: "PurpleBalloon",
                    action: {disappearBallon(isPink: false)},
                    height: 500,
                    width: 300)}
            else{
                Spacer().frame(width: 300)
            }
            NavigationLink(destination: CongratsView(level: $level), isActive: $wonGame){}
        }
    }
    
    func disappearBallon(isPink: Bool){
        if(isPink){
            self.Pink = false
        } else {
            self.Purple = false
        }
        if(!self.Pink && !self.Purple){
            self.wonGame = true
        }
    }
}
