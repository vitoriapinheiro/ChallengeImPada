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
        }.onAppear{
            wonGame = false
            Purple = true
            Pink = true
        }
    }
    
    func disappearBallon(isPink: Bool){
        MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "Balloon")
        if(isPink){
            self.Pink = false
        } else {
            self.Purple = false
        }
        if(!self.Pink && !self.Purple){
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                self.wonGame = true
            }
        }
    }
}

