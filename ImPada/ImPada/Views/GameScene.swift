//
//  HoverTest.swift
//  ImPada
//
//  Created by michellyes on 28/03/23.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene{
    
    let square = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        // 1. create sprite
        
        square.size = CGSize(width: 100, height: 100)
        square.position = CGPoint(x: 100, y: 100)
        square.color = .systemYellow
        
        addChild(square)
    }
    
        // 2. touch location
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches{
//            let location = touch.location(in: self)
//            square.position = location
//
//            // 3. Gliding Animation
//            let action = SKAction.move(to: location, duration: 1.0)
//
//            square.run(action)
//
//        }
//    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let move = SKAction.move(to: location, duration: 0.1)
            square.run(move)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let move = SKAction.move(to: CGPoint(x: 0, y: 0), duration: 0.1)
        square.run(move)
    }
    
        

    
}

