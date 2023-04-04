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
        let scene = newTesteBraille()
        scene.size = CGSize(width: screenWidht, height: screenHeight)
        scene.scaleMode = .aspectFill
        
        let background = SKSpriteNode(imageNamed: "BlueScenario")
        background.size = CGSize(width: screenWidht, height: screenHeight)
        background.position = CGPoint(x: screenWidht/2, y: screenHeight/2)
        background.scene?.scaleMode = .aspectFill
        scene.addChild(background)
        
        
        return scene
    }
    
    
    var body: some View {
        VStack {
            SpriteView(scene: scene)
                .frame(width: screenWidht, height: screenHeight, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            
        
        }
        NavigationView{
            OnboardingView()
        }.navigationViewStyle(.stack)
            .ignoresSafeArea()
            .navigationBarBackButtonHidden()
            .statusBarHidden()
    }
}
