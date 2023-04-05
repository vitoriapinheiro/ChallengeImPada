//
//  GridComponent.swift
//  ImPada
//
//  Created by michellyes on 04/04/23.
//
import SwiftUI
import SpriteKit

struct GridComponent: View {
    let codeLeft: [Bool]
    let codeRight: [Bool]
    
    var body: some View {
       
        HStack{
            VStack{
                SpriteKitContainer(scene: circleScene(isActive: codeLeft[0]))
                SpriteKitContainer(scene: circleScene(isActive: codeLeft[1]))
                SpriteKitContainer(scene: circleScene(isActive: codeLeft[2]))
                }
            VStack{
                SpriteKitContainer(scene: circleScene(isActive: codeLeft[3]))
                SpriteKitContainer(scene: circleScene(isActive: codeLeft[4]))
                SpriteKitContainer(scene: circleScene(isActive: codeLeft[5]))
            }
        }
        .padding(.leading, 350)
        .padding(.trailing, 20)
        HStack{
            VStack{
                SpriteKitContainer(scene: circleScene(isActive: codeRight[0]))
                SpriteKitContainer(scene: circleScene(isActive: codeRight[1]))
                SpriteKitContainer(scene: circleScene(isActive: codeRight[2]))
                }
            VStack{
                SpriteKitContainer(scene: circleScene(isActive: codeRight[3]))
                SpriteKitContainer(scene: circleScene(isActive: codeRight[4]))
                SpriteKitContainer(scene: circleScene(isActive: codeRight[5]))
            }
        }
        .padding(.leading, 20)
        .padding(.trailing, 350)
    }
}
