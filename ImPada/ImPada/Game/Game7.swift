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
        VStack{
            Spacer()
            ZStack{
                Image("PianoBase")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 650, height: 300)
                    .padding(.top, 164)
                
                
                HStack(alignment: .bottom, spacing: 10){
                    Spacer().frame(width: 20)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {
                            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "do")
                            playKey(index: 0)
                        },
                        height: 280, width: 50)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {
                            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "re")
                            playKey(index: 1)
                        },
                        height: 280, width: 50)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {
                            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "mi")
                            playKey(index: 2)
                        },
                        height: 280, width: 50)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {
                            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "fa")
                            playKey(index: 3)
                        },
                        height: 280, width: 50)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {
                            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "sol")
                            playKey(index: 4)
                        },
                        height: 280, width: 50)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {
                            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "la")
                            playKey(index: 5)
                        },
                        height: 280, width: 50)
                    ActionImageButton(
                        icon: "WhiteKey",
                        action: {
                            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "si")
                            playKey(index: 6)
                        },
                        height: 280, width: 50)
                }.padding(.top, 95)
                
                HStack(alignment: .bottom, spacing: 10){
                    Image("BlackKey")
                        .resizable()
                    
                    
                    Image("BlackKey")
                        .resizable()
                    
                    
                    Image("BlackKey")
                        .resizable()
                    
                    
                    Image("BlackKey")
                        .resizable()
                    
                    Image("BlackKey")
                        .resizable()
                    
                    
                    Image("BlackKey")
                        .resizable()
                    
                    
                }.frame(width: 360, height: 100)
                    .padding(.trailing, 18)
                    .padding(.top, 24)
                NavigationLink(destination: BrailleView(level: $level), isActive: $wonGame){}
            }
            .frame(width: 700, height: 380)
            .onAppear{
                wonGame = false
                keys = [false, false, false, false, false, false, false]
            }
            Spacer()
        }
    }
    func playKey(index: Int){
        self.keys[index] = true
        if(self.keys[0] && self.keys[1] && self.keys[2] && self.keys[3] && self.keys[4] && self.keys[5] && self.keys[6]){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.wonGame = true
            }
        }
    }
}
