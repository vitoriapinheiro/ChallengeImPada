//
//  DraggableToy.swift
//  ImPada
//
//  Created by vivi on 05/04/23.
//

import SwiftUI

struct InteractfulToy<Draggable: Gesture>: View {
    let height: CGFloat
    let width: CGFloat
    let position: CGPoint
    let gesture: Draggable
    let icon: String
    
    var body: some View {
        ZStack{
            Image(icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: self.width, height: self.height)
                .position(self.position)
                .gesture(self.gesture)
        }
    }
}
