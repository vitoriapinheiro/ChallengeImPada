//
//  GameEight.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game8: View {
    @Binding var level: Int
    
    @State var wonGame: Bool = false
    @State var stars: [Bool] = [true, true, true, true, true, true, true, true]
    var body: some View {
            VStack(alignment: .center){
                Spacer()
                HStack(alignment: .center, spacing: 75){
                    if(stars[0]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 0)},
                            height: 150, width: 150)
                    } else{
                        Spacer().frame(width: 150, height: 150)
                    }
                    if(stars[1]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 1)},
                            height: 150, width: 150)
                    } else {
                        Spacer().frame(width: 150, height: 150)
                    }
                    if(stars[2]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 2)},
                            height: 150, width: 150)
                    } else{
                        Spacer().frame(width: 150, height: 150)
                    }
                    if(stars[3]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 3)},
                            height: 150, width: 150)
                    } else {
                        Spacer().frame(width: 150, height: 150)
                    }
                }
                Spacer().frame(height: 20)
                HStack(alignment: .center, spacing: 75){
                    Spacer().frame(width: 50, height: 50)
                    if(stars[4]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 4)},
                            height: 150, width: 150)
                    } else{
                        Spacer().frame(width: 150, height: 150)
                    }
                    if(stars[5]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 5)},
                            height: 150, width: 150)
                    } else {
                        Spacer().frame(width: 150, height: 150)
                    }
                    if(stars[6]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 6)},
                            height: 150, width: 150)
                    } else{
                        Spacer().frame(width: 150, height: 150)
                    }
                    if(stars[7]){
                        ActionImageButton(
                            icon: ("Star"),
                            action: {checkStars(index: 7)},
                            height: 150, width: 150)
                    } else {
                        Spacer().frame(width: 150, height: 150)
                    }
                }
                NavigationLink(destination: CongratsView(level: $level), isActive: $wonGame){}
            }
            .padding(.leading, 90)
            .padding(.trailing, 90)
            .padding(.bottom, 140)
        
        }
    func checkStars(index: Int){
        self.stars[index] = false
        if(!stars[0] && !stars[1] && !stars[2] && !stars[3] && !stars[4] && !stars[5] && !stars[6] && !stars[7]){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75){
                self.wonGame = true
            }
        }
    }
}
