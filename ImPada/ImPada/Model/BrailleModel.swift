//
//  BrailleModel.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import SwiftUI

struct NumberModels: Identifiable {
    var id: Int
    var name: String
    var codeLeft: [Bool]
    var codeRight: [Bool]
}

var numbers = [
    NumberModels(
        id: 0,
        name: "Zero",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [false, true, false, true, true, false]
    ),
    NumberModels(
        id: 1,
        name: "One",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, false, false, false, false, false]
    ),
    NumberModels(
        id: 2,
        name: "Two",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, true, false, false, false, false]
    ),
    NumberModels(
        id: 3,
        name: "Three",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, false, false, true, false, false]
    ),
    NumberModels(
        id: 4,
        name: "Four",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, false, false, true, true, false]
    ),
    NumberModels(
        id: 5,
        name: "Five",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, false, false, false, true, false]
    ),
    NumberModels(
        id: 6,
        name: "Six",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, true, false, true, false, false]
    ),
    NumberModels(
        id: 7,
        name: "Seven",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, true, false, true, true, false]
    ),
    NumberModels(
        id: 8,
        name: "Eight",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [true, true, false, false, true, false]
    ),
    NumberModels(
        id: 9,
        name: "Nine",
        codeLeft: [false, false, true, true, true, true],
        codeRight: [false, true, false, true, true, false]
    )
]
