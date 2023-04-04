//
// GameScene.swift
// Test
//
// Created by rsbj on 28/02/23.
//
import SpriteKit
import GameplayKit

class testeBraille: SKScene {
    var player : SKSpriteNode?
    var circle : SKShapeNode?
    var circle1 : SKShapeNode?
    var circle2 : SKShapeNode?
    var grid : [SKShapeNode?] = []
    
    
    
    override func didMove(to view: SKView) {
        
        circle = SKShapeNode(circleOfRadius: 50)
        circle?.fillColor = .gray
        circle?.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        addChild(circle!)
        
        circle1 = SKShapeNode(circleOfRadius: 47)
        circle1?.lineWidth = 3
        circle1?.strokeColor = .gray
        circle1?.position = CGPoint(x: self.frame.midX+140, y: self.frame.midY)
        addChild(circle1!)
         
        circle2 = SKShapeNode(circleOfRadius: 50)
        circle2?.fillColor = .gray
        circle2?.position = CGPoint(x: self.frame.midX+280, y: self.frame.midY)
        addChild(circle2!)
        
        //player = SKSpriteNode(color: .gray, size: CGSize(width: 50, height: 50))
        player = SKSpriteNode(texture: .none, size: CGSize(width: 50, height: 50))
        player?.position = CGPoint(x: self.frame.midX-200, y: self.frame.midY-200)
        addChild(player!)
        
        grid = [circle, circle1, circle2]
        
    }
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else {return}
            let location = touch.location(in: self)
        }
    
        override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            guard let touch = touches.first else {return}
            let location = touch.location(in: self)
            player!.position = location
        }
        
        override func update(_ currentTime: TimeInterval) {
            for i in 0..<grid.count{
                
                if grid[i]!.position.x+10 <= player!.position.x+25 && grid[i]!.position.x-10 >= player!.position.x-25 && grid[i]!.position.y+10 <= player!.position.y+25 && grid[2]!.position.y-10 >= player!.position.y-25 {
                    grid[i]!.fillColor = UIColor.systemPink
                    MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "teste1")
                } else {
                    grid[i]!.fillColor = UIColor.gray
                }
                
            }
        }
    }

