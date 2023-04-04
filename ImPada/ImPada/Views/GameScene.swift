//
//  HoverTest.swift
//  ImPada
//
//  Created by michellyes on 28/03/23.
//

import SwiftUI
import SpriteKit
import GameplayKit

class GameScene: SKScene{
    
    let fingerUser = SKSpriteNode()
    let square = SKSpriteNode()
    let circle = SKShapeNode(circleOfRadius: 50)
    var touchPlayer: Bool = false
    
    override func didMove(to view: SKView) {
        // 1. create sprite
        
        let isActive: Bool
        
        
        square.size = CGSize(width: 100, height: 100)
        square.position = CGPoint(x: 200, y: 200)
        square.color = .gray
        addChild(square)
        
        circle.position = CGPoint(x: 500, y: 200)
        circle.strokeColor = .systemBlue
        circle.fillColor = .gray
        addChild(circle)
        
        fingerUser.size = CGSize(width: 100, height: 100)
        fingerUser.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        fingerUser.color = .systemPink
        addChild(fingerUser)
        
    
    }
    
    func isPlayer(location: CGPoint) -> Bool {
        if location.x <= fingerUser.position.x+25 && location.x >= fingerUser.position.x-25 && location.y <= fingerUser.position.y+25 && location.y >= fingerUser.position.y-25 {
             return true
        } else {
             return false
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        if isPlayer(location: location){
            touchPlayer = true
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        if isPlayer(location: location){
            touchPlayer = true
        }
//        for touch in touches {
//            let location = touch.location(in: self)
//            let move = SKAction.move(to: location, duration: 0.1)
//            fingerUser.run(move)
//        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchPlayer = false
//        let move = SKAction.move(to: CGPoint(x: 0, y: 0), duration: 0.1)
//        fingerUser.run(move)
    }
    
    override func update(_ currentTime: TimeInterval) {
        if fingerUser.position.x+10 <= fingerUser.position.x+25 && fingerUser.position.x-10 >= fingerUser.position.x-25 && fingerUser.position.y+10 <= fingerUser.position.y+25 && fingerUser.position.y-10 >= fingerUser.position.y-25 {
            square.color = .systemYellow
        }
        
        
    }
    
        

    
}

