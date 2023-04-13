//
//  BrailleModel.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "NumberModel")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Code Data failed to load: \(error.localizedDescription)")
            }
            
        }
    }
    
}

//import SwiftUI
//
//struct NumberModels: Identifiable {
//    var id: Int
//    var name: String
//    var codeLeft: [Bool]
//    var codeRight: [Bool]
//}
//
//enum NumberCode {
//    case ONE
//    case TWO
//    case THREE
//    case FOUR
//    case FIVE
//    case SIX
//    case SEVEN
//    case EIGHT
//    case NINE
//}
//
//MARK: add one function with one single return
//func getNumberCode (nCode: NumberCode) -> NumberModels {
//        switch nCode {
//            case .ONE :
//                return NumberModels(
//                    id: 1,
//                    name: "One",
//                    codeLeft: [[false, false], [true, true], [true, true]],
//                    codeRight: [true, false, false, false, false, false]
//                )
//            case .TWO :
//                return NumberModels(
//                    id: 2,
//                    name: "Two",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [true, true, false, false, false, false]
//                )
//            case .THREE :
//                return NumberModels(
//                    id: 3,
//                    name: "Three",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [true, false, false, true, false, false]
//                )
//            case .FOUR :
//                return NumberModels(
//                    id: 4,
//                    name: "Four",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [true, false, false, true, true, false]
//                )
//            case .FIVE :
//                return NumberModels(
//                    id: 5,
//                    name: "Five",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [true, false, false, false, true, false]
//                )
//            case .SIX :
//                return NumberModels(
//                    id: 6,
//                    name: "Six",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [true, true, false, true, false, false]
//                )
//            case .SEVEN :
//                return NumberModels(
//                    id: 7,
//                    name: "Seven",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [true, true, false, true, true, false]
//                    )
//            case .EIGHT :
//                return NumberModels(
//                    id: 8,
//                    name: "Eight",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [true, true, false, false, true, false]
//                )
//            case .NINE :
//                return NumberModels(
//                    id: 9,
//                    name: "Nine",
//                    codeLeft: [false, false, true, true, true, true],
//                    codeRight: [false, true, false, true, true, false]
//                )
//        }
//}
