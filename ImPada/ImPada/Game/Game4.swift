//
//  GameFour.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game4: View {
    @Binding var level: Int
    
    @State var wonGame: Bool = false
    @State var elements: [Bool] = [true, true, true, true]
    
    var body: some View {
        VStack{
            Spacer()
            HStack(alignment: .center, spacing: 20){
                if(elements[0]){
                    ActionImageButton(
                        icon: withAnimation {("Water")},
                        action: {checkElement(index: 0)},
                        height: 300, width: 200)
                } else {
                    Spacer().frame(width: 200, height: 300)
                }
                if(elements[1]){
                    ActionImageButton(
                        icon:  withAnimation {("Fire")},
                        action: {checkElement(index: 1)},
                        height: 300, width: 200)
                } else {
                    Spacer().frame(width: 200, height: 300)
                }
                if(elements[2]){
                    ActionImageButton(
                        icon:  withAnimation {("Earth")},
                        action: {checkElement(index: 2)},
                        height: 300, width: 200)
                } else {
                    Spacer().frame(width: 200, height: 300)
                }
                if(elements[3]){
                    ActionImageButton(
                        icon:  withAnimation {("Air")},
                        action: {checkElement(index: 3)},
                        height: 300, width: 200)
                } else {
                    Spacer().frame(width: 200, height: 300)
                }

                NavigationLink(destination: NewBrailleView(level: $level), isActive: $wonGame){}
            }.onAppear{
                wonGame = false
                elements =  [true, true, true, true]
            }
            Spacer().frame(height: 100)
            
        }
    }
    
    func checkElement(index: Int){
        self.elements[index] = false
        if(!elements[0] && !elements[1] && !elements[2] && !elements[3]){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75){
                self.wonGame = true
            }
        }
    }}
