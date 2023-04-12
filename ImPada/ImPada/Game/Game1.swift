//
//  GameOne.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game1: View {
    @Binding var level: Int
    
    @State var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var screenWidth = CGFloat(0)
    @State var screenHeight = CGFloat(0)
    
    @State var dx = CGFloat(0)
    @State var dy = CGFloat(0)
    
    @State var housePos = CGPoint(x: UIScreen.screenWidth*4/5, y: UIScreen.screenHeight*42/100)
    @State var houseH = CGFloat(250)
    @State var houseW = CGFloat(500)
    
    @State var dinoPos = CGPoint(x: UIScreen.screenWidth*15/100, y: UIScreen.screenHeight*45/100)
    @State var dinoH = CGFloat(280)
    @State var dinoW = CGFloat(280)
    
    @State var wonGame = false
    
    var drag: some Gesture {
        DragGesture()
            .onChanged{ state in
                dinoPos = state.location
            }
            .onEnded{ state in
                if(abs(self.dinoPos.x - self.housePos.x) < 150 && abs(self.dinoPos.y - self.housePos.y) < 150){
                    wonGame = true
                }
                dinoPos = CGPoint(x: UIScreen.screenWidth*15/100, y: UIScreen.screenHeight*45/100)
            }
    }
    
    
    var body: some View {
        GeometryReader{ geo in
            ZStack {
                NavigationLink(destination: BrailleView(level: $level), isActive: $wonGame){}
                Image("House")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: self.houseW, height: self.houseH)
                    .position(self.housePos)
                InteractfulToy(
                    height: self.dinoH,
                    width: self.dinoW,
                    position: self.dinoPos,
                    gesture: drag,
                    icon: "Sauro")
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .onReceive(self.timer){ _ in
                self.screenWidth = geo.size.width
                self.screenHeight = geo.size.height
            }
            .onAppear{
                wonGame = false
                dinoPos = CGPoint(x: UIScreen.screenWidth*15/100, y: UIScreen.screenHeight*45/100)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
