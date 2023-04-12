//
//  GameFive.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game5: View {
    @Binding var level: Int
    
    @State var wonGame: Bool = false
    @State var meteors: [Bool] = [true, true, true, true, true]
    var body: some View {
        ZStack{
            VStack{
                HStack(alignment: .center, spacing: 20){
                    Spacer()
                    if(meteors[0]){
                        ActionImageButton(
                            icon: ("Meteor"),
                            action: {checkMeteors(index: 0)},
                            height: 130, width: 130)
                    } else{
                        Spacer().frame(width: 130, height: 130)
                    }
                    if(meteors[1]){
                        ActionImageButton(
                            icon: ("Meteor"),
                            action: {checkMeteors(index: 1)},
                            height: 190, width: 190)
                    } else {
                        Spacer().frame(width: 190, height: 190)
                    }
                    Spacer().frame(width: 50, height: 50)
                }
                HStack(alignment: .center, spacing: 20){
                    Spacer()
                    if(meteors[4]){
                        ActionImageButton(
                            icon: "Meteor",
                            action: {checkMeteors(index: 4)},
                            height: 130, width: 130)
                    }  else {
                        Spacer().frame(width: 130, height: 130)
                    }
                    if(meteors[2]){
                        ActionImageButton(
                            icon: "Meteor",
                            action: {checkMeteors(index: 2)},
                            height: 190, width: 190)
                    } else {
                        Spacer().frame(width: 190, height: 190)
                    }
                    if(meteors[3]){
                        ActionImageButton(
                            icon: "Meteor",
                            action: {checkMeteors(index: 3)},
                            height: 130, width: 130)
                    }  else {
                        Spacer().frame(width: 130, height: 130)
                    }
                }
            }.padding(.bottom, 130)
                .padding(.trailing, 100)
            VStack{
                Spacer()
                HStack(alignment: .firstTextBaseline){
                    Image("House")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                        .padding(.leading, 30)
                    Image("Sauro")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 220, height: 220)
                    Spacer(minLength: 600)
                }}.padding(.bottom, 50)
            NavigationLink(destination: NewBrailleView(level: $level), isActive: $wonGame){}
        }
    }
    func checkMeteors(index: Int){
        self.meteors[index] = false
        if(!meteors[0] && !meteors[1] && !meteors[2] && !meteors[3] && !meteors[4]){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                self.wonGame = true
            }
        }
    }
}
