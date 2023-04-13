//
//  brailleScene.swift
//  ImPada
//
//  Created by michellyes on 10/04/23.
//
import SpriteKit

class brailleScene: SKScene {
    var player: SKSpriteNode?
    var circles: [SKShapeNode] = []
    let numRows = 3
    let numCols = 2
    let circleSpacing: CGFloat = 20
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
        self.backgroundColor = SKColor.clear
        
        for row in 0..<numRows {
            for col in 0..<numCols {
                let circle = SKShapeNode(circleOfRadius: 50)
                if isActive{
                    circle.fillColor = UIColor(red: 201/255, green: 51/255, blue: 124/255, alpha: 1) // medium pink
                    circle.strokeColor = UIColor(red: 201/255, green: 51/255, blue: 124/255, alpha: 1) // medium pink
                } else {
                    circle.fillColor = UIColor(red: 115/255, green: 211/255, blue: 190/255, alpha: 1) //light green
                    circle.strokeColor = UIColor(red: 115/255, green: 211/255, blue: 190/255, alpha: 1) //light green
                }
                let xPosition = CGFloat(col) * (50 * 2 + circleSpacing) + 50 + circleSpacing
                let yPosition = CGFloat(row) * (50 * 2 + circleSpacing) + 50 + circleSpacing

                circle.position = CGPoint(x: xPosition, y: yPosition)
                addChild(circle)

                circles.append(circle)
            }
        }

        player = SKSpriteNode(texture: .none, size: CGSize(width: 100, height: 100))
        player?.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        addChild(player!)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        player!.position = location

        for circle in circles {
            if circle.contains(location) {
                circle.fillColor = UIColor(red: 12/255, green: 77/255, blue: 62/255, alpha: 1) // dark green
                circle.strokeColor = UIColor(red: 12/255, green: 77/255, blue: 62/255, alpha: 1) // dark green
                MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName: "teste1")
                HapticManager.instance.impact(style: .heavy)
            } else {
                circle.fillColor = UIColor(red: 201/255, green: 51/255, blue: 124/255, alpha: 1) // medium pink
                circle.strokeColor = UIColor(red: 201/255, green: 51/255, blue: 124/255, alpha: 1) // medium pink
            }
        }
    }
}
