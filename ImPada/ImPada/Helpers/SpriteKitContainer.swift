//
//  SpriteKitContainer.swift
//  ImPada
//
//  Created by michellyes on 05/04/23.
//

import SwiftUI
import SpriteKit

struct SpriteKitContainer: UIViewRepresentable {
    typealias UIViewType = SKView
    
    var skScene: SKScene!
    
    init(scene: SKScene) {
        skScene = scene
        self.skScene.scaleMode = .resizeFill
    }
    
    class Coordinator: NSObject {
        var scene: SKScene?
    }
    
    func makeCoordinator() -> Coordinator {
        let coordinator = Coordinator()
        coordinator.scene = self.skScene
        return coordinator
    }
    
    func makeUIView(context: Context) -> SKView {
        let view = SKView(frame: .zero)
        view.preferredFramesPerSecond = 60
        view.allowsTransparency = true
        view.showsFPS = false
        view.showsNodeCount = false
        return view
    }
    
    func updateUIView(_ view: SKView, context: Context) {
        view.presentScene(context.coordinator.scene)
    }
    
}

//struct SpriteKitContainer_Previews: PreviewProvider {
//    static var previews: some View {
//        Text("Hello, World!")
//    }
//
//}
