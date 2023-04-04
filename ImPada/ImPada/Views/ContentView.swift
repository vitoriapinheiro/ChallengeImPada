//
//  ContentView.swift
//  ImPada
//
//  Created by vivi on 16/03/23.
//

import SwiftUI
import SpriteKit


struct ContentView: View {
    
    let screenWidht = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var scene: SKScene {
        let scene = testeBraille()
        scene.size = CGSize(width: screenWidht, height: screenHeight)
        
        scene.scaleMode = .fill
        scene.backgroundColor = .black
        
        return scene
    }
    
    
    var body: some View {
        VStack {
            SpriteView(scene: scene)
                .frame(width: screenWidht, height: screenHeight, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            
        
        }
    }
}
