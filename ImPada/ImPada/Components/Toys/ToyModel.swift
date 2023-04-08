//
//  ToyModel.swift
//  ImPada
//
//  Created by vivi on 05/04/23.
//

import SwiftUI

struct Toy {
    let id: Int
    let color: Color
}

extension Toy {
    static let all = [
        Toy(id: 1, color: .appBlack),
        Toy(id: 2, color: .appBlue),
        Toy(id: 3, color: .appOrange)
    ]
}
