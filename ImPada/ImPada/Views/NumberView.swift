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
    var lineWidth: Double = 30.0
}

struct NumberView: View {
    @Binding var level: Int
    
    @State private var currLine = Line()
    @State private var lines: [Line] = []
    
    var body: some View {
        VStack{
            ActionImageButton(
                icon: "ChatDraw\(level)",
                action: {print("Olá, mestre dos números!\nVocê está pronto?")},
                height: 140,
                width: 800
            )
            .padding(.top, 90)
            .padding(.horizontal, 116)
            .padding(.bottom, 100)
            Spacer()
            HStack{
                Image("Number\(level)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350)
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
                    .frame(width: 350, height: 350)
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
                    .mask(
                        Image("Number\(level)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    )
                    .background(
                        Image("Number\(level)Outline")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    )
                }
                .padding()
            }
            .padding(.bottom, 160)
        }.background(
            Image("BlueScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
    }
}
