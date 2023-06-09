//
//  Grid.swift
//  ImPada
//
//  Created by vivi on 17/03/23.
//

import SwiftUI

struct GridView: View{
    let code: [Bool]    
    
    var body: some View {
        HStack {
                VStack{
                    CircleView(isActive: code[0])
                    CircleView(isActive: code[1])
                    CircleView(isActive: code[2])

                    }
                VStack{
                    CircleView(isActive: code[3])
                    CircleView(isActive: code[4])
                    CircleView(isActive: code[5])
                }
        }
    }
}

struct CircleView: View {
    let isActive: Bool
    @State private var isPressed: Bool = false
    
    var body: some View {
        if(isActive){
            Circle()
                .foregroundColor(Color.mediumPink)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    self.isPressed.toggle()
                    if self.isPressed {
                        HapticManager.instance.impact(style: .heavy)
                        MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "teste1")
                    }
                }
        } else {
            
            Circle()
                .foregroundColor(Color.lightGreen)
                .frame(width: 100, height: 100)
        }
    }
}
