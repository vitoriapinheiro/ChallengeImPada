//
//  Converter.swift
//  ImPada
//
//  Created by vivi on 03/04/23.
//

import Foundation
//CODIGO GERADO PELO GPT3 PARA CRIAR MATRIZ A PARTIR DE LISTA DE CGPOINTS

func converter() -> Int  {
    
    let points = [CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 0), CGPoint(x: 0, y: 1), CGPoint(x: 1, y: 1)]
    let rows = 2
    let cols = 2

    var matrix: [[CGPoint]] = Array(repeating: Array(repeating: CGPoint.zero, count: cols), count: rows)

    for point in points {
        matrix[Int(point.y)][Int(point.x)] = point
    }

    print(matrix)
    
    return 0
}
