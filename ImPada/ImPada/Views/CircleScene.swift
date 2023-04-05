//
//  CircleView.swift
//  ImPada
//
//  Created by michellyes on 05/04/23.
//

import SpriteKit

class circleScene: SKScene {
    
    var player: SKSpriteNode?
    var circle: SKShapeNode?
    let isActive: Bool
    
    init(isActive: Bool) {
        self.isActive = isActive
        super.init(size: .zero)
        self.backgroundColor = SKColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func didMove(to view: SKView) {
        
        self.size = CGSize(width: 110, height: 110)
        
        let circle = SKShapeNode(circleOfRadius: 50)
        circle.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        if(isActive){
            circle.fillColor = UIColor(red: 201/255, green: 51/255, blue: 124/255, alpha: 1) // medium pink
            circle.strokeColor = UIColor(red: 201/255, green: 51/255, blue: 124/255, alpha: 1) // medium pink
        } else {
            circle.fillColor = UIColor(red: 115/255, green: 211/255, blue: 190/255, alpha: 1) //light green
            circle.strokeColor = UIColor(red: 115/255, green: 211/255, blue: 190/255, alpha: 1) //light green
        }
        addChild(circle)
        
       // player = SKSpriteNode(texture: .none, size: CGSize(width: 50, height: 50))
        player = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
        player?.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        addChild(player!)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        player!.position = location
    }
    
    fileprivate func isInsideCircle(_ circle: SKShapeNode, _ player: SKSpriteNode) -> Bool {
        return circle.position.x+10 <= player.position.x+25 &&
        circle.position.x-10 >= player.position.x-25 &&
        circle.position.y+10 <= player.position.y+25 &&
        circle.position.y-10 >= player.position.y-25
    }
    
    override func update(_ currentTime: TimeInterval) {
        guard let circle = circle, let player = player else { return }
    
            if isInsideCircle(circle, player) {
                circle.fillColor = UIColor(red: 12/255, green: 77/255, blue: 62/255, alpha: 1) // dark green
                MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "teste1")
                HapticManager.instance.impact(style: .heavy)
            } else {
                circle.fillColor = UIColor(red: 201/255, green: 51/255, blue: 124/255, alpha: 1) // medium pink
            }
    }
}
