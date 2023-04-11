//
//  ToyContainer.swift
//  ImPada
//
//  Created by vivi on 05/04/23.
//

import SwiftUI

struct ToyContainer: View {
    let toy: Toy
    
    let height: CGFloat
    let width: CGFloat
    let icon: String
    
    @State var position: CGPoint
    @ObservedObject var viewModel: ToyViewModel
    
    var body: some View {
        ZStack{
            Image(icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: self.width, height: self.height)
                .position(self.position)
                .overlay{
                    GeometryReader { proxy -> Color in
//                        let frame = proxy.frame(in: .global)
//                        position = CGPoint(x: frame.midX, y: frame.midY)
                        viewModel.update(
                            frame: proxy.frame(in: .global),
                            for: toy.id)
                        
                        return Color.clear
                    }
                }
        }
    }
}
