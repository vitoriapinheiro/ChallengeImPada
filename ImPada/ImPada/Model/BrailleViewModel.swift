//
//  codeBraille.swift
//  ImPada
//
//  Created by michellyes on 11/04/23.
//

import Foundation
import SwiftUI

class BrailleViewModel: ObservableObject {
    
    @Published var codeLeft: [[Bool]] //= [[true, true], [true, true], [true, true]]
    @Published var codeRight: [[Bool]] //= [[false, false], [false, false], [false, false]]
    //@Binding var  level.wrappedValue: Int
    
    init( level: Binding<Int>){
        if  level.wrappedValue == 1  {
             codeLeft = [[true, true],
                        [false, true],
                        [false, true]]
             codeRight = [[false, false],
                         [false, false],
                         [true, false]]
        } else if  level.wrappedValue == 2 {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
             codeRight = [[false, false],
                         [true, false],
                         [true, false]]
        } else if  level.wrappedValue == 3 {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
             codeRight = [[false, false],
                         [false, false],
                         [true, true]]
        } else if  level.wrappedValue == 4 {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
             codeRight = [[false, false],
                         [false, true],
                         [true, true]]
        } else if  level.wrappedValue == 5 {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
             codeRight = [[false, false],
                         [false, true],
                         [true, false]]
        } else if  level.wrappedValue == 6 {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
             codeRight = [[false, false],
                         [true, false],
                         [true, true]]
        } else if  level.wrappedValue == 7 {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
             codeRight = [[false, true],
                         [true, false],
                         [true, false]]
        } else if  level.wrappedValue == 8 {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
             codeRight = [[false, false],
                         [false, true],
                         [false, true]]
        } else {
             codeLeft = [[true, true],
                         [false, true],
                         [false, true]]
            codeRight = [[false, false],
                         [true, false],
                         [false, true]]
        }
    }
    
//    func update level.wrappedValue( level.wrappedValue: Int){
//        if  level.wrappedValue == 1 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, false],
//                         [false, false],
//                         [false, false]]
//        } else if  level.wrappedValue == 2 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, true],
//                         [false, false],
//                         [false, false]]
//        } else if  level.wrappedValue == 3 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, false],
//                         [false, true],
//                         [false, false]]
//        } else if  level.wrappedValue == 4 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, false],
//                         [false, true],
//                         [true, false]]
//        } else if  level.wrappedValue == 5 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, false],
//                         [false, false],
//                         [true, false]]
//        } else if  level.wrappedValue == 6 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, true],
//                         [false, true],
//                         [false, false]]
//        } else if  level.wrappedValue == 7 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, true],
//                         [false, true],
//                         [true, false]]
//        } else if  level.wrappedValue == 8 {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//             codeRight = [[true, true],
//                         [false, false],
//                         [true, false]]
//        } else {
//             codeLeft = [[false, false],
//                        [true, true],
//                        [true, true]]
//            codeRight = [[false, true],
//                         [false, true],
//                         [true, false]]
//        }
//    }
}
