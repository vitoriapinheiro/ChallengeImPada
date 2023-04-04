//
//  GridComponent.swift
//  ImPada
//
//  Created by michellyes on 04/04/23.
//
import SwiftUI
import SpriteKit

struct GridComponent: View {
    
    let scene: SKScene
    let brailleScene = testeBraille()
    
    var body: some View {
        
        SpriteView(scene: brailleScene)
       
    }
    
}
