//
//  NumberView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct Line{
    var points = [CGPoint]()
    var color: Color = .mediumPink
    var lineWidth: Double = 50.0
}

struct NumberView: View {
    
    @State private var currLine = Line()
    @State private var lines: [Line] = []
    
    var body: some View {
        VStack {
            Canvas{ context, size in
                for line in lines {
                    var path = Path()
                    path.addLines(line.points)
                    context.stroke(path,
                                   with: .color(line.color),
                                   lineWidth: line.lineWidth)
                }
            }
            .frame(minWidth: 300, minHeight: 400)
            .gesture(
                DragGesture(minimumDistance: 0, coordinateSpace: .local)
                    .onChanged({value in
                        let newPoint = value.location
                        currLine.points.append(newPoint)
                        self.lines.append(currLine)
                    })
                    .onEnded({ value in
                        self.currLine = Line(points: [])
                    })
            )
            .background(
                Image("One")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            )
            }
        .padding()
    }
}
